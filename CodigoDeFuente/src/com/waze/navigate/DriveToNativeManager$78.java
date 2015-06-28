// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.scale
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final int val$latitude;
    private final int val$longitude;
    private final int val$scale;

    public void run()
    {
        DriveToNativeManager.access$72(DriveToNativeManager.this, val$longitude, val$latitude, val$scale);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$longitude = i;
        val$latitude = j;
        val$scale = I.this;
        super();
    }
}
