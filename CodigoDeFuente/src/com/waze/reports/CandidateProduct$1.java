// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.os.Parcel;

// Referenced classes of package com.waze.reports:
//            CandidateProduct

class 
    implements android.os.uct._cls1
{

    public CandidateProduct createFromParcel(Parcel parcel)
    {
        return new CandidateProduct(parcel);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public CandidateProduct[] newArray(int i)
    {
        return new CandidateProduct[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
