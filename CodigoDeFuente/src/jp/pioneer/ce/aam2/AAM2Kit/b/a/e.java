// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.a:
//            f

public class e
    implements Parcelable
{

    public static final android.os.Parcelable.Creator c = new f();
    public int a;
    public int b;

    public e()
    {
        a = 0;
        b = 0;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(a);
        parcel.writeInt(b);
    }

}
