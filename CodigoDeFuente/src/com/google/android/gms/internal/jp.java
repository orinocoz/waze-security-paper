// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            jq, hl

public class jp
    implements SafeParcelable
{

    public static final jq CREATOR = new jq();
    private final String Wi;
    private final String mTag;
    final int xJ;

    jp(int i, String s, String s1)
    {
        xJ = i;
        Wi = s;
        mTag = s1;
    }

    public int describeContents()
    {
        jq _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        jp jp1;
        if (obj instanceof jp)
        {
            if (hl.equal(Wi, (jp1 = (jp)obj).Wi) && hl.equal(mTag, jp1.mTag))
            {
                return true;
            }
        }
        return false;
    }

    public String getTag()
    {
        return mTag;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Wi;
        aobj[1] = mTag;
        return hl.hashCode(aobj);
    }

    public String je()
    {
        return Wi;
    }

    public String toString()
    {
        return hl.e(this).a("mPlaceId", Wi).a("mTag", mTag).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        jq _tmp = CREATOR;
        jq.a(this, parcel, i);
    }

}
