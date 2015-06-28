// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            jm, jn, hl

public final class jl
    implements SafeParcelable
{

    public static final jm CREATOR = new jm();
    private final int UX;
    private final int VX;
    private final jn VY;
    private final int xJ;

    jl(int i, int j, int k, jn jn1)
    {
        xJ = i;
        UX = j;
        VX = k;
        VY = jn1;
    }

    public int describeContents()
    {
        jm _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof jl))
            {
                return false;
            }
            jl jl1 = (jl)obj;
            if (UX != jl1.UX || VX != jl1.VX || !VY.equals(jl1.VY))
            {
                return false;
            }
        }
        return true;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(UX);
        aobj[1] = Integer.valueOf(VX);
        return hl.hashCode(aobj);
    }

    public int iX()
    {
        return UX;
    }

    public int iZ()
    {
        return VX;
    }

    public jn ja()
    {
        return VY;
    }

    public String toString()
    {
        return hl.e(this).a("transitionTypes", Integer.valueOf(UX)).a("loiteringTimeMillis", Integer.valueOf(VX)).a("placeFilter", VY).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        jm _tmp = CREATOR;
        jm.a(this, parcel, i);
    }

}
