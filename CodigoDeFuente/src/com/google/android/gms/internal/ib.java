// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ib
    implements android.os.Parcelable.Creator
{

    public ib()
    {
    }

    static void a(ic.b b1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.c(parcel, 1, b1.versionCode);
        b.a(parcel, 2, b1.eM, false);
        b.a(parcel, 3, b1.Hm, i, false);
        b.G(parcel, j);
    }

    public ic.b I(Parcel parcel)
    {
        hz.a a1 = null;
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
                    a1 = (hz.a)com.google.android.gms.common.internal.safeparcel.a.a(parcel, k, hz.a.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ic.b(j, s, a1);
            }
        } while (true);
    }

    public ic.b[] ax(int i)
    {
        return new ic.b[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return I(parcel);
    }

    public Object[] newArray(int i)
    {
        return ax(i);
    }
}
