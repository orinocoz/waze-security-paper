// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import java.io.File;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetService, WazeAppWidgetLog, WidgetManager, StatusData

class val.file extends TimerTask
{

    final WazeAppWidgetService this$0;
    private final File val$file;

    public void run()
    {
        if (val$file.exists() && val$file.canWrite())
        {
            WazeAppWidgetLog.d("SD Card is available. Setting state to the STATUS_NEW_WIDGET. Cancelling the timer.");
            WazeAppWidgetService.setState(8, null);
            WazeAppWidgetService.access$4().cancel();
            WidgetManager.loadWazeConfig();
            WazeAppWidgetService.access$5(0);
            WazeAppWidgetService.access$6().copy(new StatusData());
            WazeAppWidgetService.access$7(null);
            return;
        } else
        {
            WazeAppWidgetLog.w("SD Card is not available. Scheduling next check in 30 seconds");
            WazeAppWidgetService.access$4().schedule(this, 30000L);
            return;
        }
    }

    ()
    {
        this$0 = final_wazeappwidgetservice;
        val$file = File.this;
        super();
    }
}
