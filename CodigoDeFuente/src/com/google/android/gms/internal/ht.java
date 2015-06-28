// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            hs

public class ht
    implements android.os.Parcelable.Creator
{

    public ht()
    {
    }

    static void a(hs hs1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.c(parcel, 1, hs1.xJ);
        b.a(parcel, 2, hs1.GQ, false);
        b.c(parcel, 3, hs1.GR);
        b.G(parcel, j);
    }

    public hs D(Parcel parcel)
    {
        int i = 0;
        int j = com.google.android.gms.common.internal.safeparcel.a.B(parcel);
        String s = null;
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 3: // '\003'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new hs(k, s, i);
            }
        } while (true);
    }

    public hs[] as(int i)
    {
        return new hs[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return D(parcel);
    }

    public Object[] newArray(int i)
    {
        return as(i);
    }
}
