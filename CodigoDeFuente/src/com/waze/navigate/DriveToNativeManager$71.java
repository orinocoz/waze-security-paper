// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.bIsMapUpdates
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final boolean val$bIsMapUpdates;

    public void run()
    {
        DriveToNativeManager.access$65(DriveToNativeManager.this, val$bIsMapUpdates);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$bIsMapUpdates = Z.this;
        super();
    }
}
