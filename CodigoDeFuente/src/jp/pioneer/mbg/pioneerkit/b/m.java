// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;


// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            d, a

class m
    implements Runnable
{

    final d a;
    private final boolean b;

    m(d d1, boolean flag)
    {
        a = d1;
        b = flag;
        super();
    }

    public void run()
    {
        d.a(a).a(b);
    }
}
