// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import jp.pioneer.ce.aam2.AAM2Kit.b.a;
import jp.pioneer.ce.aam2.AAM2Kit.b.a.j;
import jp.pioneer.ce.aam2.AAM2Kit.b.a.k;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            a

class y
    implements ServiceConnection
{

    final jp.pioneer.ce.aam2.AAM2Kit.c.a a;

    y(jp.pioneer.ce.aam2.AAM2Kit.c.a a1)
    {
        a = a1;
        super();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        jp.pioneer.ce.aam2.AAM2Kit.c.a.a(a, true);
        if (ibinder == null)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        a.a = k.b(ibinder);
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a((new StringBuilder("onServiceConnected ")).append(componentname).append(",").append(jp.pioneer.ce.aam2.AAM2Kit.c.a.d(a)).toString());
        a.a.a(a.b, jp.pioneer.ce.aam2.AAM2Kit.c.a.d(a));
        a.a.a(a.c.getBinder(), jp.pioneer.ce.aam2.AAM2Kit.c.a.d(a));
        a.a.b(jp.pioneer.ce.aam2.AAM2Kit.c.a.d(a), "1.1.0");
        jp.pioneer.ce.aam2.AAM2Kit.c.a.e(a);
        if (jp.pioneer.ce.aam2.AAM2Kit.c.a.f(a) != null)
        {
            a.a(jp.pioneer.ce.aam2.AAM2Kit.c.a.f(a));
        }
        return;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        jp.pioneer.ce.aam2.AAM2Kit.c.a.a(a, false);
        a.a = null;
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a((new StringBuilder("onServiceDisconnected ")).append(componentname).append(",").append(jp.pioneer.ce.aam2.AAM2Kit.c.a.d(a)).toString());
        jp.pioneer.ce.aam2.AAM2Kit.c.a.g(a);
        if (jp.pioneer.ce.aam2.AAM2Kit.c.a.f(a) != null)
        {
            a.e(jp.pioneer.ce.aam2.AAM2Kit.c.a.f(a));
        }
    }
}
