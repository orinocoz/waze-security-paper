// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;


// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            d, a

class i
    implements Runnable
{

    final d a;
    private final byte b;
    private final byte c[];

    i(d d1, byte byte0, byte abyte0[])
    {
        a = d1;
        b = byte0;
        c = abyte0;
        super();
    }

    public void run()
    {
        d.a(a).a(b, c);
    }
}
