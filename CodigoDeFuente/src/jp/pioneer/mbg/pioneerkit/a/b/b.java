// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a.b;

import android.os.Handler;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.a.b:
//            c

public class b
{

    private static String a = "EventProcess";
    private static b b = null;
    private c c;
    private Handler d;

    public b()
    {
        c = null;
        d = null;
    }

    public static b a()
    {
        jp/pioneer/mbg/pioneerkit/a/b/b;
        JVM INSTR monitorenter ;
        b b1;
        if (b == null)
        {
            b = new b();
            b.c();
        }
        b1 = b;
        jp/pioneer/mbg/pioneerkit/a/b/b;
        JVM INSTR monitorexit ;
        return b1;
        Exception exception;
        exception;
        throw exception;
    }

    private void c()
    {
        c = new c(a);
        c.start();
        d = c.a();
    }

    public Handler b()
    {
        if (d == null)
        {
            throw new IllegalStateException("EventProcessManager has not been init!");
        } else
        {
            return d;
        }
    }

}
