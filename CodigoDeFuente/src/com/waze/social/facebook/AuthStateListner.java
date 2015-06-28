// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social.facebook;

import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.SessionState;
import com.waze.Logger;

// Referenced classes of package com.waze.social.facebook:
//            FacebookWrapper

class AuthStateListner
    implements com.facebook.Session.StatusCallback
{

    private int mAuthAction;
    private final FacebookWrapper mFb;
    private FacebookWrapper.IOnAuthorizeCompletedListener mListener;

    public AuthStateListner()
    {
        mListener = null;
        mAuthAction = 3;
        mFb = FacebookWrapper.getInstance();
    }

    public AuthStateListner(FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener)
    {
        mListener = null;
        mAuthAction = 3;
        mFb = FacebookWrapper.getInstance();
        mListener = ionauthorizecompletedlistener;
    }

    public AuthStateListner(FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener, int i)
    {
        mListener = null;
        mAuthAction = 3;
        mFb = FacebookWrapper.getInstance();
        mListener = ionauthorizecompletedlistener;
        mAuthAction = i;
    }

    private void callback(Session session, boolean flag, int i)
    {
        mFb.applyAuthAction(session, mAuthAction, flag, i);
        if (mListener != null)
        {
            mListener.onAuthorizeCompleted(flag, i);
        }
    }

    public static AuthStateListner create()
    {
        return new AuthStateListner();
    }

    public static AuthStateListner create(FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener)
    {
        return new AuthStateListner(ionauthorizecompletedlistener);
    }

    public static AuthStateListner create(FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener, int i)
    {
        return new AuthStateListner(ionauthorizecompletedlistener, i);
    }

    public void addAction(int i)
    {
        mAuthAction = i | mAuthAction;
    }

    public void call(Session session, SessionState sessionstate, Exception exception)
    {
        Logger.d_("FBWrapper", (new StringBuilder("AuthState callback called with state: ")).append(sessionstate).append(". Exception: ").append(exception).toString());
        if (exception == null)
        {
            if (session.isOpened())
            {
                callback(session, true, 0);
            }
        } else
        if (exception instanceof FacebookOperationCanceledException)
        {
            callback(session, false, 3);
        } else
        {
            callback(session, false, 1);
        }
        if (sessionstate.isClosed())
        {
            Session.setActiveSession(null);
        }
        if (sessionstate.isOpened() || sessionstate.isClosed())
        {
            session.removeCallback(this);
        }
    }

    public FacebookWrapper.IOnAuthorizeCompletedListener getListener()
    {
        return mListener;
    }
}
