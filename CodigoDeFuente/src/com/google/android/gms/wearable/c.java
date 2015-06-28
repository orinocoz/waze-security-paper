// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;

// Referenced classes of package com.google.android.gms.wearable:
//            d

public class c
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new d();
    private final int AQ;
    private final String YI;
    private final int alf;
    private final boolean alg;
    private final String mName;
    final int xJ;

    c(int i, String s, String s1, int j, int k, boolean flag)
    {
        xJ = i;
        mName = s;
        YI = s1;
        AQ = j;
        alf = k;
        alg = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        c c1;
        if (obj instanceof c)
        {
            if (hl.equal(Integer.valueOf(xJ), Integer.valueOf((c1 = (c)obj).xJ)) && hl.equal(mName, c1.mName) && hl.equal(YI, c1.YI) && hl.equal(Integer.valueOf(AQ), Integer.valueOf(c1.AQ)) && hl.equal(Integer.valueOf(alf), Integer.valueOf(c1.alf)) && hl.equal(Boolean.valueOf(alg), Boolean.valueOf(c1.alg)))
            {
                return true;
            }
        }
        return false;
    }

    public String getAddress()
    {
        return YI;
    }

    public String getName()
    {
        return mName;
    }

    public int getRole()
    {
        return alf;
    }

    public int getType()
    {
        return AQ;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(xJ);
        aobj[1] = mName;
        aobj[2] = YI;
        aobj[3] = Integer.valueOf(AQ);
        aobj[4] = Integer.valueOf(alf);
        aobj[5] = Boolean.valueOf(alg);
        return hl.hashCode(aobj);
    }

    public boolean isEnabled()
    {
        return alg;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ConnectionConfiguration[ ");
        stringbuilder.append((new StringBuilder()).append("mName=").append(mName).toString());
        stringbuilder.append((new StringBuilder()).append(", mAddress=").append(YI).toString());
        stringbuilder.append((new StringBuilder()).append(", mType=").append(AQ).toString());
        stringbuilder.append((new StringBuilder()).append(", mRole=").append(alf).toString());
        stringbuilder.append((new StringBuilder()).append(", mEnabled=").append(alg).toString());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        d.a(this, parcel, i);
    }

}
