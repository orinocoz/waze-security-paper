// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher;

import android.os.Process;
import com.abaltatech.protocoldispatcher.IPProtocolDispatcher;
import com.abaltatech.weblinkserver.WLServer;
import jp.pioneer.ce.aam2.AAM2Kit.b.a;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher:
//            WLPDWrapper

class ication.Stub extends com.abaltatech.protocoldispatcher.atcherNotification.Stub
{

    final WLPDWrapper this$0;

    public void onApplicationActivated(int i)
    {
        int j = WLServer.getInstance().getListenPort();
        a.a((new StringBuilder("onApplicationActivated - Notification from Service, sessionID: ")).append(i).append(", port=").append(j).toString());
        WLPDWrapper.access$1(WLPDWrapper.this).setPortNumber(Process.myPid(), i, j);
    }

    public void onApplicationDeactivated()
    {
        a.a("onApplicationDeactivated - Notification from Service");
    }

    public void onApplicationPaused()
    {
        a.a("onApplicationPaused - Notification from Service");
    }

    public void onApplicationResumed()
    {
        a.a("onApplicationResumed - Notification from Service");
    }

    public void onLoggingChanged(boolean flag)
    {
        WLServer.getInstance().setLoggingEnabled(flag);
        a.a("onLoggingChanged - Notification from Service");
    }

    public void onVideoChannelClosed()
    {
        a.a("onVideoChannelClosed - Notification from Service");
    }

    public void onVideoChannelReady()
    {
        a.a("onVideoChannelReady - Notification from Service");
    }

    ication.Stub()
    {
        this$0 = WLPDWrapper.this;
        super();
    }
}
