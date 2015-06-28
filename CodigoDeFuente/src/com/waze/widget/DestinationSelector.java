// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.location.Location;
import com.waze.config.WazeHistory;
import com.waze.config.WazeLang;
import java.util.Calendar;
import java.util.GregorianCalendar;

// Referenced classes of package com.waze.widget:
//            Destination, DestinationType, WazeAppWidgetLog

public class DestinationSelector
{

    public DestinationSelector()
    {
    }

    public static Destination getDestination(Location location)
    {
        GregorianCalendar gregoriancalendar;
        Destination destination;
        gregoriancalendar = new GregorianCalendar();
        destination = new Destination(DestinationType.NONE, null, null);
        if (location != null) goto _L2; else goto _L1
_L1:
        WazeAppWidgetLog.d("currentLocation is null");
_L4:
        return destination;
_L2:
        String s;
        Location location1;
        String s1;
        Location location2;
        s = WazeLang.getLang("Home");
        location1 = WazeHistory.getEntry(s);
        if (location1 == null)
        {
            s = WazeLang.getLang("home");
            location1 = WazeHistory.getEntry(s);
        }
        if (location1 == null)
        {
            s = "Home";
            location1 = WazeHistory.getEntry(s);
        }
        if (location1 == null)
        {
            s = "home";
            location1 = WazeHistory.getEntry(s);
        }
        s1 = WazeLang.getLang("Work");
        location2 = WazeHistory.getEntry(s1);
        if (location2 == null)
        {
            s1 = WazeLang.getLang("work");
            location2 = WazeHistory.getEntry(s1);
        }
        if (location2 == null)
        {
            s1 = "Work";
            location2 = WazeHistory.getEntry(s1);
        }
        if (location2 == null)
        {
            s1 = "work";
            location2 = WazeHistory.getEntry(s1);
        }
        if (location1 == null && location2 == null)
        {
            WazeAppWidgetLog.d("No Home & Work");
            destination.setType(DestinationType.NA);
            return destination;
        }
        if (gregoriancalendar.get(9) != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (location2 != null)
        {
            if (location2.distanceTo(location) > 1000F)
            {
                WazeAppWidgetLog.d("getDestination - selecting Work");
                destination.setType(DestinationType.WORK);
                destination.setLocation(location2);
                destination.setName(s1);
                return destination;
            }
            if (location1 != null)
            {
                WazeAppWidgetLog.d("Too Close to work selecting home");
                destination.setType(DestinationType.HOME);
                destination.setLocation(location1);
                destination.setName(s);
                return destination;
            }
            if (location1 == null)
            {
                WazeAppWidgetLog.d("No Home");
                destination.setType(DestinationType.NA);
                return destination;
            }
        } else
        {
            WazeAppWidgetLog.d("No Work");
            destination.setType(DestinationType.NA);
            return destination;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (location1 != null)
        {
            if (location1.distanceTo(location) > 1000F)
            {
                destination.setType(DestinationType.HOME);
                destination.setLocation(location1);
                destination.setName(s);
                return destination;
            }
            if (location2 != null)
            {
                destination.setType(DestinationType.WORK);
                destination.setLocation(location2);
                destination.setName(s1);
                return destination;
            }
        } else
        {
            WazeAppWidgetLog.d("No Home");
            destination.setType(DestinationType.NA);
            return destination;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }
}
