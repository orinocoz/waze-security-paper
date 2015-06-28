// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;

import jp.pioneer.mbg.pioneerkit.a.a.c;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            d, a

class l
    implements Runnable
{

    final d a;
    private final c b;

    l(d d1, c c)
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
