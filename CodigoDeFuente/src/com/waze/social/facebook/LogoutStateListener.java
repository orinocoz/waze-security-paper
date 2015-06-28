// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social.facebook;

import com.facebook.Session;
import com.facebook.SessionState;
import com.waze.Logger;

// Referenced classes of package com.waze.social.facebook:
//            FacebookWrapper

class LogoutStateListener
    implements com.facebook.Session.StatusCallback
{

    private FacebookWrapper mFb;
    private FacebookWrapper.OnLogoutCompletedListener mListener;

    public LogoutStateListener()
    {
        mListener = null;
        mFb = FacebookWrapper.getInstance();
    }

    public LogoutStateListener(FacebookWrapper.OnLogoutCompletedListener onlogoutcompletedlistener)
    {
        mListener = null;
        mFb = FacebookWrapper.getInstance();
        mListener = onlogoutcompletedlistener;
    }

    public static LogoutStateListener create()
    {
        return new LogoutStateListener();
    }

    public static LogoutStateListener create(FacebookWrapper.OnLogoutCompletedListener onlogoutcompletedlistener)
    {
        return new LogoutStateListener(onlogoutcompletedlistener);
    }

    public void call(Session session, SessionState sessionstate, Exception exception)
    {
        Logger.d_("FBWrapper", (new StringBuilder("Logout callback called with state: ")).append(sessionstate).append(". Exception: ").append(exception).toString());
        if (session.isClosed())
        {
            session.removeCallback(this);
            Session.setActiveSession(null);
            if (mListener != null)
            {
                mListener.onLogoutCompleted();
            }
        }
    }
}
