// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            ci, cf, ew, w

public class ch
    implements android.os.Parcelable.Creator
{

    public ch()
    {
    }

    static void a(ci ci1, Parcel parcel, int i)
    {
        int k = b.C(parcel);
        b.c(parcel, 1, ci1.versionCode);
        b.a(parcel, 2, ci1.ot, i, false);
        b.a(parcel, 3, ci1.aP(), false);
        b.a(parcel, 4, ci1.aQ(), false);
        b.a(parcel, 5, ci1.aR(), false);
        b.a(parcel, 6, ci1.aS(), false);
        b.a(parcel, 7, ci1.oy, false);
        b.a(parcel, 8, ci1.oz);
        b.a(parcel, 9, ci1.oA, false);
        b.a(parcel, 10, ci1.aU(), false);
        b.c(parcel, 11, ci1.orientation);
        b.c(parcel, 12, ci1.oC);
        b.a(parcel, 13, ci1.nZ, false);
        b.a(parcel, 14, ci1.kO, i, false);
        b.a(parcel, 15, ci1.aT(), false);
        b.a(parcel, 17, ci1.oF, i, false);
        b.a(parcel, 16, ci1.oE, false);
        b.G(parcel, k);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return f(parcel);
    }

    public ci f(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        int k = 0;
        cf cf1 = null;
        android.os.IBinder ibinder = null;
        android.os.IBinder ibinder1 = null;
        android.os.IBinder ibinder2 = null;
        android.os.IBinder ibinder3 = null;
        String s = null;
        boolean flag = false;
        String s1 = null;
        android.os.IBinder ibinder4 = null;
        int l = 0;
        int i1 = 0;
        String s2 = null;
        ew ew1 = null;
        android.os.IBinder ibinder5 = null;
        String s3 = null;
        w w1 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.A(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.ar(j1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    cf1 = (cf)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, cf.CREATOR);
                    break;

                case 3: // '\003'
                    ibinder = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 4: // '\004'
                    ibinder1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 5: // '\005'
                    ibinder2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 6: // '\006'
                    ibinder3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 7: // '\007'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 10: // '\n'
                    ibinder4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 11: // '\013'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 12: // '\f'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 14: // '\016'
                    ew1 = (ew)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, ew.CREATOR);
                    break;

                case 15: // '\017'
                    ibinder5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, j1);
                    break;

                case 17: // '\021'
                    w1 = (w)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, w.CREATOR);
                    break;

                case 16: // '\020'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new ci(k, cf1, ibinder, ibinder1, ibinder2, ibinder3, s, flag, s1, ibinder4, l, i1, s2, ew1, ibinder5, s3, w1);
            }
        } while (true);
    }

    public ci[] j(int i)
    {
        return new ci[i];
    }

    public Object[] newArray(int i)
    {
        return j(i);
    }
}
