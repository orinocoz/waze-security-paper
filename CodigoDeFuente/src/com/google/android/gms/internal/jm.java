// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jl, jn

public class jm
    implements android.os.Parcelable.Creator
{

    public jm()
    {
    }

    static void a(jl jl1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.c(parcel, 1, jl1.iX());
        b.c(parcel, 1000, jl1.getVersionCode());
        b.c(parcel, 2, jl1.iZ());
        b.a(parcel, 3, jl1.ja(), i, false);
        b.G(parcel, j);
    }

    public jl bu(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        int k = -1;
        jn jn1 = null;
        int l = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.a.A(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.ar(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, i1);
                    break;

                case 1: // '\001'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 1000: 
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 3: // '\003'
                    jn1 = (jn)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, jn.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new jl(l, i, k, jn1);
            }
        } while (true);
    }

    public jl[] cP(int i)
    {
        return new jl[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bu(parcel);
    }

    public Object[] newArray(int i)
    {
        return cP(i);
    }
}
