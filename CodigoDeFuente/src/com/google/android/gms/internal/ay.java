// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ax

public class ay
    implements android.os.Parcelable.Creator
{

    public ay()
    {
    }

    static void a(ax ax1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.c(parcel, 1, ax1.versionCode);
        b.c(parcel, 2, ax1.mB);
        b.c(parcel, 3, ax1.backgroundColor);
        b.c(parcel, 4, ax1.mC);
        b.c(parcel, 5, ax1.mD);
        b.c(parcel, 6, ax1.mE);
        b.c(parcel, 7, ax1.mF);
        b.c(parcel, 8, ax1.mG);
        b.c(parcel, 9, ax1.mH);
        b.a(parcel, 10, ax1.mI, false);
        b.c(parcel, 11, ax1.mJ);
        b.a(parcel, 12, ax1.mK, false);
        b.c(parcel, 13, ax1.mL);
        b.c(parcel, 14, ax1.mM);
        b.a(parcel, 15, ax1.mN, false);
        b.G(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return d(parcel);
    }

    public ax d(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        int j = 0;
        int k = 0;
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        int k1 = 0;
        int l1 = 0;
        int i2 = 0;
        int j2 = 0;
        String s = null;
        int k2 = 0;
        String s1 = null;
        int l2 = 0;
        int i3 = 0;
        String s2 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.ar(j3))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j3);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 2: // '\002'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 3: // '\003'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 4: // '\004'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 5: // '\005'
                    j1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 6: // '\006'
                    k1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 7: // '\007'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 8: // '\b'
                    i2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 9: // '\t'
                    j2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 10: // '\n'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j3);
                    break;

                case 11: // '\013'
                    k2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 12: // '\f'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j3);
                    break;

                case 13: // '\r'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 14: // '\016'
                    i3 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j3);
                    break;

                case 15: // '\017'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j3);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ax(j, k, l, i1, j1, k1, l1, i2, j2, s, k2, s1, l2, i3, s2);
            }
        } while (true);
    }

    public ax[] f(int i)
    {
        return new ax[i];
    }

    public Object[] newArray(int i)
    {
        return f(i);
    }
}
