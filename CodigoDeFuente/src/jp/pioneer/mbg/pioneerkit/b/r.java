// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;

import jp.pioneer.mbg.pioneerkit.ExtDeviceSpecInfo;
import jp.pioneer.mbg.pioneerkit.a.a.a;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            d, a

class r
    implements Runnable
{

    final d a;
    private final a b;

    r(d d1, a a1)
    {
        a = d1;
        b = a1;
        super();
    }

    public void run()
    {
        if (b == null)
        {
            jp.pioneer.mbg.pioneerkit.b.a.a(jp.pioneer.mbg.pioneerkit.b.d.a(a), jp.pioneer.mbg.pioneerkit.b.d.a(a).e);
            return;
        }
        if (jp.pioneer.mbg.pioneerkit.b.d.a(a).e == null)
        {
            jp.pioneer.mbg.pioneerkit.b.d.a(a).e = new ExtDeviceSpecInfo();
        }
        jp.pioneer.mbg.pioneerkit.b.d.a(a).e.a(b.a());
        jp.pioneer.mbg.pioneerkit.b.d.a(a).e.c(b.c());
        jp.pioneer.mbg.pioneerkit.b.d.a(a).e.b(b.b());
        jp.pioneer.mbg.pioneerkit.b.d.a(a).e.d(b.d());
        jp.pioneer.mbg.pioneerkit.b.d.a(a).e.e(b.e());
        jp.pioneer.mbg.pioneerkit.b.a.a(jp.pioneer.mbg.pioneerkit.b.d.a(a), jp.pioneer.mbg.pioneerkit.b.d.a(a).e);
    }
}
