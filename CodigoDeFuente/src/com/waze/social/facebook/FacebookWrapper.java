// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social.facebook;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ActivityResultCallback;
import com.waze.mywaze.MyWazeNativeManager;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.social.facebook:
//            AuthStateListner, LogoutStateListener

public final class FacebookWrapper
{
    public static interface IOnAuthorizeCompletedListener
    {

        public abstract void onAuthorizeCompleted(boolean flag, int i);
    }

    public static interface OnLogoutCompletedListener
    {

        public abstract void onLogoutCompleted();
    }


    private static final String FB_PREFS_ACCESS_PERMISSIONS = "facebookAccessPermissions";
    private static final String FB_PREFS_DELIM = ",";
    private static final int FB_REQUEST_CODE = 0x123456;
    public static final int FB_STATE_AUTH_CANCEL = 3;
    public static final int FB_STATE_AUTH_ERROR = 1;
    public static final int FB_STATE_AUTH_NOT_NEEDED = 4;
    public static final int FB_STATE_AUTH_SUCCESS = 0;
    protected static final String LOG_TAG = "FBWrapper";
    public static final int ON_AUTHORIZE_ACTION_NONE = 0;
    public static final int ON_AUTHORIZE_ACTION_PUBLISH = 4;
    public static final int ON_AUTHORIZE_ACTION_PUBLISH_STREAM = 8;
    public static final int ON_AUTHORIZE_ACTION_SET_TOKEN = 1;
    public static final int ON_AUTHORIZE_ACTION_SIGN_IN = 2;
    private static FacebookWrapper mInstance = null;
    public final ActivityResultCallback mActivityResult = new ActivityResultCallback() {

        final FacebookWrapper this$0;

        public void onActivitResult(ActivityBase activitybase, int i, int j, Intent intent)
        {
            if (FacebookWrapper.session() != null)
            {
                Logger.d_("FBWrapper", (new StringBuilder("onActivityResult. Request code: ")).append(i).append(". Result: ").append(j).append(". Session state: ").append(FacebookWrapper.session().getState()).toString());
                if (i == 0x123456)
                {
                    FacebookWrapper.session().onActivityResult(activitybase, i, j, intent);
                }
            }
        }

            
            {
                this$0 = FacebookWrapper.this;
                super();
            }
    };
    private volatile ActivityBase mContext;
    private List mFbPermissions;
    private List mFbPermissionsStream;
    private List mFbPublishPermission;

    private FacebookWrapper()
    {
        mFbPermissions = null;
        mFbPermissionsStream = null;
        mFbPublishPermission = null;
    }

    private Session create()
    {
        Session session1 = new Session(mContext);
        Session.setActiveSession(session1);
        Logger.d_("FBWrapper", (new StringBuilder("New session created. Current state: ")).append(session1.getState()).toString());
        return session1;
    }

    private void getFbPermissions(final Runnable callback, final boolean bIsReadPermissions, final boolean bIsStreamPermission)
    {
        RunnableUICallback runnableuicallback = new RunnableUICallback() {

            final FacebookWrapper this$0;
            private final boolean val$bIsReadPermissions;
            private final boolean val$bIsStreamPermission;
            private final Runnable val$callback;

            public void callback()
            {
                callback.run();
            }

            public void event()
            {
                NativeManager nativemanager = NativeManager.getInstance();
                if (bIsReadPermissions)
                {
                    String as2[] = nativemanager.getFbPermissionsNTV();
                    if (as2 != null)
                    {
                        mFbPermissions = Arrays.asList(as2);
                    }
                } else
                {
                    if (bIsStreamPermission)
                    {
                        String as[] = {
                            "publish_stream"
                        };
                        mFbPermissionsStream = Arrays.asList(as);
                        return;
                    }
                    String as1[] = nativemanager.getPublishFbPermissionsNTV();
                    if (as1 != null)
                    {
                        mFbPublishPermission = Arrays.asList(as1);
                        return;
                    }
                }
            }

            
            {
                this$0 = FacebookWrapper.this;
                bIsReadPermissions = flag;
                bIsStreamPermission = flag1;
                callback = runnable;
                super();
            }
        };
        if (NativeManager.IsAppStarted())
        {
            NativeManager.Post(runnableuicallback);
            return;
        } else
        {
            NativeManager.registerOnAppStartedEvent(new RunnableExecutor(runnableuicallback) {

                final FacebookWrapper this$0;
                private final RunnableUICallback val$fbPermRequest;

                public void event()
                {
                    fbPermRequest.run();
                }

            
            {
                this$0 = FacebookWrapper.this;
                fbPermRequest = runnableuicallback;
                super(final_executor);
            }
            });
            return;
        }
    }

    public static FacebookWrapper getInstance()
    {
        if (mInstance == null)
        {
            Logger.e_("FBWrapper", "initialize method should be called first");
        }
        return mInstance;
    }

    private AccessToken getOldToken(Activity activity, List list)
    {
        SharedPreferences sharedpreferences = activity.getPreferences(0);
        String s = sharedpreferences.getString("facebookAccessToken", null);
        AccessToken accesstoken = null;
        if (s != null)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("facebookAccessToken", null);
            editor.putString("facebookAccessExpires", null);
            editor.commit();
            accesstoken = AccessToken.createFromExistingAccessToken(s, null, null, null, list);
        }
        return accesstoken;
    }

    private void init(ActivityBase activitybase)
    {
        Settings.addLoggingBehavior(LoggingBehavior.INCLUDE_ACCESS_TOKENS);
        Session session1 = session();
        mContext = activitybase;
        if (session1 == null)
        {
            mFbPermissions = loadPermissions();
            if (create().getState() == SessionState.CREATED_TOKEN_LOADED)
            {
                open(activitybase, null, false, false);
            }
        }
    }

    public static FacebookWrapper initialize(ActivityBase activitybase)
    {
        if (mInstance == null)
        {
            mInstance = new FacebookWrapper();
            mInstance.init(activitybase);
        }
        return mInstance;
    }

    private boolean isSubsetOf(Collection collection, Collection collection1)
    {
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return true;
            }
        } while (collection1.contains((String)iterator.next()));
        return false;
    }

    private List loadPermissions()
    {
        String s = mContext.getPreferences(0).getString("facebookAccessPermissions", null);
        List list = null;
        if (s != null)
        {
            list = Arrays.asList(s.split(","));
        }
        return list;
    }

    private void open(ActivityBase activitybase, AuthStateListner authstatelistner, boolean flag, boolean flag1)
    {
        Session session1;
        List list;
        session1 = session(true);
        if (flag)
        {
            list = mFbPublishPermission;
        } else
        if (flag1)
        {
            list = mFbPermissionsStream;
        } else
        {
            list = mFbPermissions;
        }
        if (!session1.isOpened()) goto _L2; else goto _L1
_L1:
        if (!isSubsetOf(list, session1.getPermissions())) goto _L4; else goto _L3
_L3:
        if (authstatelistner.getListener() != null)
        {
            authstatelistner.getListener().onAuthorizeCompleted(true, 4);
        }
_L6:
        return;
_L4:
        Logger.d_("FBWrapper", (new StringBuilder("Permissions for request. Publish: ")).append(flag).toString());
        com.facebook.Session.NewPermissionsRequest newpermissionsrequest = preparePermissionsRequest(activitybase, authstatelistner, list);
        if (flag)
        {
            session1.requestNewPublishPermissions(newpermissionsrequest);
            return;
        }
        if (flag1)
        {
            session1.requestNewPublishPermissions(newpermissionsrequest);
            return;
        } else
        {
            session1.requestNewReadPermissions(newpermissionsrequest);
            return;
        }
_L2:
        if (session1.getState() == SessionState.OPENING)
        {
            session1.addCallback(authstatelistner);
            activitybase.addActivityResultCallback(mActivityResult);
            return;
        }
        if (session1.getState() == SessionState.CREATED || session1.getState() == SessionState.CREATED_TOKEN_LOADED)
        {
            AccessToken accesstoken = getOldToken(mContext, list);
            if (accesstoken != null)
            {
                Logger.d_("FBWrapper", "open request from the old token.");
                session1.open(accesstoken, authstatelistner);
                return;
            }
            Logger.d_("FBWrapper", (new StringBuilder("open request. Publish: ")).append(flag).toString());
            com.facebook.Session.OpenRequest openrequest = prepareOpenRequest(activitybase, authstatelistner, list);
            if (flag)
            {
                session().openForPublish(openrequest);
                return;
            }
            if (flag1)
            {
                session().openForPublish(openrequest);
                return;
            } else
            {
                session().openForRead(openrequest);
                return;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private com.facebook.Session.OpenRequest prepareOpenRequest(ActivityBase activitybase, AuthStateListner authstatelistner, List list)
    {
        com.facebook.Session.OpenRequest openrequest = new com.facebook.Session.OpenRequest(activitybase);
        openrequest.setRequestCode(0x123456);
        activitybase.addActivityResultCallback(mActivityResult);
        if (list != null)
        {
            openrequest.setPermissions(list);
        }
        Session session1 = session();
        if (session1 == null)
        {
            session1 = create();
        }
        if (authstatelistner != null)
        {
            session1.addCallback(authstatelistner);
        }
        return openrequest;
    }

    private com.facebook.Session.NewPermissionsRequest preparePermissionsRequest(ActivityBase activitybase, AuthStateListner authstatelistner, List list)
    {
        com.facebook.Session.NewPermissionsRequest newpermissionsrequest = new com.facebook.Session.NewPermissionsRequest(activitybase, list);
        newpermissionsrequest.setRequestCode(0x123456);
        activitybase.addActivityResultCallback(mActivityResult);
        session().addCallback(authstatelistner);
        return newpermissionsrequest;
    }

    private void reauthorize(final ActivityBase activity, final IOnAuthorizeCompletedListener listener, final int onAuthAction)
    {
        OnLogoutCompletedListener onlogoutcompletedlistener = new OnLogoutCompletedListener() {

            final FacebookWrapper this$0;
            private final ActivityBase val$activity;
            private final IOnAuthorizeCompletedListener val$listener;
            private final int val$onAuthAction;

            public void onLogoutCompleted()
            {
                authorize(activity, listener, onAuthAction);
            }

            
            {
                this$0 = FacebookWrapper.this;
                activity = activitybase;
                listener = ionauthorizecompletedlistener;
                onAuthAction = i;
                super();
            }
        };
        Logger.d_("FBWrapper", (new StringBuilder("Reathorizing the facebook session. Action: ")).append(onAuthAction).append("Requesting activity: ").append(activity).toString());
        logout(activity, onlogoutcompletedlistener);
    }

    private void savePermissions()
    {
        SharedPreferences sharedpreferences = mContext.getPreferences(0);
        if (mFbPermissions == null) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        int i;
        stringbuilder = new StringBuilder();
        i = 0;
_L6:
        if (i < mFbPermissions.size()) goto _L4; else goto _L3
_L3:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("facebookAccessPermissions", stringbuilder.toString());
        editor.commit();
_L2:
        return;
_L4:
        stringbuilder.append((String)mFbPermissions.get(i)).append(",");
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static Session session()
    {
        return Session.getActiveSession();
    }

    private Session session(boolean flag)
    {
        Session session1 = session();
        if (session1 == null && flag)
        {
            session1 = create();
        }
        return session1;
    }

    private boolean updateTokenNeeded(Session session1, List list)
    {
        return !session1.getState().equals(SessionState.CREATED_TOKEN_LOADED) || !isSubsetOf(list, session1.getPermissions());
    }

    public void SignIn(ActivityBase activitybase, IOnAuthorizeCompletedListener ionauthorizecompletedlistener, boolean flag)
    {
        Logger.d_("FBWrapper", (new StringBuilder("SignIn request. Activity: ")).append(activitybase.toString()).append(". Force: ").append(flag).toString());
        Session session1 = session();
        if (flag && session1 != null && session1.isOpened())
        {
            reauthorize(activitybase, ionauthorizecompletedlistener, 2);
            return;
        } else
        {
            authorize(activitybase, ionauthorizecompletedlistener, 2);
            return;
        }
    }

    protected void applyAuthAction(Session session1, int i, boolean flag, int j)
    {
        if (j == 0)
        {
            if ((i & 1) > 0)
            {
                MyWazeNativeManager.getInstance().setFacebookToken(session1.getAccessToken(), session1.getExpirationDate().getTime());
            }
            if ((i & 2) > 0)
            {
                MyWazeNativeManager.getInstance().setSignIn(session1.getAccessToken());
            }
        }
        if ((i & 4) > 0)
        {
            MyWazeNativeManager.getInstance().authorizePublishCallback(flag);
        }
        if ((i & 8) > 0)
        {
            MyWazeNativeManager.getInstance().authorizePublishCallback(flag);
        }
        if (session1.isClosed())
        {
            MyWazeNativeManager.getInstance().facebookDisconnectNow();
        }
    }

    public void authorize(ActivityBase activitybase, IOnAuthorizeCompletedListener ionauthorizecompletedlistener, int i)
    {
        open(activitybase, AuthStateListner.create(ionauthorizecompletedlistener, i), false, false);
    }

    public void authorize(ActivityBase activitybase, IOnAuthorizeCompletedListener ionauthorizecompletedlistener, boolean flag)
    {
        Logger.d_("FBWrapper", (new StringBuilder("Authorize request. Activity: ")).append(activitybase.toString()).append(". Force: ").append(flag).toString());
        Session session1 = session();
        if (flag && session1 != null && session1.isOpened())
        {
            reauthorize(activitybase, ionauthorizecompletedlistener, 1);
            return;
        } else
        {
            authorize(activitybase, ionauthorizecompletedlistener, 1);
            return;
        }
    }

    public void authorize_publish(final ActivityBase activity, final IOnAuthorizeCompletedListener listener)
    {
        Runnable runnable = new Runnable() {

            final FacebookWrapper this$0;
            private final ActivityBase val$activity;
            private final IOnAuthorizeCompletedListener val$listener;

            public void run()
            {
                open(activity, AuthStateListner.create(listener, 4), true, false);
            }

            
            {
                this$0 = FacebookWrapper.this;
                activity = activitybase;
                listener = ionauthorizecompletedlistener;
                super();
            }
        };
        if (mFbPublishPermission != null)
        {
            runnable.run();
            return;
        } else
        {
            getFbPermissions(runnable, false, false);
            return;
        }
    }

    public void authorize_publish_stream(final ActivityBase activity, final IOnAuthorizeCompletedListener listener)
    {
        Runnable runnable = new Runnable() {

            final FacebookWrapper this$0;
            private final ActivityBase val$activity;
            private final IOnAuthorizeCompletedListener val$listener;

            public void run()
            {
                open(activity, AuthStateListner.create(listener, 8), false, true);
            }

            
            {
                this$0 = FacebookWrapper.this;
                activity = activitybase;
                listener = ionauthorizecompletedlistener;
                super();
            }
        };
        if (mFbPermissionsStream != null)
        {
            runnable.run();
            return;
        } else
        {
            getFbPermissions(runnable, false, true);
            return;
        }
    }

    public long getExpirationTime()
    {
        Session session1 = session();
        if (session1 != null)
        {
            return session1.getExpirationDate().getTime();
        } else
        {
            return 0L;
        }
    }

    public String getToken()
    {
        Session session1 = session();
        if (session1 != null)
        {
            return session1.getAccessToken();
        } else
        {
            return null;
        }
    }

    public boolean isSessionValid()
    {
        return session() != null && session().isOpened();
    }

    public void logout(Activity activity, OnLogoutCompletedListener onlogoutcompletedlistener)
    {
        Session session1 = session();
        if (session1 != null)
        {
            session1.addCallback(LogoutStateListener.create(onlogoutcompletedlistener));
            session1.close();
        } else
        if (onlogoutcompletedlistener != null)
        {
            onlogoutcompletedlistener.onLogoutCompleted();
            return;
        }
    }

    public void runFqlQuery(String s, com.facebook.Request.Callback callback)
    {
        Session session1 = session();
        if (session1 != null)
        {
            Bundle bundle = new Bundle();
            bundle.putString("q", s);
            Request.executeBatchAsync(new Request[] {
                new Request(session1, "/fql", bundle, HttpMethod.GET, callback)
            });
        }
    }

    public void updatePermissions(String as[])
    {
        mFbPermissions = Arrays.asList(as);
        savePermissions();
    }





}
