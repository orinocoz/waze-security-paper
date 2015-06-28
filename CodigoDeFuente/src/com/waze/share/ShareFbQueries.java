// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.app.Activity;
import android.location.Location;
import android.os.Bundle;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.RequestAsyncTask;
import com.facebook.Response;
import com.facebook.android.AsyncFacebookRunner;
import com.facebook.android.Facebook;
import com.facebook.model.GraphObject;
import com.facebook.widget.WebDialog;
import com.waze.Logger;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ProgressBarDialog;
import com.waze.location.Position;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.waze.share:
//            ShareFbFriend, ShareFbLocation, ShareNativeManager

public final class ShareFbQueries
{
    public static class FriendsRequestListener
        implements com.facebook.Request.Callback
    {

        private IFriendsListCallback mCallback;
        private ProgressBarDialog mProgress;

        public void onCompleted(Response response)
        {
            FacebookRequestError facebookrequesterror = response.getError();
            GraphObject graphobject = response.getGraphObject();
            Log.d("Facebook queries", (new StringBuilder("Friends list request completed with response: ")).append(response.toString()).append("Error: ").append(facebookrequesterror).toString());
            ArrayList arraylist = null;
            if (graphobject != null)
            {
                arraylist = ShareFbQueries.parseFriendsListData(graphobject.getInnerJSONObject(), true);
            }
            int i;
            if (arraylist != null)
            {
                Logger.i_("Facebook queries", (new StringBuilder("Facebook friends request has been completed. Got ")).append(arraylist.size()).append(" friends!").toString());
                i = 0;
            } else
            {
                Logger.i_("Facebook queries", "Facebook friends request has been completed. Got no results !");
                i = 0x10000002;
            }
            if (mCallback != null)
            {
                mCallback.onFriendsListResult(arraylist, i, null);
            }
            if (mProgress != null)
            {
                mProgress.cancel();
            }
        }

        public FriendsRequestListener(ProgressBarDialog progressbardialog, IFriendsListCallback ifriendslistcallback)
        {
            mProgress = null;
            mCallback = null;
            mProgress = progressbardialog;
            mCallback = ifriendslistcallback;
        }
    }

    public static interface IFriendsListCallback
    {

        public abstract void onFriendsListResult(ArrayList arraylist, int i, String s);
    }

    public static interface ILocationsListCallback
    {

        public abstract void onLocationsListResult(ArrayList arraylist, int i, String s);
    }

    public static interface IPostCallback
    {

        public abstract void onPostResult(int i, String s);
    }

    public static class LocationRequestListener
        implements com.facebook.Request.Callback
    {

        private ILocationsListCallback mCallback;
        private Position mCenter;
        private ProgressBarDialog mProgress;

        public void onCompleted(Response response)
        {
            FacebookRequestError facebookrequesterror = response.getError();
            GraphObject graphobject = response.getGraphObject();
            Log.d("Facebook queries", (new StringBuilder("Location request completed with response: ")).append(response.toString()).append("Error: ").append(facebookrequesterror).toString());
            ArrayList arraylist = null;
            if (graphobject != null)
            {
                arraylist = ShareFbQueries.parseLocationsListData(graphobject.getInnerJSONObject(), mCenter, false);
            }
            int i;
            if (arraylist != null)
            {
                i = 0;
                Logger.i_("Facebook queries", (new StringBuilder("Facebook location request has been completed. Got ")).append(arraylist.size()).append(" locations!").toString());
            } else
            {
                i = 0x10000002;
                Logger.i_("Facebook queries", "Facebook location request has been completed. Got no locations!");
            }
            if (mCallback != null)
            {
                mCallback.onLocationsListResult(arraylist, i, null);
            }
            if (mProgress != null)
            {
                mProgress.cancel();
            }
        }

        public LocationRequestListener(ProgressBarDialog progressbardialog, ILocationsListCallback ilocationslistcallback, Position position)
        {
            mProgress = null;
            mCallback = null;
            mProgress = progressbardialog;
            mCallback = ilocationslistcallback;
            mCenter = position;
        }
    }

    public static class PostDialogListener
        implements com.facebook.widget.WebDialog.OnCompleteListener
    {

        public void onComplete(Bundle bundle, FacebookException facebookexception)
        {
            if (facebookexception == null)
            {
                if (bundle.getString("post_id") != null)
                {
                    Log.d("Facebook queries", "Post has been performed successfully through the FB post dialog");
                    return;
                } else
                {
                    Log.i("Facebook queries", "FB post dialog was canceled");
                    return;
                }
            }
            if (facebookexception instanceof FacebookOperationCanceledException)
            {
                Log.i("Facebook queries", "FB post dialog was canceled by X button");
                return;
            } else
            {
                Log.i("Facebook queries", (new StringBuilder("FB post dialog: generic error: ")).append(facebookexception.toString()).toString());
                return;
            }
        }

        public PostDialogListener()
        {
        }
    }

    public static class PostRequestListener
        implements com.facebook.Request.Callback
    {

        private IPostCallback mCallback;
        private ProgressBarDialog mProgress;

        public void onCompleted(Response response)
        {
            Log.d("Facebook queries", (new StringBuilder("Post request completed with response: ")).append(response.toString()).toString());
            FacebookRequestError facebookrequesterror = response.getError();
            if (facebookrequesterror == null) goto _L2; else goto _L1
_L1:
            String s;
            try
            {
                if (mCallback != null)
                {
                    mCallback.onPostResult(0x10000001, facebookrequesterror.getErrorMessage());
                }
            }
            catch (JSONException jsonexception)
            {
                if (mCallback != null)
                {
                    mCallback.onPostResult(0x10000004, null);
                }
            }
_L3:
            if (mProgress != null)
            {
                mProgress.cancel();
            }
            return;
_L2:
            s = response.getGraphObject().getInnerJSONObject().getString("id");
            if (s != null)
            {
                break MISSING_BLOCK_LABEL_141;
            }
            if (mCallback == null)
            {
                break MISSING_BLOCK_LABEL_59;
            }
            mCallback.onPostResult(0x10000001, "No post id");
            break MISSING_BLOCK_LABEL_59;
            Log.d("Facebook queries", (new StringBuilder("Post request succeeded. Id: ")).append(s).toString());
            if (mCallback != null)
            {
                mCallback.onPostResult(0, null);
            }
              goto _L3
        }

        public PostRequestListener(ProgressBarDialog progressbardialog, IPostCallback ipostcallback)
        {
            mProgress = null;
            mCallback = null;
            mProgress = progressbardialog;
            mCallback = ipostcallback;
        }
    }


    public static final int FB_FRIENDS_COMPARE_NAME = 0;
    public static final String FB_POST_DLG_URL = "http://www.waze.com";
    public static final int FB_QUERY_RESULT_ERROR_GENERAL = 0x10000001;
    public static final int FB_QUERY_RESULT_ERROR_INVALID_RESPONSE = 0x10000004;
    public static final int FB_QUERY_RESULT_ERROR_NO_RESULT = 0x10000002;
    public static final int FB_QUERY_RESULT_OK = 0;
    public static final int LOCATION_QUERY_RADIUS_METERS = 5000;
    public static final String LOG_TAG = "Facebook queries";
    private static ShareFbQueries mInstance = null;

    public ShareFbQueries()
    {
    }

    public static AsyncFacebookRunner Runner(Facebook facebook)
    {
        return new AsyncFacebookRunner(facebook);
    }

    public static void getFriendsList(final ActivityBase context, final String pattern, final int limit, final IFriendsListCallback cb, final boolean showProgress)
    {
        final FacebookWrapper fbw = FacebookWrapper.getInstance();
        fbw.authorize(context, new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            private final IFriendsListCallback val$cb;
            private final ActivityBase val$context;
            private final FacebookWrapper val$fbw;
            private final int val$limit;
            private final String val$pattern;
            private final boolean val$showProgress;

            public void onAuthorizeCompleted(boolean flag, int i)
            {
                boolean flag1 = showProgress;
                ProgressBarDialog progressbardialog = null;
                if (flag1)
                {
                    progressbardialog = new ProgressBarDialog(context);
                    progressbardialog.show();
                }
                fbw.runFqlQuery(ShareFbQueries.getFriendsQuery(pattern, limit), new FriendsRequestListener(progressbardialog, cb));
            }

            
            {
                showProgress = flag;
                context = activitybase;
                fbw = facebookwrapper;
                pattern = s;
                limit = i;
                cb = ifriendslistcallback;
                super();
            }
        }, false);
    }

    private static String getFriendsQuery(String s, int i)
    {
        String s1 = "select name, current_location, uid, pic from user where uid in (select uid2 from friend where uid1=me())";
        if (s != null && s.length() > 0)
        {
            s1 = (new StringBuilder(String.valueOf(s1))).append(" and strpos( lower(name),'").append(s.toLowerCase()).append("') >= 0").toString();
        }
        String s2 = (new StringBuilder(String.valueOf(s1))).append(" order by name limit ").append(i).toString();
        Logger.d_("Facebook queries", (new StringBuilder("Friends query: ")).append(s2).toString());
        return s2;
    }

    public static ShareFbQueries getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new ShareFbQueries();
        }
        return mInstance;
    }

    public static void getLocationsList(final ActivityBase context, final String pattern, int i, final Position pos, final ILocationsListCallback cb, final boolean showProgress)
    {
        FacebookWrapper.getInstance().authorize(context, new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            private final ILocationsListCallback val$cb;
            private final ActivityBase val$context;
            private final String val$pattern;
            private final Position val$pos;
            private final boolean val$showProgress;

            public void onAuthorizeCompleted(boolean flag, int j)
            {
                Bundle bundle = new Bundle();
                boolean flag1;
                boolean flag2;
                boolean flag3;
                ProgressBarDialog progressbardialog;
                if (pattern != null)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (pattern.length() > 0)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                if (flag1 & flag2)
                {
                    bundle.putString("q", pattern);
                }
                bundle.putString("type", "place");
                bundle.putString("center", (new StringBuilder(String.valueOf(Double.toString(pos.latitude)))).append(",").append(Double.toString(pos.longitude)).toString());
                bundle.putString("distance", Integer.toString(5000));
                flag3 = showProgress;
                progressbardialog = null;
                if (flag3)
                {
                    progressbardialog = new ProgressBarDialog(context);
                    progressbardialog.show();
                }
                (new RequestAsyncTask(new Request[] {
                    new Request(FacebookWrapper.session(), "search", bundle, HttpMethod.GET, new LocationRequestListener(progressbardialog, cb, pos))
                })).execute(new Void[0]);
            }

            
            {
                pattern = s;
                pos = position;
                showProgress = flag;
                context = activitybase;
                cb = ilocationslistcallback;
                super();
            }
        }, false);
    }

    private static ArrayList parseFriendsListData(JSONObject jsonobject, boolean flag)
    {
        ArrayList arraylist;
        JSONArray jsonarray;
        int i;
        ShareFbFriend sharefbfriend;
        try
        {
            arraylist = new ArrayList();
            jsonarray = jsonobject.getJSONArray("data");
        }
        catch (JSONException jsonexception)
        {
            Logger.e_("Facebook queries", (new StringBuilder("Got JSON exception: ")).append(jsonexception.getMessage()).toString());
            jsonexception.printStackTrace();
            return null;
        }
        i = 0;
        if (i >= jsonarray.length())
        {
            return arraylist;
        }
        sharefbfriend = new ShareFbFriend();
        sharefbfriend.id = jsonarray.getJSONObject(i).getLong("uid");
        sharefbfriend.name = jsonarray.getJSONObject(i).getString("name");
        sharefbfriend.imageUrl = jsonarray.getJSONObject(i).getString("pic");
        arraylist.add(sharefbfriend);
        Logger.i_("Facebook queries", (new StringBuilder("Friend # ")).append(i).append(" : ").append(sharefbfriend.name).toString());
        i++;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_19;
        }
    }

    private static ArrayList parseLocationsListData(JSONObject jsonobject, Position position, boolean flag)
    {
        ArrayList arraylist;
        JSONArray jsonarray;
        arraylist = new ArrayList();
        jsonarray = jsonobject.getJSONArray("data");
        int i = 0;
_L3:
        if (i >= jsonarray.length())
        {
            return arraylist;
        }
        ShareFbLocation sharefblocation;
        float af[];
        sharefblocation = new ShareFbLocation();
        sharefblocation.id = jsonarray.getJSONObject(i).getString("id");
        sharefblocation.name = jsonarray.getJSONObject(i).getString("name");
        JSONObject jsonobject1 = jsonarray.getJSONObject(i).getJSONObject("location");
        sharefblocation.address = "";
        if (jsonobject1.has("street"))
        {
            sharefblocation.address = (new StringBuilder(String.valueOf(sharefblocation.address))).append(jsonobject1.getString("street")).toString();
        }
        if (jsonobject1.has("location"))
        {
            if (sharefblocation.address.length() > 0)
            {
                sharefblocation.address = (new StringBuilder(String.valueOf(sharefblocation.address))).append(", ").toString();
            }
            sharefblocation.address = (new StringBuilder(String.valueOf(sharefblocation.address))).append(jsonobject1.getString("location")).toString();
        }
        if (jsonobject1.has("state"))
        {
            if (sharefblocation.address.length() > 0)
            {
                sharefblocation.address = (new StringBuilder(String.valueOf(sharefblocation.address))).append(", ").toString();
            }
            sharefblocation.address = (new StringBuilder(String.valueOf(sharefblocation.address))).append(jsonobject1.getString("state")).toString();
        }
        sharefblocation.latitude = jsonobject1.getDouble("latitude");
        sharefblocation.longitude = jsonobject1.getDouble("longitude");
        af = new float[1];
        Location.distanceBetween(sharefblocation.latitude, sharefblocation.longitude, position.latitude, position.longitude, af);
        if (!ShareNativeManager.getInstance().isMetricUnits())
        {
            break MISSING_BLOCK_LABEL_446;
        }
        sharefblocation.distance = 0.001F * af[0];
_L1:
        sharefblocation.distance = (float)Math.round(100F * sharefblocation.distance) / 100F;
        arraylist.add(sharefblocation);
        Logger.i_("Facebook queries", (new StringBuilder("Place # ")).append(i).append(" : ").append(sharefblocation.name).toString());
        i++;
        continue; /* Loop/switch isn't completed */
        sharefblocation.distance = 0.000621371F * af[0];
          goto _L1
        JSONException jsonexception;
        jsonexception;
        Logger.e_("Facebook queries", (new StringBuilder("Got JSON exception: ")).append(jsonexception.getMessage()).toString());
        jsonexception.printStackTrace();
        return null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static void postAction(ActivityBase activitybase, final ShareFbLocation destination, String s, String as[], String s1, IPostCallback ipostcallback, boolean flag)
    {
        FacebookWrapper facebookwrapper = FacebookWrapper.getInstance();
        ProgressBarDialog progressbardialog = new ProgressBarDialog(activitybase);
        com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            private final IPostCallback val$cb;
            private final ShareFbLocation val$destination;
            private final String val$end_time;
            private final String val$message;
            private final ProgressBarDialog val$progress;
            private final String val$serverUrl;
            private final String val$tags[];

            public void onAuthorizeCompleted(boolean flag1, int i)
            {
                Bundle bundle = new Bundle();
                StringBuilder stringbuilder = new StringBuilder();
                String s2 = String.valueOf(destination.longitude);
                String s3 = String.valueOf(destination.latitude);
                stringbuilder.append((new StringBuilder(String.valueOf(serverUrl))).append(destination.id).toString());
                stringbuilder.append((new StringBuilder("?placeName=")).append(destination.name).append("&lon=").append(s2).append("&lat=").append(s3).toString());
                bundle.putString("destination", stringbuilder.toString());
                bundle.putString("end_time", end_time);
                if (message != null)
                {
                    bundle.putString("message", message);
                }
                String s4 = ShareFbQueries.tagsList(tags);
                if (s4 != null)
                {
                    bundle.putString("tags", s4);
                }
                (new RequestAsyncTask(new Request[] {
                    new Request(FacebookWrapper.session(), "/me/wazeapplication:drive_to", bundle, HttpMethod.POST, new PostRequestListener(progress, cb))
                })).execute(new Void[0]);
            }

            
            {
                destination = sharefblocation;
                serverUrl = s;
                end_time = s1;
                message = s2;
                tags = as;
                progress = progressbardialog;
                cb = ipostcallback;
                super();
            }
        };
        if (flag)
        {
            progressbardialog.show();
        }
        facebookwrapper.authorize(activitybase, ionauthorizecompletedlistener, false);
    }

    public static void postDialogShow(Activity activity)
    {
        Bundle bundle = new Bundle();
        bundle.putString("link", "http://www.waze.com");
        WebDialog webdialog = (new com.facebook.widget.WebDialog.FeedDialogBuilder(activity, FacebookWrapper.session(), bundle)).build();
        webdialog.setOnCompleteListener(new PostDialogListener());
        webdialog.show();
    }

    public static void postEventFeed(ActivityBase activitybase, final ShareFbLocation destination, final String link, final String tags[], final String message, final IPostCallback cb, boolean flag, final String eventId, 
            final String desc, final String picture)
    {
        FacebookWrapper facebookwrapper = FacebookWrapper.getInstance();
        final ProgressBarDialog progress = new ProgressBarDialog(activitybase);
        com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            private final IPostCallback val$cb;
            private final String val$desc;
            private final ShareFbLocation val$destination;
            private final String val$eventId;
            private final String val$link;
            private final String val$message;
            private final String val$picture;
            private final ProgressBarDialog val$progress;
            private final String val$tags[];

            public void onAuthorizeCompleted(boolean flag1, int i)
            {
                Bundle bundle = new Bundle();
                if (destination != null)
                {
                    bundle.putString("place", destination.id);
                }
                if (link != null)
                {
                    bundle.putString("link", link);
                }
                if (desc != null)
                {
                    bundle.putString("description", desc);
                }
                if (picture != null)
                {
                    bundle.putString("picture", picture);
                }
                String s = ShareFbQueries.tagsList(tags);
                if (s != null)
                {
                    bundle.putString("tags", s);
                }
                if (message != null)
                {
                    bundle.putString("message", message);
                }
                (new RequestAsyncTask(new Request[] {
                    new Request(FacebookWrapper.session(), (new StringBuilder(String.valueOf(eventId))).append("/feed").toString(), bundle, HttpMethod.POST, new PostRequestListener(progress, cb))
                })).execute(new Void[0]);
            }

            
            {
                destination = sharefblocation;
                link = s;
                desc = s1;
                picture = s2;
                tags = as;
                message = s3;
                eventId = s4;
                progress = progressbardialog;
                cb = ipostcallback;
                super();
            }
        };
        if (flag)
        {
            progress.show();
        }
        facebookwrapper.authorize(activitybase, ionauthorizecompletedlistener, false);
    }

    public static void postFeed(ActivityBase activitybase, final ShareFbLocation destination, final String tags[], final String message, final IPostCallback cb, boolean flag)
    {
        FacebookWrapper facebookwrapper = FacebookWrapper.getInstance();
        final ProgressBarDialog progress = new ProgressBarDialog(activitybase);
        com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

            private final IPostCallback val$cb;
            private final ShareFbLocation val$destination;
            private final String val$message;
            private final ProgressBarDialog val$progress;
            private final String val$tags[];

            private void showPleaseTagPalceToast()
            {
                Log.d("Facebook queries", "Cannot post to FB wall friends tags without location tag");
                NativeManager nativemanager = NativeManager.getInstance();
                String s = nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_SELECT_FACEBOOK_LOCATION);
                Log.w("WAZE", (new StringBuilder("There was an error posting to FB: ")).append(s).toString());
                MsgBox.openMessageBoxTimeout(nativemanager.getLanguageString(DisplayStrings.DS_EDIT_LOCATION), s, 8, null);
            }

            public void onAuthorizeCompleted(boolean flag1, int i)
            {
                Bundle bundle = new Bundle();
                if (destination != null)
                {
                    bundle.putString("place", destination.id);
                }
                String s = ShareFbQueries.tagsList(tags);
                if (s != null)
                {
                    bundle.putString("tags", s);
                    if (destination == null)
                    {
                        showPleaseTagPalceToast();
                        progress.cancel();
                        return;
                    }
                }
                if (message != null)
                {
                    bundle.putString("message", message);
                }
                (new RequestAsyncTask(new Request[] {
                    new Request(FacebookWrapper.session(), "me/feed", bundle, HttpMethod.POST, new PostRequestListener(progress, cb))
                })).execute(new Void[0]);
            }

            
            {
                destination = sharefblocation;
                tags = as;
                progress = progressbardialog;
                message = s;
                cb = ipostcallback;
                super();
            }
        };
        if (flag)
        {
            progress.show();
        }
        facebookwrapper.authorize(activitybase, ionauthorizecompletedlistener, false);
    }

    public static String tagsList(String as[])
    {
        if (as == null || as.length == 0)
        {
            return null;
        }
        int i = 0;
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            if (i >= as.length)
            {
                return stringbuilder.toString();
            }
            if (i > 0)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(as[i]);
            i++;
        } while (true);
    }




}
