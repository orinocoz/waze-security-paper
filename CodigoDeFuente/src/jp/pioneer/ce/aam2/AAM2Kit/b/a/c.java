// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.a:
//            d

public class c
    implements Parcelable
{

    public static final android.os.Parcelable.Creator b = new d();
    byte a;
    private double c;
    private double d;
    private boolean e;
    private double f;
    private boolean g;
    private float h;
    private boolean i;
    private float j;
    private boolean k;
    private byte l;
    private long m;

    public c()
    {
        c = 0.0D;
        d = 0.0D;
        e = false;
        f = 0.0D;
        g = false;
        h = 0.0F;
        i = false;
        j = 0.0F;
        k = false;
        l = 0;
        m = 0L;
        a = 0;
    }

    static void a(c c1, byte byte0)
    {
        c1.l = byte0;
    }

    static void a(c c1, double d1)
    {
        c1.c = d1;
    }

    static void a(c c1, float f1)
    {
        c1.j = f1;
    }

    static void a(c c1, long l1)
    {
        c1.m = l1;
    }

    static void b(c c1, double d1)
    {
        c1.d = d1;
    }

    static void b(c c1, float f1)
    {
        c1.h = f1;
    }

    static void c(c c1, double d1)
    {
        c1.f = d1;
    }

    public long a()
    {
        return m;
    }

    public byte b()
    {
        return a;
    }

    public double c()
    {
        return c;
    }

    public double d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public double e()
    {
        return f;
    }

    public float f()
    {
        return h;
    }

    public float g()
    {
        return j;
    }

    public byte h()
    {
        return l;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        parcel.writeDouble(c);
        parcel.writeDouble(d);
        parcel.writeDouble(f);
        parcel.writeFloat(j);
        parcel.writeFloat(h);
        parcel.writeByte(a);
        parcel.writeLong(m);
        parcel.writeByte(l);
    }

}
