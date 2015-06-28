// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import jp.pioneer.ce.aam2.AAM2Kit.AAM2MainUnitSpecInfo;
import jp.pioneer.ce.aam2.AAM2Kit.b.a.a;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class w
    implements Runnable
{

    final d a;
    private final a b;

    w(d d1, a a1)
    {
        a = d1;
        b = a1;
        super();
    }

    public void run()
    {
        if (b == null)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.a(jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a), jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e);
            return;
        }
        if (jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e == null)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e = new AAM2MainUnitSpecInfo();
        }
        jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e.a(b.a());
        jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e.c(b.c());
        jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e.b(b.b());
        jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e.d(b.d());
        jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e.e(b.e());
        jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e.f(b.f());
        jp.pioneer.ce.aam2.AAM2Kit.c.a.a(jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a), jp.pioneer.ce.aam2.AAM2Kit.c.d.a(a).e);
    }
}
