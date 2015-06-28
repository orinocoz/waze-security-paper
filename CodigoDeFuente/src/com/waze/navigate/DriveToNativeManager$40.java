// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.Id
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final String val$Id;
    private final String val$MeetingId;
    private final Boolean val$bToDrive;
    private final int val$index;

    public void run()
    {
        if (val$bToDrive.booleanValue())
        {
            DriveToNativeManager.access$36(DriveToNativeManager.this, val$index, val$MeetingId, val$Id);
            return;
        } else
        {
            DriveToNativeManager.access$37(DriveToNativeManager.this, val$index, val$MeetingId, val$Id);
            return;
        }
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$bToDrive = boolean1;
        val$index = i;
        val$MeetingId = s;
        val$Id = String.this;
        super();
    }
}
