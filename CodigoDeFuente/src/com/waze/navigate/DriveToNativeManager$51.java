// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.main.navigate.MajorEventOnRoute;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private MajorEventOnRoute events[];
    final DriveToNativeManager this$0;
    private final orEventsOnRouteListener val$listener;

    public void callback()
    {
        val$listener.onComplete(events);
    }

    public void event()
    {
        try
        {
            events = DriveToNativeManager.access$47(DriveToNativeManager.this);
            return;
        }
        catch (Exception exception)
        {
            events = null;
        }
    }

    orEventsOnRouteListener()
    {
        this$0 = final_drivetonativemanager;
        val$listener = orEventsOnRouteListener.this;
        super();
    }
}
