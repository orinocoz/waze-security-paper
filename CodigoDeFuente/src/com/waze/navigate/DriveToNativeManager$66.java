// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.icon
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final boolean val$icon;
    private final int val$latitude;
    private final int val$longitude;

    public void run()
    {
        DriveToNativeManager.access$59(DriveToNativeManager.this);
        DriveToNativeManager.access$60(DriveToNativeManager.this, val$longitude, val$latitude, true, val$icon);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$longitude = i;
        val$latitude = j;
        val$icon = Z.this;
        super();
    }
}
