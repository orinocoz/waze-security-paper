// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.MeetingId
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final String val$MeetingId;
    private final int val$index;

    public void run()
    {
        DriveToNativeManager.access$38(DriveToNativeManager.this, val$index, val$MeetingId);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$index = i;
        val$MeetingId = String.this;
        super();
    }
}
