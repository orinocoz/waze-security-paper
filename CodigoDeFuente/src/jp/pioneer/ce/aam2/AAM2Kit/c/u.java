// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class u
    implements Runnable
{

    final d a;
    private final int b;

    u(d d1, int i)
    {
        a = d1;
        b = i;
        super();
    }

    public void run()
    {
        jp.pioneer.ce.aam2.AAM2Kit.c.a.a(d.a(a), b);
    }
}