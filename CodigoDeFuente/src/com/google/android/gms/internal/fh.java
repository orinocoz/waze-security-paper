// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.BitSet;

// Referenced classes of package com.google.android.gms.internal:
//            fi, fp, fl

public class fh
    implements SafeParcelable
{

    public static final fi CREATOR = new fi();
    final int xJ;
    final fl xK[];
    public final String xL;
    public final boolean xM;

    fh(int i, fl afl[], String s, boolean flag)
    {
        xJ = i;
        xK = afl;
        xL = s;
        xM = flag;
    }

    public transient fh(String s, boolean flag, fl afl[])
    {
        this(1, afl, s, flag);
        BitSet bitset = new BitSet(fp.dK());
        for (int i = 0; i < afl.length; i++)
        {
            int j = afl[i].xT;
            if (j == -1)
            {
                continue;
            }
            if (bitset.get(j))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Duplicate global search section type ").append(fp.H(j)).toString());
            }
            bitset.set(j);
        }

    }

    public int describeContents()
    {
        fi _tmp = CREATOR;
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        fi _tmp = CREATOR;
        fi.a(this, parcel, i);
    }

}
