// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import jp.pioneer.ce.aam2.AAM2Kit.b.a.c;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class p
    implements Runnable
{

    final d a;
    private final c b;

    p(d d1, c c)
    {
        a = d1;
        b = c;
        super();
    }

    public void run()
    {
        d.a(a).a(b);
    }
}
