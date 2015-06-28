// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.a;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import com.abaltatech.protocoldispatcher.IPProtocolDispatcherPrivate;
import com.abaltatech.weblinkserver.WLServerApp;
import jp.pioneer.ce.aam2.AAM2Kit.b.a;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.a:
//            a

class b
    implements ServiceConnection
{

    final jp.pioneer.ce.aam2.AAM2Kit.a.a a;

    b(jp.pioneer.ce.aam2.AAM2Kit.a.a a1)
    {
        a = a1;
        super();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        jp.pioneer.ce.aam2.AAM2Kit.a.a.a(a, com.abaltatech.protocoldispatcher.IPProtocolDispatcherPrivate.Stub.asInterface(ibinder));
        jp.pioneer.ce.aam2.AAM2Kit.a.a.a(a, true);
        if (a.a)
        {
            if (jp.pioneer.ce.aam2.AAM2Kit.a.a.a(a) != null)
            {
                try
                {
                    int i = Process.myPid();
                    jp.pioneer.ce.aam2.AAM2Kit.a.a.a(a).setActiveApp(i);
                }
                catch (RemoteException remoteexception)
                {
                    jp.pioneer.ce.aam2.AAM2Kit.b.a.a("An error occured during the call", remoteexception);
                }
            }
            a.a = false;
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        jp.pioneer.ce.aam2.AAM2Kit.a.a.a(a, null);
        jp.pioneer.ce.aam2.AAM2Kit.a.a.a(a, false);
        ComponentName componentname1 = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "com.abaltatech.protocoldispatcher.ProtocolDispatcherService");
        Intent intent = new Intent("abaltatech.intent.action.bindProtocolDispatcherPrivateService");
        intent.setComponent(componentname1);
        WLServerApp.getApplication().bindService(intent, jp.pioneer.ce.aam2.AAM2Kit.a.a.b(a), 1);
    }
}
