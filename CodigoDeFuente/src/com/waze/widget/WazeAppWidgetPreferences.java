// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import com.waze.config.WazePreferences;

public class WazeAppWidgetPreferences
{

    public WazeAppWidgetPreferences()
    {
    }

    public static long AllowRefreshTimer()
    {
        Long long1 = Long.valueOf(10L);
        String s = WazePreferences.getProperty("Widget.Allow Refresh Timer", long1.toString());
        if (s == null)
        {
            return long1.longValue();
        } else
        {
            return 1000L * (60L * Long.parseLong(s));
        }
    }

    public static Boolean RoutingServerAuthenticationNeeded()
    {
        String s = WazePreferences.getProperty("Widget.Authentication", "no");
        if (s != null && s.equalsIgnoreCase("yes"))
        {
            return Boolean.valueOf(true);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public static String SecuredServerUrl()
    {
        return WazePreferences.getProperty("Realtime.Web-Service Secured Address");
    }

    public static String ServerUrl()
    {
        return WazePreferences.getProperty("Realtime.Web-Service Address");
    }

    public static Boolean debugEnabled()
    {
        if (WazePreferences.getProperty("General.Log level", "1").equalsIgnoreCase("1"))
        {
            return Boolean.valueOf(true);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public static int getEndRange()
    {
        return Integer.parseInt(WazePreferences.getProperty("Widget.End Range", "60"));
    }

    public static String getRoutingServerUrl()
    {
        return WazePreferences.getProperty("Widget.Routing Server URL", "");
    }

    public static int getStartRange()
    {
        return Integer.parseInt(WazePreferences.getProperty("Widget.Start Range", "-60"));
    }

    public static boolean isWebServiceSecuredEnabled()
    {
        String s = WazePreferences.getProperty("Realtime.Web-Service Secure Enabled", "yes");
        return s != null && s.equalsIgnoreCase("yes");
    }
}
