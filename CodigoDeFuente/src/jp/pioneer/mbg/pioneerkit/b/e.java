// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;


// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            d, a

class e
    implements Runnable
{

    final d a;
    private final int b;

    e(d d1, int i)
    {
        a = d1;
        b = i;
        super();
    }

    public void run()
    {
        d.a(a).a(b);
    }
}
