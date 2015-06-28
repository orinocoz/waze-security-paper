// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import android.os.Handler;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
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
        if (!jp.pioneer.ce.aam2.AAM2Kit.c.a.a(a))
        {
            a.a();
            jp.pioneer.ce.aam2.AAM2Kit.c.a.b(a).postDelayed(jp.pioneer.ce.aam2.AAM2Kit.c.a.c(a), 5000L);
        }
    }
}
