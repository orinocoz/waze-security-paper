// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.internal:
//            jp

public class jq
    implements android.os.Parcelable.Creator
{

    public jq()
    {
    }

    static void a(jp jp1, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.c(parcel, 1, jp1.xJ);
        b.a(parcel, 2, jp1.je(), false);
        b.a(parcel, 3, jp1.getTag(), false);
        b.G(parcel, j);
    }

    public jp bw(Parcel parcel)
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
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, k);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;

                case 3: // '\003'
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != i)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
            } else
            {
                return new jp(j, s1, s);
            }
        } while (true);
    }

    public jp[] cR(int i)
    {
        return new jp[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bw(parcel);
    }

    public Object[] newArray(int i)
    {
        return cR(i);
    }
}
