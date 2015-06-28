// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;

import android.os.Handler;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            a

class b
    implements Runnable
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void run()
    {
        if (!jp.pioneer.mbg.pioneerkit.b.a.a(a))
        {
            a.a();
            jp.pioneer.mbg.pioneerkit.b.a.b(a).postDelayed(jp.pioneer.mbg.pioneerkit.b.a.c(a), 5000L);
        }
    }
}
