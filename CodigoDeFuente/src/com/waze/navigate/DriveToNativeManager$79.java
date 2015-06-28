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
    private final String val$icon;
    private final int val$index;
    private final int val$latitude;
    private final int val$longitude;
    private final boolean val$setScreen;

    public void run()
    {
        if (isStopPointSearchNTV() && val$setScreen)
        {
            DriveToNativeManager.access$69(DriveToNativeManager.this, val$index, val$longitude, val$latitude);
            return;
        }
        DriveToNativeManager drivetonativemanager = DriveToNativeManager.this;
        int i = val$longitude;
        int j = val$latitude;
        boolean flag = val$setScreen;
        boolean flag1;
        if (val$icon != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        DriveToNativeManager.access$60(drivetonativemanager, i, j, flag, flag1);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$setScreen = flag;
        val$index = i;
        val$longitude = j;
        val$latitude = k;
        val$icon = String.this;
        super();
    }
}
