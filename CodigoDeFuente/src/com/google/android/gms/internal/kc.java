// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            kb

public class kc
    implements android.os.Parcelable.Creator
{

    public kc()
    {
    }

    static void a(kb kb1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.a(parcel, 1, kb1.YS, false);
        b.c(parcel, 1000, kb1.versionCode);
        b.a(parcel, 2, kb1.YT, false);
        b.G(parcel, j);
    }

    public kb bB(Parcel parcel)
    {
        String s = null;
        int i = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        int j = 0;
        String s1 = null;
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
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 1000: 
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new kb(j, s1, s);
            }
        } while (true);
    }

    public kb[] cW(int i)
    {
        return new kb[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bB(parcel);
    }

    public Object[] newArray(int i)
    {
        return cW(i);
    }
}
