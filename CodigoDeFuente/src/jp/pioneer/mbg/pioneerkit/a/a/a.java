// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a.a;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.a.a:
//            b

public class a
    implements Parcelable
{

    public static final android.os.Parcelable.Creator e = new b();
    public int a;
    public int b;
    public int c;
    public int d;
    private int f;

    public a()
    {
        a = 0;
        f = 0;
    }

    static void a(a a1, int i)
    {
        a1.f = i;
    }

    public int a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public int c()
    {
        return c;
    }

    public int d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public int e()
    {
        return f;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(a);
        parcel.writeInt(b);
        parcel.writeInt(c);
        parcel.writeInt(d);
        parcel.writeInt(f);
    }

}
