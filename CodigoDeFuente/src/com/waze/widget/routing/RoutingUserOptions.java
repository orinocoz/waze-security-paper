// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;

import com.waze.config.WazePreferences;
import com.waze.config.WazeUserPreferences;

// Referenced classes of package com.waze.widget.routing:
//            RoutingType

public class RoutingUserOptions
{

    public RoutingUserOptions()
    {
    }

    public static boolean allowUnkownDirections()
    {
        return WazeUserPreferences.getProperty("Routing.Allow unknown directions", "yes").equalsIgnoreCase("yes");
    }

    public static boolean avoidPalestinianRoads()
    {
        return WazeUserPreferences.getProperty("Routing.Avoid Palestinian Roads", "yes").equalsIgnoreCase("yes");
    }

    public static boolean avoidPrimaries()
    {
        return WazeUserPreferences.getProperty("Routing.Avoid primaries", "no").equalsIgnoreCase("yes");
    }

    public static boolean avoidTolls()
    {
        return WazeUserPreferences.getProperty("Routing.Avoid tolls", "no").equalsIgnoreCase("yes");
    }

    public static int avoidTrails()
    {
        String s = WazeUserPreferences.getProperty("Routing.Avoid trails", "Don't allow");
        if (s.equalsIgnoreCase("Allow"))
        {
            return 1;
        }
        return !s.equalsIgnoreCase("Don't allow") ? 2 : 0;
    }

    public static boolean preferSameStreet()
    {
        return WazePreferences.getProperty("Routing.Prefer same street", "no").equalsIgnoreCase("yes");
    }

    public static boolean preferUnkownDirections()
    {
        return WazeUserPreferences.getProperty("Routing.Prefer unknown directions", "no").equalsIgnoreCase("yes");
    }

    public static RoutingType routeType()
    {
        if (WazeUserPreferences.getProperty("Routing.Type", "Fastest").equalsIgnoreCase("Fastest"))
        {
            return RoutingType.HISTORIC_TIME;
        } else
        {
            return RoutingType.DISTANCE;
        }
    }

    public static boolean userTraffic()
    {
        return true;
    }
}
