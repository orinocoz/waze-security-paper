// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class l
    implements Runnable
{

    final d a;
    private final int b;
    private final int c;

    l(d d1, int i, int j)
    {
        a = d1;
        b = i;
        c = j;
        super();
    }

    public void run()
    {
        d.a(a).a(b, c);
    }
}