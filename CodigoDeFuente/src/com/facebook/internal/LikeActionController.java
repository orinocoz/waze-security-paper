// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.RequestBatch;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.facebook.widget.FacebookDialog;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.internal:
//            WorkQueue, FileLruCache, Utility, BundleJSONConverter, 
//            NativeProtocol, PendingCallStore, FacebookWebFallbackDialog, LikeStatusClient, 
//            Logger

public class LikeActionController
{
    private abstract class AbstractRequestWrapper
    {

        FacebookRequestError error;
        protected String objectId;
        private Request request;
        final LikeActionController this$0;

        void addToBatch(RequestBatch requestbatch)
        {
            requestbatch.add(request);
        }

        protected void processError(FacebookRequestError facebookrequesterror)
        {
            LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
            String s = LikeActionController.TAG;
            Object aobj[] = new Object[2];
            aobj[0] = objectId;
            aobj[1] = facebookrequesterror;
            Logger.log(loggingbehavior, s, "Error running request for object '%s' : %s", aobj);
        }

        protected abstract void processSuccess(Response response);

        protected void setRequest(Request request1)
        {
            request = request1;
            request1.setVersion("v2.2");
            request1.setCallback(new com.facebook.Request.Callback() {

                final AbstractRequestWrapper this$1;

                public void onCompleted(Response response)
                {
                    error = response.getError();
                    if (error != null)
                    {
                        processError(error);
                        return;
                    } else
                    {
                        processSuccess(response);
                        return;
                    }
                }

            
            {
                this$1 = AbstractRequestWrapper.this;
                super();
            }
            });
        }

        protected AbstractRequestWrapper(String s)
        {
            this$0 = LikeActionController.this;
            super();
            objectId = s;
        }
    }

    private static class CreateLikeActionControllerWorkItem
        implements Runnable
    {

        private CreationCallback callback;
        private Context context;
        private String objectId;

        public void run()
        {
            LikeActionController.createControllerForObjectId(context, objectId, callback);
        }

        CreateLikeActionControllerWorkItem(Context context1, String s, CreationCallback creationcallback)
        {
            context = context1;
            objectId = s;
            callback = creationcallback;
        }
    }

    public static interface CreationCallback
    {

        public abstract void onComplete(LikeActionController likeactioncontroller);
    }

    private class GetEngagementRequestWrapper extends AbstractRequestWrapper
    {

        String likeCountStringWithLike;
        String likeCountStringWithoutLike;
        String socialSentenceStringWithLike;
        String socialSentenceStringWithoutLike;
        final LikeActionController this$0;

        protected void processError(FacebookRequestError facebookrequesterror)
        {
            LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
            String s = LikeActionController.TAG;
            Object aobj[] = new Object[2];
            aobj[0] = objectId;
            aobj[1] = facebookrequesterror;
            Logger.log(loggingbehavior, s, "Error fetching engagement for object '%s' : %s", aobj);
            logAppEventForError("get_engagement", facebookrequesterror);
        }

        protected void processSuccess(Response response)
        {
            JSONObject jsonobject = Utility.tryGetJSONObjectFromResponse(response.getGraphObject(), "engagement");
            if (jsonobject != null)
            {
                likeCountStringWithLike = jsonobject.optString("count_string_with_like", likeCountStringWithLike);
                likeCountStringWithoutLike = jsonobject.optString("count_string_without_like", likeCountStringWithoutLike);
                socialSentenceStringWithLike = jsonobject.optString("social_sentence_with_like", socialSentenceStringWithLike);
                socialSentenceStringWithoutLike = jsonobject.optString("social_sentence_without_like", socialSentenceStringWithoutLike);
            }
        }

        GetEngagementRequestWrapper(String s)
        {
            this$0 = LikeActionController.this;
            super(s);
            likeCountStringWithLike = LikeActionController.this.likeCountStringWithLike;
            likeCountStringWithoutLike = LikeActionController.this.likeCountStringWithoutLike;
            socialSentenceStringWithLike = socialSentenceWithLike;
            socialSentenceStringWithoutLike = socialSentenceWithoutLike;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            setRequest(new Request(session, s, bundle, HttpMethod.GET));
        }
    }

    private class GetOGObjectIdRequestWrapper extends AbstractRequestWrapper
    {

        final LikeActionController this$0;
        String verifiedObjectId;

        protected void processError(FacebookRequestError facebookrequesterror)
        {
            if (facebookrequesterror.getErrorMessage().contains("og_object"))
            {
                error = null;
                return;
            } else
            {
                LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
                String s = LikeActionController.TAG;
                Object aobj[] = new Object[2];
                aobj[0] = objectId;
                aobj[1] = facebookrequesterror;
                Logger.log(loggingbehavior, s, "Error getting the FB id for object '%s' : %s", aobj);
                return;
            }
        }

        protected void processSuccess(Response response)
        {
            JSONObject jsonobject = Utility.tryGetJSONObjectFromResponse(response.getGraphObject(), objectId);
            if (jsonobject != null)
            {
                JSONObject jsonobject1 = jsonobject.optJSONObject("og_object");
                if (jsonobject1 != null)
                {
                    verifiedObjectId = jsonobject1.optString("id");
                }
            }
        }

        GetOGObjectIdRequestWrapper(String s)
        {
            this$0 = LikeActionController.this;
            super(s);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "og_object.fields(id)");
            bundle.putString("ids", s);
            setRequest(new Request(session, "", bundle, HttpMethod.GET));
        }
    }

    private class GetOGObjectLikesRequestWrapper extends AbstractRequestWrapper
    {

        boolean objectIsLiked;
        final LikeActionController this$0;
        String unlikeToken;

        protected void processError(FacebookRequestError facebookrequesterror)
        {
            LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
            String s = LikeActionController.TAG;
            Object aobj[] = new Object[2];
            aobj[0] = objectId;
            aobj[1] = facebookrequesterror;
            Logger.log(loggingbehavior, s, "Error fetching like status for object '%s' : %s", aobj);
            logAppEventForError("get_og_object_like", facebookrequesterror);
        }

        protected void processSuccess(Response response)
        {
            JSONArray jsonarray = Utility.tryGetJSONArrayFromResponse(response.getGraphObject(), "data");
            if (jsonarray == null) goto _L2; else goto _L1
_L1:
            int i = 0;
_L5:
            if (i < jsonarray.length()) goto _L3; else goto _L2
_L2:
            return;
_L3:
            JSONObject jsonobject = jsonarray.optJSONObject(i);
            if (jsonobject != null)
            {
                objectIsLiked = true;
                JSONObject jsonobject1 = jsonobject.optJSONObject("application");
                if (jsonobject1 != null && Utility.areObjectsEqual(session.getApplicationId(), jsonobject1.optString("id")))
                {
                    unlikeToken = jsonobject.optString("id");
                }
            }
            i++;
            if (true) goto _L5; else goto _L4
_L4:
        }

        GetOGObjectLikesRequestWrapper(String s)
        {
            this$0 = LikeActionController.this;
            super(s);
            objectIsLiked = isObjectLiked;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,application");
            bundle.putString("object", s);
            setRequest(new Request(session, "me/og.likes", bundle, HttpMethod.GET));
        }
    }

    private class GetPageIdRequestWrapper extends AbstractRequestWrapper
    {

        boolean objectIsPage;
        final LikeActionController this$0;
        String verifiedObjectId;

        protected void processError(FacebookRequestError facebookrequesterror)
        {
            LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
            String s = LikeActionController.TAG;
            Object aobj[] = new Object[2];
            aobj[0] = objectId;
            aobj[1] = facebookrequesterror;
            Logger.log(loggingbehavior, s, "Error getting the FB id for object '%s' : %s", aobj);
        }

        protected void processSuccess(Response response)
        {
            JSONObject jsonobject = Utility.tryGetJSONObjectFromResponse(response.getGraphObject(), objectId);
            if (jsonobject != null)
            {
                verifiedObjectId = jsonobject.optString("id");
                boolean flag;
                if (Utility.isNullOrEmpty(verifiedObjectId))
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
                objectIsPage = flag;
            }
        }

        GetPageIdRequestWrapper(String s)
        {
            this$0 = LikeActionController.this;
            super(s);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            bundle.putString("ids", s);
            setRequest(new Request(session, "", bundle, HttpMethod.GET));
        }
    }

    private static class LikeDialogBuilder extends com.facebook.widget.FacebookDialog.Builder
    {

        private String objectId;

        public com.facebook.widget.FacebookDialog.PendingCall getAppCall()
        {
            return appCall;
        }

        public String getApplicationId()
        {
            return applicationId;
        }

        protected EnumSet getDialogFeatures()
        {
            return EnumSet.of(LikeDialogFeature.LIKE_DIALOG);
        }

        protected Bundle getMethodArguments()
        {
            Bundle bundle = new Bundle();
            bundle.putString("object_id", objectId);
            return bundle;
        }

        public String getWebFallbackUrl()
        {
            return getWebFallbackUrlInternal();
        }

        public LikeDialogBuilder(Activity activity, String s)
        {
            super(activity);
            objectId = s;
        }
    }

    private static final class LikeDialogFeature extends Enum
        implements com.facebook.widget.FacebookDialog.DialogFeature
    {

        private static final LikeDialogFeature ENUM$VALUES[];
        public static final LikeDialogFeature LIKE_DIALOG;
        private int minVersion;

        public static LikeDialogFeature valueOf(String s)
        {
            return (LikeDialogFeature)Enum.valueOf(com/facebook/internal/LikeActionController$LikeDialogFeature, s);
        }

        public static LikeDialogFeature[] values()
        {
            LikeDialogFeature alikedialogfeature[] = ENUM$VALUES;
            int i = alikedialogfeature.length;
            LikeDialogFeature alikedialogfeature1[] = new LikeDialogFeature[i];
            System.arraycopy(alikedialogfeature, 0, alikedialogfeature1, 0, i);
            return alikedialogfeature1;
        }

        public String getAction()
        {
            return "com.facebook.platform.action.request.LIKE_DIALOG";
        }

        public int getMinVersion()
        {
            return minVersion;
        }

        static 
        {
            LIKE_DIALOG = new LikeDialogFeature("LIKE_DIALOG", 0, 0x133529d);
            LikeDialogFeature alikedialogfeature[] = new LikeDialogFeature[1];
            alikedialogfeature[0] = LIKE_DIALOG;
            ENUM$VALUES = alikedialogfeature;
        }

        private LikeDialogFeature(String s, int i, int j)
        {
            super(s, i);
            minVersion = j;
        }
    }

    private static class MRUCacheWorkItem
        implements Runnable
    {

        private static ArrayList mruCachedItems = new ArrayList();
        private String cacheItem;
        private boolean shouldTrim;

        public void run()
        {
            if (cacheItem != null)
            {
                mruCachedItems.remove(cacheItem);
                mruCachedItems.add(0, cacheItem);
            }
            if (!shouldTrim || mruCachedItems.size() < 128) goto _L2; else goto _L1
_L1:
            if (64 < mruCachedItems.size()) goto _L3; else goto _L2
_L2:
            return;
_L3:
            String s = (String)mruCachedItems.remove(-1 + mruCachedItems.size());
            LikeActionController.cache.remove(s);
            if (true) goto _L1; else goto _L4
_L4:
        }


        MRUCacheWorkItem(String s, boolean flag)
        {
            cacheItem = s;
            shouldTrim = flag;
        }
    }

    private class PublishLikeRequestWrapper extends AbstractRequestWrapper
    {

        final LikeActionController this$0;
        String unlikeToken;

        protected void processError(FacebookRequestError facebookrequesterror)
        {
            if (facebookrequesterror.getErrorCode() == 3501)
            {
                error = null;
                return;
            } else
            {
                LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
                String s = LikeActionController.TAG;
                Object aobj[] = new Object[2];
                aobj[0] = objectId;
                aobj[1] = facebookrequesterror;
                Logger.log(loggingbehavior, s, "Error liking object '%s' : %s", aobj);
                logAppEventForError("publish_like", facebookrequesterror);
                return;
            }
        }

        protected void processSuccess(Response response)
        {
            unlikeToken = Utility.safeGetStringFromResponse(response.getGraphObject(), "id");
        }

        PublishLikeRequestWrapper(String s)
        {
            this$0 = LikeActionController.this;
            super(s);
            Bundle bundle = new Bundle();
            bundle.putString("object", s);
            setRequest(new Request(session, "me/og.likes", bundle, HttpMethod.POST));
        }
    }

    private class PublishUnlikeRequestWrapper extends AbstractRequestWrapper
    {

        final LikeActionController this$0;
        private String unlikeToken;

        protected void processError(FacebookRequestError facebookrequesterror)
        {
            LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
            String s = LikeActionController.TAG;
            Object aobj[] = new Object[2];
            aobj[0] = unlikeToken;
            aobj[1] = facebookrequesterror;
            Logger.log(loggingbehavior, s, "Error unliking object with unlike token '%s' : %s", aobj);
            logAppEventForError("publish_unlike", facebookrequesterror);
        }

        protected void processSuccess(Response response)
        {
        }

        PublishUnlikeRequestWrapper(String s)
        {
            this$0 = LikeActionController.this;
            super(null);
            unlikeToken = s;
            setRequest(new Request(session, s, null, HttpMethod.DELETE));
        }
    }

    private static interface RequestCompletionCallback
    {

        public abstract void onComplete();
    }

    private static class SerializeToDiskWorkItem
        implements Runnable
    {

        private String cacheKey;
        private String controllerJson;

        public void run()
        {
            LikeActionController.serializeToDiskSynchronously(cacheKey, controllerJson);
        }

        SerializeToDiskWorkItem(String s, String s1)
        {
            cacheKey = s;
            controllerJson = s1;
        }
    }


    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR = "com.facebook.sdk.LikeActionController.DID_ERROR";
    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_RESET = "com.facebook.sdk.LikeActionController.DID_RESET";
    public static final String ACTION_LIKE_ACTION_CONTROLLER_UPDATED = "com.facebook.sdk.LikeActionController.UPDATED";
    public static final String ACTION_OBJECT_ID_KEY = "com.facebook.sdk.LikeActionController.OBJECT_ID";
    private static final int ERROR_CODE_OBJECT_ALREADY_LIKED = 3501;
    public static final String ERROR_INVALID_OBJECT_ID = "Invalid Object Id";
    private static final String JSON_BOOL_IS_OBJECT_LIKED_KEY = "is_object_liked";
    private static final String JSON_BUNDLE_PENDING_CALL_ANALYTICS_BUNDLE = "pending_call_analytics_bundle";
    private static final String JSON_INT_VERSION_KEY = "com.facebook.internal.LikeActionController.version";
    private static final String JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY = "like_count_string_without_like";
    private static final String JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY = "like_count_string_with_like";
    private static final String JSON_STRING_OBJECT_ID_KEY = "object_id";
    private static final String JSON_STRING_PENDING_CALL_ID_KEY = "pending_call_id";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY = "social_sentence_without_like";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY = "social_sentence_with_like";
    private static final String JSON_STRING_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final String LIKE_ACTION_CONTROLLER_STORE = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
    private static final String LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY = "OBJECT_SUFFIX";
    private static final String LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY = "PENDING_CONTROLLER_KEY";
    private static final int LIKE_ACTION_CONTROLLER_VERSION = 2;
    private static final String LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY = "like_count_string";
    private static final String LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY = "object_is_liked";
    private static final String LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY = "social_sentence";
    private static final String LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final int MAX_CACHE_SIZE = 128;
    private static final int MAX_OBJECT_SUFFIX = 1000;
    private static final String TAG = com/facebook/internal/LikeActionController.getSimpleName();
    private static final ConcurrentHashMap cache = new ConcurrentHashMap();
    private static FileLruCache controllerDiskCache;
    private static WorkQueue diskIOWorkQueue = new WorkQueue(1);
    private static Handler handler;
    private static boolean isInitialized;
    private static boolean isPendingBroadcastReset;
    private static WorkQueue mruCacheWorkQueue = new WorkQueue(1);
    private static String objectIdForPendingController;
    private static volatile int objectSuffix;
    private AppEventsLogger appEventsLogger;
    private Context context;
    private boolean isObjectLiked;
    private boolean isObjectLikedOnServer;
    private boolean isPendingLikeOrUnlike;
    private String likeCountStringWithLike;
    private String likeCountStringWithoutLike;
    private String objectId;
    private boolean objectIsPage;
    private Bundle pendingCallAnalyticsBundle;
    private UUID pendingCallId;
    private Session session;
    private String socialSentenceWithLike;
    private String socialSentenceWithoutLike;
    private String unlikeToken;
    private String verifiedObjectId;

    private LikeActionController(Context context1, Session session1, String s)
    {
        context = context1;
        session = session1;
        objectId = s;
        appEventsLogger = AppEventsLogger.newLogger(context1, session1);
    }

    private static void broadcastAction(Context context1, LikeActionController likeactioncontroller, String s)
    {
        broadcastAction(context1, likeactioncontroller, s, null);
    }

    private static void broadcastAction(Context context1, LikeActionController likeactioncontroller, String s, Bundle bundle)
    {
        Intent intent = new Intent(s);
        if (likeactioncontroller != null)
        {
            if (bundle == null)
            {
                bundle = new Bundle();
            }
            bundle.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", likeactioncontroller.getObjectId());
        }
        if (bundle != null)
        {
            intent.putExtras(bundle);
        }
        LocalBroadcastManager.getInstance(context1.getApplicationContext()).sendBroadcast(intent);
    }

    private boolean canUseOGPublish()
    {
        return !objectIsPage && verifiedObjectId != null && session != null && session.getPermissions() != null && session.getPermissions().contains("publish_actions");
    }

    private static void createControllerForObjectId(Context context1, String s, CreationCallback creationcallback)
    {
        LikeActionController likeactioncontroller = getControllerFromInMemoryCache(s);
        if (likeactioncontroller != null)
        {
            invokeCallbackWithController(creationcallback, likeactioncontroller);
            return;
        }
        LikeActionController likeactioncontroller1 = deserializeFromDiskSynchronously(context1, s);
        if (likeactioncontroller1 == null)
        {
            likeactioncontroller1 = new LikeActionController(context1, Session.getActiveSession(), s);
            serializeToDiskAsync(likeactioncontroller1);
        }
        putControllerInMemoryCache(s, likeactioncontroller1);
        final LikeActionController controllerToRefresh = likeactioncontroller1;
        handler.post(new Runnable() {

            private final LikeActionController val$controllerToRefresh;

            public void run()
            {
                controllerToRefresh.refreshStatusAsync();
            }

            
            {
                controllerToRefresh = likeactioncontroller;
                super();
            }
        });
        invokeCallbackWithController(creationcallback, controllerToRefresh);
    }

    private static LikeActionController deserializeFromDiskSynchronously(Context context1, String s)
    {
        java.io.InputStream inputstream = null;
        String s1 = getCacheKeyForObjectId(s);
        inputstream = controllerDiskCache.get(s1);
        LikeActionController likeactioncontroller;
        likeactioncontroller = null;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        String s2;
        boolean flag;
        s2 = Utility.readStreamToString(inputstream);
        flag = Utility.isNullOrEmpty(s2);
        likeactioncontroller = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        LikeActionController likeactioncontroller1 = deserializeFromJson(context1, s2);
        likeactioncontroller = likeactioncontroller1;
        if (inputstream != null)
        {
            Utility.closeQuietly(inputstream);
        }
_L2:
        return likeactioncontroller;
        IOException ioexception;
        ioexception;
        Log.e(TAG, "Unable to deserialize controller from disk", ioexception);
        likeactioncontroller = null;
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        Utility.closeQuietly(inputstream);
        return null;
        Exception exception;
        exception;
        if (inputstream != null)
        {
            Utility.closeQuietly(inputstream);
        }
        throw exception;
    }

    private static LikeActionController deserializeFromJson(Context context1, String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject.optInt("com.facebook.internal.LikeActionController.version", -1) != 2)
        {
            return null;
        }
        LikeActionController likeactioncontroller;
        JSONObject jsonobject1;
        likeactioncontroller = new LikeActionController(context1, Session.getActiveSession(), jsonobject.getString("object_id"));
        likeactioncontroller.likeCountStringWithLike = jsonobject.optString("like_count_string_with_like", null);
        likeactioncontroller.likeCountStringWithoutLike = jsonobject.optString("like_count_string_without_like", null);
        likeactioncontroller.socialSentenceWithLike = jsonobject.optString("social_sentence_with_like", null);
        likeactioncontroller.socialSentenceWithoutLike = jsonobject.optString("social_sentence_without_like", null);
        likeactioncontroller.isObjectLiked = jsonobject.optBoolean("is_object_liked");
        likeactioncontroller.unlikeToken = jsonobject.optString("unlike_token", null);
        String s1 = jsonobject.optString("pending_call_id", null);
        if (!Utility.isNullOrEmpty(s1))
        {
            likeactioncontroller.pendingCallId = UUID.fromString(s1);
        }
        jsonobject1 = jsonobject.optJSONObject("pending_call_analytics_bundle");
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_180;
        }
        likeactioncontroller.pendingCallAnalyticsBundle = BundleJSONConverter.convertToBundle(jsonobject1);
        return likeactioncontroller;
        JSONException jsonexception;
        jsonexception;
        Log.e(TAG, "Unable to deserialize controller from JSON", jsonexception);
        likeactioncontroller = null;
        return likeactioncontroller;
    }

    private void fallbackToDialog(Activity activity, Bundle bundle, boolean flag)
    {
        updateState(flag, likeCountStringWithLike, likeCountStringWithoutLike, socialSentenceWithLike, socialSentenceWithoutLike, unlikeToken);
        presentLikeDialog(activity, bundle);
    }

    private void fetchVerifiedObjectId(final RequestCompletionCallback completionHandler)
    {
        if (!Utility.isNullOrEmpty(verifiedObjectId))
        {
            if (completionHandler != null)
            {
                completionHandler.onComplete();
            }
            return;
        } else
        {
            final GetOGObjectIdRequestWrapper objectIdRequest = new GetOGObjectIdRequestWrapper(objectId);
            final GetPageIdRequestWrapper pageIdRequest = new GetPageIdRequestWrapper(objectId);
            RequestBatch requestbatch = new RequestBatch();
            objectIdRequest.addToBatch(requestbatch);
            pageIdRequest.addToBatch(requestbatch);
            requestbatch.addCallback(new com.facebook.RequestBatch.Callback() {

                final LikeActionController this$0;
                private final RequestCompletionCallback val$completionHandler;
                private final GetOGObjectIdRequestWrapper val$objectIdRequest;
                private final GetPageIdRequestWrapper val$pageIdRequest;

                public void onBatchCompleted(RequestBatch requestbatch1)
                {
                    verifiedObjectId = objectIdRequest.verifiedObjectId;
                    if (Utility.isNullOrEmpty(verifiedObjectId))
                    {
                        verifiedObjectId = pageIdRequest.verifiedObjectId;
                        objectIsPage = pageIdRequest.objectIsPage;
                    }
                    if (Utility.isNullOrEmpty(verifiedObjectId))
                    {
                        LoggingBehavior loggingbehavior = LoggingBehavior.DEVELOPER_ERRORS;
                        String s = LikeActionController.TAG;
                        Object aobj[] = new Object[1];
                        aobj[0] = objectId;
                        Logger.log(loggingbehavior, s, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", aobj);
                        LikeActionController likeactioncontroller = LikeActionController.this;
                        FacebookRequestError facebookrequesterror;
                        if (pageIdRequest.error != null)
                        {
                            facebookrequesterror = pageIdRequest.error;
                        } else
                        {
                            facebookrequesterror = objectIdRequest.error;
                        }
                        likeactioncontroller.logAppEventForError("get_verified_id", facebookrequesterror);
                    }
                    if (completionHandler != null)
                    {
                        completionHandler.onComplete();
                    }
                }

            
            {
                this$0 = LikeActionController.this;
                objectIdRequest = getogobjectidrequestwrapper;
                pageIdRequest = getpageidrequestwrapper;
                completionHandler = requestcompletioncallback;
                super();
            }
            });
            requestbatch.executeAsync();
            return;
        }
    }

    private static String getCacheKeyForObjectId(String s)
    {
        Session session1 = Session.getActiveSession();
        String s1 = null;
        if (session1 != null)
        {
            boolean flag = session1.isOpened();
            s1 = null;
            if (flag)
            {
                s1 = session1.getAccessToken();
            }
        }
        if (s1 != null)
        {
            s1 = Utility.md5hash(s1);
        }
        Object aobj[] = new Object[3];
        aobj[0] = s;
        aobj[1] = Utility.coerceValueIfNullOrEmpty(s1, "");
        aobj[2] = Integer.valueOf(objectSuffix);
        return String.format("%s|%s|com.fb.sdk.like|%d", aobj);
    }

    public static void getControllerForObjectId(Context context1, String s, CreationCallback creationcallback)
    {
        if (!isInitialized)
        {
            performFirstInitialize(context1);
        }
        LikeActionController likeactioncontroller = getControllerFromInMemoryCache(s);
        if (likeactioncontroller != null)
        {
            invokeCallbackWithController(creationcallback, likeactioncontroller);
            return;
        } else
        {
            diskIOWorkQueue.addActiveWorkItem(new CreateLikeActionControllerWorkItem(context1, s, creationcallback));
            return;
        }
    }

    private static LikeActionController getControllerFromInMemoryCache(String s)
    {
        String s1 = getCacheKeyForObjectId(s);
        LikeActionController likeactioncontroller = (LikeActionController)cache.get(s1);
        if (likeactioncontroller != null)
        {
            mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(s1, false));
        }
        return likeactioncontroller;
    }

    private com.facebook.widget.FacebookDialog.Callback getFacebookDialogCallback(final Bundle analyticsParameters)
    {
        return new com.facebook.widget.FacebookDialog.Callback() {

            final LikeActionController this$0;
            private final Bundle val$analyticsParameters;

            public void onComplete(com.facebook.widget.FacebookDialog.PendingCall pendingcall, Bundle bundle)
            {
                if (bundle == null || !bundle.containsKey("object_is_liked"))
                {
                    return;
                }
                boolean flag = bundle.getBoolean("object_is_liked");
                String s = likeCountStringWithLike;
                String s1 = likeCountStringWithoutLike;
                if (bundle.containsKey("like_count_string"))
                {
                    s = bundle.getString("like_count_string");
                    s1 = s;
                }
                String s2 = socialSentenceWithLike;
                String s3 = socialSentenceWithoutLike;
                if (bundle.containsKey("social_sentence"))
                {
                    s2 = bundle.getString("social_sentence");
                    s3 = s2;
                }
                String s4;
                Bundle bundle1;
                if (bundle.containsKey("object_is_liked"))
                {
                    s4 = bundle.getString("unlike_token");
                } else
                {
                    s4 = unlikeToken;
                }
                if (analyticsParameters == null)
                {
                    bundle1 = new Bundle();
                } else
                {
                    bundle1 = analyticsParameters;
                }
                bundle1.putString("call_id", pendingcall.getCallId().toString());
                appEventsLogger.logSdkEvent("fb_like_control_dialog_did_succeed", null, bundle1);
                updateState(flag, s, s1, s2, s3, s4);
            }

            public void onError(com.facebook.widget.FacebookDialog.PendingCall pendingcall, Exception exception, Bundle bundle)
            {
                Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Like Dialog failed with error : %s", new Object[] {
                    exception
                });
                Bundle bundle1;
                if (analyticsParameters == null)
                {
                    bundle1 = new Bundle();
                } else
                {
                    bundle1 = analyticsParameters;
                }
                bundle1.putString("call_id", pendingcall.getCallId().toString());
                logAppEventForError("present_dialog", bundle1);
                LikeActionController.broadcastAction(context, LikeActionController.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
            }

            
            {
                this$0 = LikeActionController.this;
                analyticsParameters = bundle;
                super();
            }
        };
    }

    public static boolean handleOnActivityResult(Context context1, final int requestCode, final int resultCode, final Intent data)
    {
        final UUID callId = NativeProtocol.getCallIdFromIntent(data);
        if (callId != null)
        {
            if (Utility.isNullOrEmpty(objectIdForPendingController))
            {
                objectIdForPendingController = context1.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
            }
            if (!Utility.isNullOrEmpty(objectIdForPendingController))
            {
                getControllerForObjectId(context1, objectIdForPendingController, new CreationCallback() {

                    private final UUID val$callId;
                    private final Intent val$data;
                    private final int val$requestCode;
                    private final int val$resultCode;

                    public void onComplete(LikeActionController likeactioncontroller)
                    {
                        likeactioncontroller.onActivityResult(requestCode, resultCode, data, callId);
                    }

            
            {
                requestCode = i;
                resultCode = j;
                data = intent;
                callId = uuid;
                super();
            }
                });
                return true;
            }
        }
        return false;
    }

    private static void invokeCallbackWithController(final CreationCallback callback, final LikeActionController controller)
    {
        if (callback == null)
        {
            return;
        } else
        {
            handler.post(new Runnable() {

                private final CreationCallback val$callback;
                private final LikeActionController val$controller;

                public void run()
                {
                    callback.onComplete(controller);
                }

            
            {
                callback = creationcallback;
                controller = likeactioncontroller;
                super();
            }
            });
            return;
        }
    }

    private void logAppEventForError(String s, Bundle bundle)
    {
        Bundle bundle1 = new Bundle(bundle);
        bundle1.putString("object_id", objectId);
        bundle1.putString("current_action", s);
        appEventsLogger.logSdkEvent("fb_like_control_error", null, bundle1);
    }

    private void logAppEventForError(String s, FacebookRequestError facebookrequesterror)
    {
        Bundle bundle = new Bundle();
        if (facebookrequesterror != null)
        {
            JSONObject jsonobject = facebookrequesterror.getRequestResult();
            if (jsonobject != null)
            {
                bundle.putString("error", jsonobject.toString());
            }
        }
        logAppEventForError(s, bundle);
    }

    private boolean onActivityResult(int i, int j, Intent intent, UUID uuid)
    {
        com.facebook.widget.FacebookDialog.PendingCall pendingcall;
        if (pendingCallId != null && pendingCallId.equals(uuid))
        {
            if ((pendingcall = PendingCallStore.getInstance().getPendingCallById(pendingCallId)) != null)
            {
                FacebookDialog.handleActivityResult(context, pendingcall, i, intent, getFacebookDialogCallback(pendingCallAnalyticsBundle));
                stopTrackingPendingCall();
                return true;
            }
        }
        return false;
    }

    private static void performFirstInitialize(Context context1)
    {
        com/facebook/internal/LikeActionController;
        JVM INSTR monitorenter ;
        boolean flag = isInitialized;
        if (!flag) goto _L2; else goto _L1
_L1:
        com/facebook/internal/LikeActionController;
        JVM INSTR monitorexit ;
        return;
_L2:
        handler = new Handler(Looper.getMainLooper());
        objectSuffix = context1.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getInt("OBJECT_SUFFIX", 1);
        controllerDiskCache = new FileLruCache(context1, TAG, new FileLruCache.Limits());
        registerSessionBroadcastReceivers(context1);
        isInitialized = true;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void performLikeOrUnlike(Activity activity, boolean flag, Bundle bundle)
    {
        if (canUseOGPublish())
        {
            if (flag)
            {
                publishLikeAsync(activity, bundle);
                return;
            }
            if (!Utility.isNullOrEmpty(unlikeToken))
            {
                publishUnlikeAsync(activity, bundle);
                return;
            } else
            {
                fallbackToDialog(activity, bundle, true);
                return;
            }
        } else
        {
            presentLikeDialog(activity, bundle);
            return;
        }
    }

    private void presentLikeDialog(Activity activity, Bundle bundle)
    {
        LikeDialogBuilder likedialogbuilder = new LikeDialogBuilder(activity, objectId);
        if (likedialogbuilder.canPresent())
        {
            trackPendingCall(likedialogbuilder.build().present(), bundle);
            appEventsLogger.logSdkEvent("fb_like_control_did_present_dialog", null, bundle);
        } else
        {
            String s = likedialogbuilder.getWebFallbackUrl();
            if (!Utility.isNullOrEmpty(s) && FacebookWebFallbackDialog.presentWebFallback(activity, s, likedialogbuilder.getApplicationId(), likedialogbuilder.getAppCall(), getFacebookDialogCallback(bundle)))
            {
                appEventsLogger.logSdkEvent("fb_like_control_did_present_fallback_dialog", null, bundle);
                return;
            }
        }
    }

    private void publishLikeAsync(final Activity activity, final Bundle analyticsParameters)
    {
        isPendingLikeOrUnlike = true;
        fetchVerifiedObjectId(new RequestCompletionCallback() {

            final LikeActionController this$0;
            private final Activity val$activity;
            private final Bundle val$analyticsParameters;

            public void onComplete()
            {
                if (Utility.isNullOrEmpty(verifiedObjectId))
                {
                    Bundle bundle = new Bundle();
                    bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
                    LikeActionController.broadcastAction(context, LikeActionController.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
                    return;
                } else
                {
                    RequestBatch requestbatch = new RequestBatch();
                    final PublishLikeRequestWrapper likeRequest = new PublishLikeRequestWrapper(verifiedObjectId);
                    likeRequest.addToBatch(requestbatch);
                    requestbatch.addCallback(analyticsParameters. new com.facebook.RequestBatch.Callback() {

                        final _cls6 this$1;
                        private final Activity val$activity;
                        private final Bundle val$analyticsParameters;
                        private final PublishLikeRequestWrapper val$likeRequest;

                        public void onBatchCompleted(RequestBatch requestbatch)
                        {
                            isPendingLikeOrUnlike = false;
                            if (likeRequest.error != null)
                            {
                                fallbackToDialog(activity, analyticsParameters, false);
                                return;
                            } else
                            {
                                unlikeToken = Utility.coerceValueIfNullOrEmpty(likeRequest.unlikeToken, null);
                                isObjectLikedOnServer = true;
                                appEventsLogger.logSdkEvent("fb_like_control_did_like", null, analyticsParameters);
                                toggleAgainIfNeeded(activity, analyticsParameters);
                                return;
                            }
                        }

            
            {
                this$1 = final__pcls6;
                likeRequest = publishlikerequestwrapper;
                activity = activity1;
                analyticsParameters = Bundle.this;
                super();
            }
                    });
                    requestbatch.executeAsync();
                    return;
                }
            }


            
            {
                this$0 = LikeActionController.this;
                activity = activity1;
                analyticsParameters = bundle;
                super();
            }
        });
    }

    private void publishUnlikeAsync(final Activity activity, final Bundle analyticsParameters)
    {
        isPendingLikeOrUnlike = true;
        RequestBatch requestbatch = new RequestBatch();
        final PublishUnlikeRequestWrapper unlikeRequest = new PublishUnlikeRequestWrapper(unlikeToken);
        unlikeRequest.addToBatch(requestbatch);
        requestbatch.addCallback(new com.facebook.RequestBatch.Callback() {

            final LikeActionController this$0;
            private final Activity val$activity;
            private final Bundle val$analyticsParameters;
            private final PublishUnlikeRequestWrapper val$unlikeRequest;

            public void onBatchCompleted(RequestBatch requestbatch1)
            {
                isPendingLikeOrUnlike = false;
                if (unlikeRequest.error != null)
                {
                    fallbackToDialog(activity, analyticsParameters, true);
                    return;
                } else
                {
                    unlikeToken = null;
                    isObjectLikedOnServer = false;
                    appEventsLogger.logSdkEvent("fb_like_control_did_unlike", null, analyticsParameters);
                    toggleAgainIfNeeded(activity, analyticsParameters);
                    return;
                }
            }

            
            {
                this$0 = LikeActionController.this;
                unlikeRequest = publishunlikerequestwrapper;
                activity = activity1;
                analyticsParameters = bundle;
                super();
            }
        });
        requestbatch.executeAsync();
    }

    private static void putControllerInMemoryCache(String s, LikeActionController likeactioncontroller)
    {
        String s1 = getCacheKeyForObjectId(s);
        mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(s1, true));
        cache.put(s1, likeactioncontroller);
    }

    private void refreshStatusAsync()
    {
        if (session == null || session.isClosed() || SessionState.CREATED.equals(session.getState()))
        {
            refreshStatusViaService();
        } else
        if (session.isOpened())
        {
            fetchVerifiedObjectId(new RequestCompletionCallback() {

                final LikeActionController this$0;

                public void onComplete()
                {
                    final GetOGObjectLikesRequestWrapper objectLikesRequest = new GetOGObjectLikesRequestWrapper(verifiedObjectId);
                    GetEngagementRequestWrapper getengagementrequestwrapper = new GetEngagementRequestWrapper(verifiedObjectId);
                    RequestBatch requestbatch = new RequestBatch();
                    objectLikesRequest.addToBatch(requestbatch);
                    getengagementrequestwrapper.addToBatch(requestbatch);
                    requestbatch.addCallback(getengagementrequestwrapper. new com.facebook.RequestBatch.Callback() {

                        final _cls8 this$1;
                        private final GetEngagementRequestWrapper val$engagementRequest;
                        private final GetOGObjectLikesRequestWrapper val$objectLikesRequest;

                        public void onBatchCompleted(RequestBatch requestbatch)
                        {
                            if (objectLikesRequest.error != null || engagementRequest.error != null)
                            {
                                LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
                                String s = LikeActionController.TAG;
                                Object aobj[] = new Object[1];
                                aobj[0] = objectId;
                                Logger.log(loggingbehavior, s, "Unable to refresh like state for id: '%s'", aobj);
                                return;
                            } else
                            {
                                updateState(objectLikesRequest.objectIsLiked, engagementRequest.likeCountStringWithLike, engagementRequest.likeCountStringWithoutLike, engagementRequest.socialSentenceStringWithLike, engagementRequest.socialSentenceStringWithoutLike, objectLikesRequest.unlikeToken);
                                return;
                            }
                        }

            
            {
                this$1 = final__pcls8;
                objectLikesRequest = getogobjectlikesrequestwrapper;
                engagementRequest = GetEngagementRequestWrapper.this;
                super();
            }
                    });
                    requestbatch.executeAsync();
                }


            
            {
                this$0 = LikeActionController.this;
                super();
            }
            });
            return;
        }
    }

    private void refreshStatusViaService()
    {
        LikeStatusClient likestatusclient = new LikeStatusClient(context, Settings.getApplicationId(), objectId);
        if (!likestatusclient.start())
        {
            return;
        } else
        {
            likestatusclient.setCompletedListener(new PlatformServiceClient.CompletedListener() {

                final LikeActionController this$0;

                public void completed(Bundle bundle)
                {
                    if (bundle == null || !bundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED"))
                    {
                        return;
                    }
                    boolean flag = bundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED");
                    String s;
                    String s1;
                    String s2;
                    String s3;
                    String s4;
                    if (bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"))
                    {
                        s = bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE");
                    } else
                    {
                        s = likeCountStringWithLike;
                    }
                    if (bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"))
                    {
                        s1 = bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE");
                    } else
                    {
                        s1 = likeCountStringWithoutLike;
                    }
                    if (bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"))
                    {
                        s2 = bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE");
                    } else
                    {
                        s2 = socialSentenceWithLike;
                    }
                    if (bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"))
                    {
                        s3 = bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE");
                    } else
                    {
                        s3 = socialSentenceWithoutLike;
                    }
                    if (bundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN"))
                    {
                        s4 = bundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN");
                    } else
                    {
                        s4 = unlikeToken;
                    }
                    updateState(flag, s, s1, s2, s3, s4);
                }

            
            {
                this$0 = LikeActionController.this;
                super();
            }
            });
            return;
        }
    }

    private static void registerSessionBroadcastReceivers(Context context1)
    {
        LocalBroadcastManager localbroadcastmanager = LocalBroadcastManager.getInstance(context1);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        intentfilter.addAction("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
        intentfilter.addAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
        localbroadcastmanager.registerReceiver(new BroadcastReceiver() {

            public void onReceive(Context context2, Intent intent)
            {
                if (LikeActionController.isPendingBroadcastReset)
                {
                    return;
                }
                String s = intent.getAction();
                final boolean shouldClearDisk;
                if (!Utility.areObjectsEqual("com.facebook.sdk.ACTIVE_SESSION_UNSET", s) && !Utility.areObjectsEqual("com.facebook.sdk.ACTIVE_SESSION_CLOSED", s))
                {
                    shouldClearDisk = false;
                } else
                {
                    shouldClearDisk = true;
                }
                LikeActionController.isPendingBroadcastReset = true;
                LikeActionController.handler.postDelayed(context2. new Runnable() {

                    final _cls4 this$1;
                    private final Context val$broadcastContext;
                    private final boolean val$shouldClearDisk;

                    public void run()
                    {
                        if (shouldClearDisk)
                        {
                            LikeActionController.objectSuffix = (1 + LikeActionController.objectSuffix) % 1000;
                            broadcastContext.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", LikeActionController.objectSuffix).apply();
                            LikeActionController.cache.clear();
                            LikeActionController.controllerDiskCache.clearCache();
                        }
                        LikeActionController.broadcastAction(broadcastContext, null, "com.facebook.sdk.LikeActionController.DID_RESET");
                        LikeActionController.isPendingBroadcastReset = false;
                    }

            
            {
                this$1 = final__pcls4;
                shouldClearDisk = flag;
                broadcastContext = Context.this;
                super();
            }
                }, 100L);
            }

        }, intentfilter);
    }

    private static void serializeToDiskAsync(LikeActionController likeactioncontroller)
    {
        String s = serializeToJson(likeactioncontroller);
        String s1 = getCacheKeyForObjectId(likeactioncontroller.objectId);
        if (!Utility.isNullOrEmpty(s) && !Utility.isNullOrEmpty(s1))
        {
            diskIOWorkQueue.addActiveWorkItem(new SerializeToDiskWorkItem(s1, s));
        }
    }

    private static void serializeToDiskSynchronously(String s, String s1)
    {
        OutputStream outputstream = null;
        outputstream = controllerDiskCache.openPutStream(s);
        outputstream.write(s1.getBytes());
        if (outputstream != null)
        {
            Utility.closeQuietly(outputstream);
        }
_L2:
        return;
        IOException ioexception;
        ioexception;
        Log.e(TAG, "Unable to serialize controller to disk", ioexception);
        if (outputstream == null) goto _L2; else goto _L1
_L1:
        Utility.closeQuietly(outputstream);
        return;
        Exception exception;
        exception;
        if (outputstream != null)
        {
            Utility.closeQuietly(outputstream);
        }
        throw exception;
    }

    private static String serializeToJson(LikeActionController likeactioncontroller)
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1;
        jsonobject.put("com.facebook.internal.LikeActionController.version", 2);
        jsonobject.put("object_id", likeactioncontroller.objectId);
        jsonobject.put("like_count_string_with_like", likeactioncontroller.likeCountStringWithLike);
        jsonobject.put("like_count_string_without_like", likeactioncontroller.likeCountStringWithoutLike);
        jsonobject.put("social_sentence_with_like", likeactioncontroller.socialSentenceWithLike);
        jsonobject.put("social_sentence_without_like", likeactioncontroller.socialSentenceWithoutLike);
        jsonobject.put("is_object_liked", likeactioncontroller.isObjectLiked);
        jsonobject.put("unlike_token", likeactioncontroller.unlikeToken);
        if (likeactioncontroller.pendingCallId != null)
        {
            jsonobject.put("pending_call_id", likeactioncontroller.pendingCallId.toString());
        }
        if (likeactioncontroller.pendingCallAnalyticsBundle == null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        jsonobject1 = BundleJSONConverter.convertToJSON(likeactioncontroller.pendingCallAnalyticsBundle);
        if (jsonobject1 != null)
        {
            try
            {
                jsonobject.put("pending_call_analytics_bundle", jsonobject1);
            }
            catch (JSONException jsonexception)
            {
                Log.e(TAG, "Unable to serialize controller to JSON", jsonexception);
                return null;
            }
        }
        return jsonobject.toString();
    }

    private void stopTrackingPendingCall()
    {
        PendingCallStore.getInstance().stopTrackingPendingCall(pendingCallId);
        pendingCallId = null;
        pendingCallAnalyticsBundle = null;
        storeObjectIdForPendingController(null);
    }

    private void storeObjectIdForPendingController(String s)
    {
        objectIdForPendingController = s;
        context.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", objectIdForPendingController).apply();
    }

    private void toggleAgainIfNeeded(Activity activity, Bundle bundle)
    {
        if (isObjectLiked != isObjectLikedOnServer)
        {
            performLikeOrUnlike(activity, isObjectLiked, bundle);
        }
    }

    private void trackPendingCall(com.facebook.widget.FacebookDialog.PendingCall pendingcall, Bundle bundle)
    {
        PendingCallStore.getInstance().trackPendingCall(pendingcall);
        pendingCallId = pendingcall.getCallId();
        storeObjectIdForPendingController(objectId);
        pendingCallAnalyticsBundle = bundle;
        serializeToDiskAsync(this);
    }

    private void updateState(boolean flag, String s, String s1, String s2, String s3, String s4)
    {
        String s5 = Utility.coerceValueIfNullOrEmpty(s, null);
        String s6 = Utility.coerceValueIfNullOrEmpty(s1, null);
        String s7 = Utility.coerceValueIfNullOrEmpty(s2, null);
        String s8 = Utility.coerceValueIfNullOrEmpty(s3, null);
        String s9 = Utility.coerceValueIfNullOrEmpty(s4, null);
        boolean flag1;
        if (flag == isObjectLiked && Utility.areObjectsEqual(s5, likeCountStringWithLike) && Utility.areObjectsEqual(s6, likeCountStringWithoutLike) && Utility.areObjectsEqual(s7, socialSentenceWithLike) && Utility.areObjectsEqual(s8, socialSentenceWithoutLike) && Utility.areObjectsEqual(s9, unlikeToken))
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (!flag1)
        {
            return;
        } else
        {
            isObjectLiked = flag;
            likeCountStringWithLike = s5;
            likeCountStringWithoutLike = s6;
            socialSentenceWithLike = s7;
            socialSentenceWithoutLike = s8;
            unlikeToken = s9;
            serializeToDiskAsync(this);
            broadcastAction(context, this, "com.facebook.sdk.LikeActionController.UPDATED");
            return;
        }
    }

    public String getLikeCountString()
    {
        if (isObjectLiked)
        {
            return likeCountStringWithLike;
        } else
        {
            return likeCountStringWithoutLike;
        }
    }

    public String getObjectId()
    {
        return objectId;
    }

    public String getSocialSentence()
    {
        if (isObjectLiked)
        {
            return socialSentenceWithLike;
        } else
        {
            return socialSentenceWithoutLike;
        }
    }

    public boolean isObjectLiked()
    {
        return isObjectLiked;
    }

    public void toggleLike(Activity activity, Bundle bundle)
    {
        appEventsLogger.logSdkEvent("fb_like_control_did_tap", null, bundle);
        boolean flag;
        if (isObjectLiked)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (canUseOGPublish())
        {
            updateState(flag, likeCountStringWithLike, likeCountStringWithoutLike, socialSentenceWithLike, socialSentenceWithoutLike, unlikeToken);
            if (isPendingLikeOrUnlike)
            {
                appEventsLogger.logSdkEvent("fb_like_control_did_undo_quickly", null, bundle);
                return;
            }
        }
        performLikeOrUnlike(activity, flag, bundle);
    }




































}
