// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;


// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class h
    implements Runnable
{

    final d a;
    private final byte b;
    private final long c;

    h(d d1, byte byte0, long l)
    {
        a = d1;
        b = byte0;
        c = l;
        super();
    }

    public void run()
    {
        d.a(a).a(b, c);
    }
}
