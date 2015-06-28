// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.size
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final int val$index;
    private final int val$size;
    private final int val$updated[];
    private final float val$updatedPrices[];

    public void run()
    {
        DriveToNativeManager.access$54(DriveToNativeManager.this, val$index, val$updatedPrices, val$updated, val$size);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$index = i;
        val$updatedPrices = af;
        val$updated = ai;
        val$size = I.this;
        super();
    }
}
