// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher;

import com.abaltatech.weblinkserver.WLServer;
import com.abaltatech.weblinkserver.WLServerApp;
import jp.pioneer.ce.aam2.AAM2Kit.b.a;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher:
//            WLPDWrapper

public class AAM2ServerApp extends WLServerApp
    implements com.abaltatech.weblinkserver.WLServer.IServerReadyListener
{

    public static final String SERVER_ID = "aam2serverapp://";
    public static final String SERVER_NAME = "AAM2ServerApp";
    public static final int SERVER_PORT = 0;
    public static final String TAG = "AAM2ServerAppTAG";
    private final WLPDWrapper m_pdWrapper = new WLPDWrapper();

    public AAM2ServerApp()
    {
        WLServerApp.setMode(1);
    }

    public void connectToPDService()
    {
        m_pdWrapper.connectProtocolDispatcher();
    }

    public void disconnectFromPDService()
    {
        m_pdWrapper.disconnectProtocolDispatcher();
    }

    public void onCreate()
    {
        super.onCreate();
    }

    public void onServerReady()
    {
label0:
        {
            WLServer wlserver = WLServer.getInstance();
            if (wlserver != null)
            {
                wlserver.setIsBroadcastingEnabled(false);
                wlserver.setServerReadyListener(null);
                if (wlserver.start("AAM2ServerApp", "aam2serverapp://", 0, null, null))
                {
                    break label0;
                }
                a.a("server.start fail!!!");
            }
            return;
        }
        m_pdWrapper.connectProtocolDispatcher();
    }

    public void startWLServer()
    {
label0:
        {
            WLServer wlserver = WLServer.getInstance();
            if (wlserver != null)
            {
                if (wlserver.isStarted())
                {
                    break label0;
                }
                wlserver.setServerReadyListener(this);
            }
            return;
        }
        m_pdWrapper.connectProtocolDispatcher();
    }

    public void stopWLServer()
    {
        m_pdWrapper.disconnectProtocolDispatcher();
        WLServer wlserver = WLServer.getInstance();
        if (wlserver != null)
        {
            wlserver.setServerReadyListener(null);
            wlserver.stop();
        }
    }
}
