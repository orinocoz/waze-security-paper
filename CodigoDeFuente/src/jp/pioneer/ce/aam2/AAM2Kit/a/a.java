// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.a;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import com.abaltatech.protocoldispatcher.IPProtocolDispatcherPrivate;
import com.abaltatech.weblinkserver.WLServerApp;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.a:
//            b

public class a
{

    private static a c = null;
    boolean a;
    private boolean b;
    private IPProtocolDispatcherPrivate d;
    private ServiceConnection e;

    public a()
    {
        b = false;
        a = false;
        e = new b(this);
    }

    static IPProtocolDispatcherPrivate a(a a1)
    {
        return a1.d;
    }

    public static a a()
    {
        if (c == null)
        {
            c = new a();
        }
        return c;
    }

    static void a(a a1, IPProtocolDispatcherPrivate ipprotocoldispatcherprivate)
    {
        a1.d = ipprotocoldispatcherprivate;
    }

    static void a(a a1, boolean flag)
    {
        a1.b = flag;
    }

    static ServiceConnection b(a a1)
    {
        return a1.e;
    }

    public void b()
    {
        if (b)
        {
            return;
        } else
        {
            ComponentName componentname = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "com.abaltatech.protocoldispatcher.ProtocolDispatcherService");
            Intent intent = new Intent("abaltatech.intent.action.bindProtocolDispatcherPrivateService");
            intent.setComponent(componentname);
            WLServerApp.getApplication().bindService(intent, e, 1);
            return;
        }
    }

}
