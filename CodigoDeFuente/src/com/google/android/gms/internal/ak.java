// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            aj, ax

public class ak
    implements android.os.Parcelable.Creator
{

    public ak()
    {
    }

    static void a(aj aj1, Parcel parcel, int i)
    {
        int j = com.google.android.gms.common.internal.safeparcel.b.C(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, aj1.versionCode);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, aj1.lQ);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, aj1.extras, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, aj1.lR);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, aj1.lS, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, aj1.lT);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 7, aj1.lU);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, aj1.lV);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, aj1.lW, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, aj1.lX, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, aj1.lY, i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, aj1.lZ, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, aj1.ma, false);
        com.google.android.gms.common.internal.safeparcel.b.G(parcel, j);
    }

    public aj b(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        int j = 0;
        long l = 0L;
        android.os.Bundle bundle = null;
        int k = 0;
        java.util.ArrayList arraylist = null;
        boolean flag = false;
        int i1 = 0;
        boolean flag1 = false;
        String s = null;
        ax ax1 = null;
        Location location = null;
        String s1 = null;
        android.os.Bundle bundle1 = null;
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 2: // '\002'
                    l = com.google.android.gms.common.internal.safeparcel.a.i(parcel, j1);
                    break;

                case 3: // '\003'
                    bundle = com.google.android.gms.common.internal.safeparcel.a.q(parcel, j1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 5: // '\005'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.B(parcel, j1);
                    break;

                case 6: // '\006'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 7: // '\007'
                    i1 = com.google.android.gms.common.internal.safeparcel.a.g(parcel, j1);
                    break;

                case 8: // '\b'
                    flag1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, j1);
                    break;

                case 9: // '\t'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 10: // '\n'
                    ax1 = (ax)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, ax.CREATOR);
                    break;

                case 11: // '\013'
                    location = (Location)com.google.android.gms.common.internal.safeparcel.a.a(parcel, j1, Location.CREATOR);
                    break;

                case 12: // '\f'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, j1);
                    break;

                case 13: // '\r'
                    bundle1 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new aj(j, l, bundle, k, arraylist, flag, i1, flag1, s, ax1, location, s1, bundle1);
            }
        } while (true);
    }

    public aj[] c(int i)
    {
        return new aj[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return b(parcel);
    }

    public Object[] newArray(int i)
    {
        return c(i);
    }
}
