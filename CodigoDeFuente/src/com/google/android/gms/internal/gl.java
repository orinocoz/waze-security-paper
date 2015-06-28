// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            gk

public class gl
    implements android.os.Parcelable.Creator
{

    public gl()
    {
    }

    static void a(gk gk1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.c(parcel, 1, gk1.getVersionCode());
        b.a(parcel, 2, gk1.ec());
        b.a(parcel, 3, gk1.ei());
        b.c(parcel, 4, gk1.ej());
        b.G(parcel, j);
    }

    public gk[] Y(int i)
    {
        return new gk[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return v(parcel);
    }

    public Object[] newArray(int i)
    {
        return Y(i);
    }

    public gk v(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        double d = 0.0D;
        boolean flag = false;
        int k = 0;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.A(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.ar(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    break;

                case 3: // '\003'
                    flag = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l);
                    break;

                case 4: // '\004'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new gk(k, d, flag, i);
            }
        } while (true);
    }
}
