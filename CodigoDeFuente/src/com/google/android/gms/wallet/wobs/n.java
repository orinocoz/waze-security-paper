// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            o

public final class n
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new o();
    String akZ;
    String description;
    private final int xJ;

    n()
    {
        xJ = 1;
    }

    n(int i, String s, String s1)
    {
        xJ = i;
        akZ = s;
        description = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return xJ;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        o.a(this, parcel, i);
    }

}
