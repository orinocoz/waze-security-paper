// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.events:
//            ResourceEvent, a

public final class ChangeEvent
    implements SafeParcelable, ResourceEvent
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    final DriveId Hw;
    final int Id;
    final int xJ;

    ChangeEvent(int i, DriveId driveid, int j)
    {
        xJ = i;
        Hw = driveid;
        Id = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public DriveId getDriveId()
    {
        return Hw;
    }

    public int getType()
    {
        return 1;
    }

    public boolean hasContentChanged()
    {
        return (2 & Id) != 0;
    }

    public boolean hasMetadataChanged()
    {
        return (1 & Id) != 0;
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Hw;
        aobj[1] = Integer.valueOf(Id);
        return String.format("ChangeEvent [id=%s,changeFlags=%x]", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        a.a(this, parcel, i);
    }

}
