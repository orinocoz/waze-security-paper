// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.internal.hl;

// Referenced classes of package com.google.android.gms.plus.internal:
//            f

public class PlusCommonExtras
    implements SafeParcelable
{

    public static final f CREATOR = new f();
    public static String TAG = "PlusCommonExtras";
    private String abN;
    private String abO;
    private final int xJ;

    public PlusCommonExtras()
    {
        xJ = 1;
        abN = "";
        abO = "";
    }

    PlusCommonExtras(int i, String s, String s1)
    {
        xJ = i;
        abN = s;
        abO = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        PlusCommonExtras pluscommonextras;
        if (obj instanceof PlusCommonExtras)
        {
            if (xJ == (pluscommonextras = (PlusCommonExtras)obj).xJ && hl.equal(abN, pluscommonextras.abN) && hl.equal(abO, pluscommonextras.abO))
            {
                return true;
            }
        }
        return false;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(xJ);
        aobj[1] = abN;
        aobj[2] = abO;
        return hl.hashCode(aobj);
    }

    public String jS()
    {
        return abN;
    }

    public String jT()
    {
        return abO;
    }

    public void n(Bundle bundle)
    {
        bundle.putByteArray("android.gms.plus.internal.PlusCommonExtras.extraPlusCommon", c.a(this));
    }

    public String toString()
    {
        return hl.e(this).a("versionCode", Integer.valueOf(xJ)).a("Gpsrc", abN).a("ClientCallingPackage", abO).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        f.a(this, parcel, i);
    }

}
