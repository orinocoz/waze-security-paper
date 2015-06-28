// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.venue
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final String val$Address;
    private final int val$Lat;
    private final int val$Lon;
    private final String val$MeetingId;
    private final String val$venue;

    public void run()
    {
        DriveToNativeManager.access$39(DriveToNativeManager.this, val$Address, val$Lat, val$Lon, val$MeetingId, val$venue);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$Address = s;
        val$Lat = i;
        val$Lon = j;
        val$MeetingId = s1;
        val$venue = String.this;
        super();
    }
}
