// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a.a;

import android.os.Parcel;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.a.a:
//            c

class d
    implements android.os.Parcelable.Creator
{

    d()
    {
    }

    public c a(Parcel parcel)
    {
        c c1 = new c();
        c.a(c1, parcel.readDouble());
        c.b(c1, parcel.readDouble());
        c.c(c1, parcel.readDouble());
        c.a(c1, parcel.readFloat());
        c.b(c1, parcel.readFloat());
        c1.a = parcel.readByte();
        c.a(c1, parcel.readLong());
        return c1;
    }

    public c[] a(int i)
    {
        return new c[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }
}
