// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetService

final class  extends TimerTask
{

    public void run()
    {
        if (WazeAppWidgetService.access$0() != null)
        {
            WazeAppWidgetService.access$1(WazeAppWidgetService.access$0());
        }
        if (WazeAppWidgetService.access$2() != null)
        {
            WazeAppWidgetService.access$2().cancel();
            WazeAppWidgetService.access$3(null);
        }
    }

    ()
    {
    }
}
