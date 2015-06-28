// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.Parcel;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.a:
//            a

class b
    implements android.os.Parcelable.Creator
{

    b()
    {
    }

    public a a(Parcel parcel)
    {
        a a1 = new a();
        a1.a = parcel.readInt();
        a1.b = parcel.readInt();
        a1.c = parcel.readInt();
        a1.d = parcel.readInt();
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a.a(a1, parcel.readInt());
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a.b(a1, parcel.readInt());
        return a1;
    }

    public a[] a(int i)
    {
        return new a[i];
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
