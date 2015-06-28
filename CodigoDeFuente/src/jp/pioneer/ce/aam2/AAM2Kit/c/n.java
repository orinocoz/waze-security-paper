// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class n
    implements Runnable
{

    final d a;
    private final boolean b;

    n(d d1, boolean flag)
    {
        a = d1;
        b = flag;
        super();
    }

    public void run()
    {
        d.a(a).c(b);
    }
}
