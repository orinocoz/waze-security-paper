// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.navigate.social.EndDriveData;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class it> extends RunnableUICallback
{

    private EndDriveData data;
    final DriveToNativeManager this$0;
    private final dDriveListener val$listener;
    private final String val$sMeetingID;

    public void callback()
    {
        val$listener.onComplete(data);
    }

    public void event()
    {
        try
        {
            data = DriveToNativeManager.access$1(DriveToNativeManager.this, val$sMeetingID);
            return;
        }
        catch (Exception exception)
        {
            data = null;
        }
    }

    dDriveListener()
    {
        this$0 = final_drivetonativemanager;
        val$sMeetingID = s;
        val$listener = dDriveListener.this;
        super();
    }
}
