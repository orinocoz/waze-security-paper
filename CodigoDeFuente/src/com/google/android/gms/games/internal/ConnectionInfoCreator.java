// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

// Referenced classes of package com.google.android.gms.games.internal:
//            ConnectionInfo

public class ConnectionInfoCreator
    implements android.os.Parcelable.Creator
{

    public ConnectionInfoCreator()
    {
    }

    static void a(ConnectionInfo connectioninfo, Parcel parcel, int i)
    {
        int j = b.C(parcel);
        b.a(parcel, 1, connectioninfo.gR(), false);
        b.c(parcel, 1000, connectioninfo.getVersionCode());
        b.c(parcel, 2, connectioninfo.gS());
        b.G(parcel, j);
    }

    public ConnectionInfo bf(Parcel parcel)
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
                    s = com.google.android.gms.common.internal.safeparcel.a.o(parcel, l);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;

                case 2: // '\002'
                    i = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new ConnectionInfo(k, s, i);
            }
        } while (true);
    }

    public ConnectionInfo[] cf(int i)
    {
        return new ConnectionInfo[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return bf(parcel);
    }

    public Object[] newArray(int i)
    {
        return cf(i);
    }
}
