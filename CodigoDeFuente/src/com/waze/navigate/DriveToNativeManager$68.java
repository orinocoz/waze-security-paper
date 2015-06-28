// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.latitude
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final int val$latitude;
    private final int val$longitude;

    public void run()
    {
        DriveToNativeManager.access$62(DriveToNativeManager.this, val$longitude, val$latitude);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$longitude = i;
        val$latitude = I.this;
        super();
    }
}
