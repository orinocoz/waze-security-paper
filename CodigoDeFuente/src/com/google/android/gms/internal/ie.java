// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ie
    implements android.os.Parcelable.Creator
{

    public ie()
    {
    }

    static void a(ic.a a1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.c(parcel, 1, a1.versionCode);
        b.a(parcel, 2, a1.className, false);
        b.b(parcel, 3, a1.Hl, false);
        b.G(parcel, j);
    }

    public ic.a K(Parcel parcel)
    {
        java.util.ArrayList arraylist = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        int j = 0;
        String s = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int k = com.google.android.gms.common.internal.safeparcel.a.A(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.ar(k))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, k);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.c(parcel, k, ic.b.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ic.a(j, s, arraylist);
            }
        } while (true);
    }

    public ic.a[] az(int i)
    {
        return new ic.a[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return K(parcel);
    }

    public Object[] newArray(int i)
    {
        return az(i);
    }
}
