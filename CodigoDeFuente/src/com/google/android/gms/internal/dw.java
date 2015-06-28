// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            dv

public class dw
    implements android.os.Parcelable.Creator
{

    public dw()
    {
    }

    static void a(dv dv1, Parcel parcel, int j)
    {
        int k = b.C(parcel);
        b.c(parcel, 1, dv1.versionCode);
        b.a(parcel, 2, dv1.oy, false);
        b.a(parcel, 3, dv1.qb, false);
        b.a(parcel, 4, dv1.nr, false);
        b.c(parcel, 5, dv1.errorCode);
        b.a(parcel, 6, dv1.ns, false);
        b.a(parcel, 7, dv1.qc);
        b.a(parcel, 8, dv1.qd);
        b.a(parcel, 9, dv1.qe);
        b.a(parcel, 10, dv1.qf, false);
        b.a(parcel, 11, dv1.nv);
        b.c(parcel, 12, dv1.orientation);
        b.a(parcel, 13, dv1.qg, false);
        b.a(parcel, 14, dv1.qh);
        b.a(parcel, 15, dv1.qi, false);
        b.a(parcel, 19, dv1.qk, false);
        b.a(parcel, 18, dv1.qj);
        b.a(parcel, 21, dv1.ql, false);
        b.G(parcel, k);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return i(parcel);
    }

    public dv i(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        int k = 0;
        String s = null;
        String s1 = null;
        java.util.ArrayList arraylist = null;
        int l = 0;
        java.util.ArrayList arraylist1 = null;
        long l1 = 0L;
        boolean flag = false;
        long l2 = 0L;
        java.util.ArrayList arraylist2 = null;
        long l3 = 0L;
        int i1 = 0;
        String s2 = null;
        long l4 = 0L;
        String s3 = null;
        boolean flag1 = false;
        String s4 = null;
        String s5 = null;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.a.A(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.ar(j1))
                {
                case 16: // '\020'
                case 17: // '\021'
                case 20: // '\024'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, j1);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 3: // '\003'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 4: // '\004'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.B(parcel, j1);
                    break;

                case 5: // '\005'
                    l = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 6: // '\006'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.B(parcel, j1);
                    break;

                case 7: // '\007'
                    l1 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 8: // '\b'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    l2 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 10: // '\n'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.B(parcel, j1);
                    break;

                case 11: // '\013'
                    l3 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 12: // '\f'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 13: // '\r'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 14: // '\016'
                    l4 = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 15: // '\017'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 19: // '\023'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 18: // '\022'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 21: // '\025'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new dv(k, s, s1, arraylist, l, arraylist1, l1, flag, l2, arraylist2, l3, i1, s2, l4, s3, flag1, s4, s5);
            }
        } while (true);
    }

    public dv[] n(int j)
    {
        return new dv[j];
    }

    public Object[] newArray(int j)
    {
        return n(j);
    }
}
