// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            fs, fj, fh

public class ft
    implements android.os.Parcelable.Creator
{

    public ft()
    {
    }

    static void a(fs fs1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.a(parcel, 1, fs1.yn, i, false);
        b.c(parcel, 1000, fs1.xJ);
        b.a(parcel, 2, fs1.yo);
        b.c(parcel, 3, fs1.yp);
        b.a(parcel, 4, fs1.mN, false);
        b.a(parcel, 5, fs1.yq, i, false);
        b.G(parcel, j);
    }

    public fs[] K(int i)
    {
        return new fs[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return q(parcel);
    }

    public Object[] newArray(int i)
    {
        return K(i);
    }

    public fs q(Parcel parcel)
    {
        int i = 0;
        fh fh1 = null;
        int j = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        long l = 0L;
        String s = null;
        fj fj1 = null;
        int k = 0;
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
                    fj1 = (fj)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, fj.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, i1);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, i1);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, i1);
                    break;

                case 5: // '\005'
                    fh1 = (fh)com.google.android.gms.common.internal.safeparcel.a.a(parcel, i1, fh.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new fs(k, fj1, l, i, s, fh1);
            }
        } while (true);
    }
}
