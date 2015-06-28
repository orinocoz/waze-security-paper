// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.displayName
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final String val$calendarId;
    private final String val$displayName;
    private final long val$endTime;
    private final boolean val$isAllDay;
    private final boolean val$isRecurring;
    private final String val$locationStr;
    private final String val$name;
    private final long val$startTime;

    public void run()
    {
        DriveToNativeManager.access$49(DriveToNativeManager.this, val$calendarId, val$startTime, val$endTime, val$isAllDay, val$isRecurring, val$locationStr, val$name, val$displayName);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$calendarId = s;
        val$startTime = l;
        val$endTime = l1;
        val$isAllDay = flag;
        val$isRecurring = flag1;
        val$locationStr = s1;
        val$name = s2;
        val$displayName = String.this;
        super();
    }
}
