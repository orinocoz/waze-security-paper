// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            am

public class OnMetadataResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new am();
    final MetadataBundle IA;
    final int xJ;

    OnMetadataResponse(int i, MetadataBundle metadatabundle)
    {
        xJ = i;
        IA = metadatabundle;
    }

    public int describeContents()
    {
        return 0;
    }

    public MetadataBundle gw()
    {
        return IA;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        am.a(this, parcel, i);
    }

}
