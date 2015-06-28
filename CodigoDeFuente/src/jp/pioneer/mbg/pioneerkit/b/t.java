// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import jp.pioneer.mbg.pioneerkit.a.a;
import jp.pioneer.mbg.pioneerkit.a.a.j;
import jp.pioneer.mbg.pioneerkit.a.a.k;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            a

class t
    implements ServiceConnection
{

    final jp.pioneer.mbg.pioneerkit.b.a a;

    t(jp.pioneer.mbg.pioneerkit.b.a a1)
    {
        a = a1;
        super();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        jp.pioneer.mbg.pioneerkit.b.a.a(a, true);
        if (ibinder == null)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        a.a = k.b(ibinder);
        jp.pioneer.mbg.pioneerkit.a.a.a((new StringBuilder("onServiceConnected ")).append(componentname).append(",").append(jp.pioneer.mbg.pioneerkit.b.a.d(a)).toString());
        a.a.a(a.b, jp.pioneer.mbg.pioneerkit.b.a.d(a));
        a.a.a(a.c.getBinder(), jp.pioneer.mbg.pioneerkit.b.a.d(a));
        jp.pioneer.mbg.pioneerkit.b.a.e(a);
        if (jp.pioneer.mbg.pioneerkit.b.a.f(a) != null)
        {
            a.a(jp.pioneer.mbg.pioneerkit.b.a.f(a));
        }
        return;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        jp.pioneer.mbg.pioneerkit.b.a.a(a, false);
        a.a = null;
        jp.pioneer.mbg.pioneerkit.a.a.a((new StringBuilder("onServiceDisconnected ")).append(componentname).append(",").append(jp.pioneer.mbg.pioneerkit.b.a.d(a)).toString());
        jp.pioneer.mbg.pioneerkit.b.a.g(a);
        if (jp.pioneer.mbg.pioneerkit.b.a.f(a) != null)
        {
            a.e(jp.pioneer.mbg.pioneerkit.b.a.f(a));
        }
    }
}
