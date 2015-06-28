// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class q
    implements Runnable
{

    final d a;
    private final byte b[];

    q(d d1, byte abyte0[])
    {
        a = d1;
        b = abyte0;
        super();
    }

    public void run()
    {
        jp.pioneer.ce.aam2.AAM2Kit.c.a.b(d.a(a), b);
    }
}
