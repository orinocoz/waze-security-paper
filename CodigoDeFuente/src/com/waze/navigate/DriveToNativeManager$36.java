// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class ressItemAppData
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final ressItemAppData val$appData;
    private final String val$id;

    public void run()
    {
        DriveToNativeManager.access$33(DriveToNativeManager.this, val$id, val$appData);
    }

    ressItemAppData()
    {
        this$0 = final_drivetonativemanager;
        val$id = s;
        val$appData = ressItemAppData.this;
        super();
    }
}