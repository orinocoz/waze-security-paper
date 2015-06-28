// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import com.abaltatech.protocoldispatcher.IPProtocolDispatcher;
import com.abaltatech.weblinkserver.WLServerApp;
import jp.pioneer.ce.aam2.AAM2Kit.b.a;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher:
//            WLPDWrapper

class this._cls0
    implements ServiceConnection
{

    final WLPDWrapper this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        a.a("The PD service is now connected!");
        try
        {
            WLPDWrapper.access$0(WLPDWrapper.this, com.abaltatech.protocoldispatcher.atcher.Stub.asInterface(ibinder));
            WLPDWrapper.access$1(WLPDWrapper.this).registerNotificationListener(WLPDWrapper.access$2(WLPDWrapper.this), Process.myPid());
            WLPDWrapper.access$3(WLPDWrapper.this, true);
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
            WLPDWrapper.access$1(WLPDWrapper.this).unregisterNotificationListener(WLPDWrapper.access$2(WLPDWrapper.this));
        }
        catch (RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
        }
        WLPDWrapper.access$0(WLPDWrapper.this, null);
        WLPDWrapper.access$3(WLPDWrapper.this, false);
        componentname1 = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "com.abaltatech.protocoldispatcher.ProtocolDispatcherService");
        intent = new Intent("abaltatech.intent.action.bindProtocolDispatcherService");
        intent.setComponent(componentname1);
        WLServerApp.getApplication().bindService(intent, WLPDWrapper.access$4(WLPDWrapper.this), 65);
    }

    ()
    {
        this$0 = WLPDWrapper.this;
        super();
    }
}
