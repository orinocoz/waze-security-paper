// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.Parcel;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.a:
//            e

class f
    implements android.os.Parcelable.Creator
{

    f()
    {
    }

    public e a(Parcel parcel)
    {
        e e1 = new e();
        e1.a = parcel.readInt();
        e1.b = parcel.readInt();
        return e1;
    }

    public e[] a(int i)
    {
        return new e[i];
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
