// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.abaltatech.protocoldispatcher.IPProtocolDispatcher;
import com.abaltatech.protocoldispatcher.IPProtocolDispatcherNotification;
import com.abaltatech.weblinkserver.WLServerApp;
import jp.pioneer.ce.aam2.AAM2Kit.b.a;

public class WLPDWrapper
{

    private static final String INTENT_ACTION_BIND_PROTOCOL_DISPATCHER_SERVICE = "abaltatech.intent.action.bindProtocolDispatcherService";
    private boolean mBindService;
    private final IPProtocolDispatcherNotification m_notificationCallback = new _cls2();
    private IPProtocolDispatcher m_protocolDispatcherService;
    private ServiceConnection m_serviceConnection;

    public WLPDWrapper()
    {
        mBindService = false;
        m_serviceConnection = new _cls1();
    }

    public void connectProtocolDispatcher()
    {
        if (m_protocolDispatcherService == null)
        {
            ComponentName componentname = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "com.abaltatech.protocoldispatcher.ProtocolDispatcherService");
            Intent intent = new Intent("abaltatech.intent.action.bindProtocolDispatcherService");
            intent.setComponent(componentname);
            boolean flag = WLServerApp.getApplication().bindService(intent, m_serviceConnection, 65);
            a.a((new StringBuilder("isSuccess: ")).append(flag).toString());
            a.a("The Service will be connected soon (asynchronus call)!");
        } else
        if (!m_protocolDispatcherService.asBinder().pingBinder())
        {
            ComponentName componentname1 = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "com.abaltatech.protocoldispatcher.ProtocolDispatcherService");
            Intent intent1 = new Intent("abaltatech.intent.action.bindProtocolDispatcherService");
            intent1.setComponent(componentname1);
            boolean flag1 = WLServerApp.getApplication().bindService(intent1, m_serviceConnection, 65);
            a.a((new StringBuilder("DispatcherService.asBinder().pingBinder isSuccess: ")).append(flag1).toString());
            a.a("DispatcherService.asBinder().pingBinder The Service will be connected soon (asynchronus call)!");
            return;
        }
    }

    public void disconnectProtocolDispatcher()
    {
        if (m_protocolDispatcherService == null || !mBindService)
        {
            return;
        }
        try
        {
            m_protocolDispatcherService.unregisterNotificationListener(m_notificationCallback);
        }
        catch (RemoteException remoteexception)
        {
            a.a((new StringBuilder("onAn error occured during the call")).append(remoteexception).toString());
        }
        m_protocolDispatcherService = null;
        WLServerApp.getApplication().unbindService(m_serviceConnection);
        mBindService = false;
    }






    private class _cls1
        implements ServiceConnection
    {

        final WLPDWrapper this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            a.a("The PD service is now connected!");
            try
            {
                m_protocolDispatcherService = com.abaltatech.protocoldispatcher.IPProtocolDispatcher.Stub.asInterface(ibinder);
                m_protocolDispatcherService.registerNotificationListener(m_notificationCallback, Process.myPid());
                mBindService = true;
                return;
            }
            catch (RemoteException remoteexception)
            {
                a.a((new StringBuilder("An error occured during the call")).append(remoteexception).toString());
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            a.a("The connection to the PD service was closed !");
            ComponentName componentname1;
            Intent intent;
            try
            {
                m_protocolDispatcherService.unregisterNotificationListener(m_notificationCallback);
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
            m_protocolDispatcherService = null;
            mBindService = false;
            componentname1 = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "com.abaltatech.protocoldispatcher.ProtocolDispatcherService");
            intent = new Intent("abaltatech.intent.action.bindProtocolDispatcherService");
            intent.setComponent(componentname1);
            WLServerApp.getApplication().bindService(intent, m_serviceConnection, 65);
        }

        _cls1()
        {
            this$0 = WLPDWrapper.this;
            super();
        }
    }


    private class _cls2 extends com.abaltatech.protocoldispatcher.IPProtocolDispatcherNotification.Stub
    {

        final WLPDWrapper this$0;

        public void onApplicationActivated(int i)
        {
            int j = WLServer.getInstance().getListenPort();
            a.a((new StringBuilder("onApplicationActivated - Notification from Service, sessionID: ")).append(i).append(", port=").append(j).toString());
            m_protocolDispatcherService.setPortNumber(Process.myPid(), i, j);
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

        _cls2()
        {
            this$0 = WLPDWrapper.this;
            super();
        }
    }

}
