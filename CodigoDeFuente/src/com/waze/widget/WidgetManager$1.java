// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import com.waze.widget.routing.RouteScore;
import com.waze.widget.routing.RouteScoreType;
import com.waze.widget.routing.RoutingResponse;

// Referenced classes of package com.waze.widget:
//            WidgetManager, StatusData, Destination, WazeAppWidgetService

class val.rrsp
    implements Runnable
{

    private final RoutingResponse val$rrsp;

    public void run()
    {
        if (val$rrsp == null)
        {
            WazeAppWidgetService.setState(0x100000, new StatusData(WidgetManager.access$0().getName(), -1, RouteScoreType.NONE, null));
            return;
        } else
        {
            RouteScoreType routescoretype = RouteScore.getScore(val$rrsp.getTime(), val$rrsp.getAveragetTime());
            WazeAppWidgetService.setState(1, new StatusData(WidgetManager.access$0().getName(), val$rrsp.getTime() / 60, routescoretype, val$rrsp));
            return;
        }
    }

    esponse()
    {
        val$rrsp = routingresponse;
        super();
    }
}
