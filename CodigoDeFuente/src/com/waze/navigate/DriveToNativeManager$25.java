// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.isItemSeenAlready
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final int val$index;
    private final boolean val$isItemSeenAlready;

    public void run()
    {
        DriveToNativeManager.access$24(DriveToNativeManager.this, val$index, val$isItemSeenAlready);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$index = i;
        val$isItemSeenAlready = Z.this;
        super();
    }
}
