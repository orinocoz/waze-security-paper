// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;

import android.location.Location;
import com.waze.widget.WazeAppWidgetLog;
import com.waze.widget.WazeAppWidgetPreferences;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.waze.widget.routing:
//            RoutingType, RoutingOption

public class RoutingRequest
{

    private static int fromRange = -1;
    private static int toRange = -1;
    private Location mFrom;
    private String mKey;
    private RoutingType mRouteType;
    private String mSession;
    private Location mTo;
    private Map options;

    public RoutingRequest(Location location, Location location1, RoutingType routingtype, String s, String s1)
    {
        mFrom = location;
        mTo = location1;
        mRouteType = routingtype;
        mSession = s;
        mKey = s1;
        fromRange = WazeAppWidgetPreferences.getStartRange();
        toRange = WazeAppWidgetPreferences.getEndRange();
    }

    public static int getNowLocation()
    {
        if (fromRange == -1)
        {
            fromRange = WazeAppWidgetPreferences.getEndRange();
        }
        return Math.abs(fromRange) / 10;
    }

    public static int getNumberOfRecords()
    {
        if (fromRange == -1)
        {
            fromRange = WazeAppWidgetPreferences.getStartRange();
        }
        if (toRange == -1)
        {
            toRange = WazeAppWidgetPreferences.getEndRange();
        }
        return Math.abs(fromRange) / 10 + Math.abs(toRange) / 10;
    }

    public void addOption(RoutingOption routingoption, boolean flag)
    {
        if (options == null)
        {
            options = new HashMap();
        }
        options.put(routingoption, Boolean.valueOf(flag));
    }

    public String buildCmd()
    {
        String s = null;
        if (mTo != null) goto _L2; else goto _L1
_L1:
        WazeAppWidgetLog.e("RoutingRequest.buildCmd [mTo is null]");
_L4:
        return s;
_L2:
        if (mFrom == null)
        {
            WazeAppWidgetLog.e("RoutingRequest.buildCmd [mFrom is null]");
            return null;
        }
        s = (new StringBuilder("?from=x:")).append(mFrom.getLongitude()).append("+y:").append(mFrom.getLatitude()).append("+bd:true").append("&to=x:").append(mTo.getLongitude()).append("+y:").append(mTo.getLatitude()).append("+bd:true").append("&type=").append(mRouteType.name()).append("&returnGeometries=false").append("&returnInstructions=false").append("&timeout=60000").append("&nPaths=3").append("&returnJSON=true").append("&graph=").append(fromRange).append(",").append(toRange).toString();
        if (mSession != null)
        {
            s = (new StringBuilder(String.valueOf(s))).append("&session=").append(mSession).toString();
        }
        if (mKey != null)
        {
            s = (new StringBuilder(String.valueOf(s))).append("&token=").append(mKey).toString();
        }
        if (options != null)
        {
            s = (new StringBuilder(String.valueOf(s))).append("&options=").toString();
            Iterator iterator = options.entrySet().iterator();
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s1 = (new StringBuilder(String.valueOf(s))).append(((RoutingOption)entry.getKey()).name()).append(":").toString();
                String s2;
                if (((Boolean)entry.getValue()).booleanValue())
                {
                    s2 = (new StringBuilder(String.valueOf(s1))).append("T").toString();
                } else
                {
                    s2 = (new StringBuilder(String.valueOf(s1))).append("F").toString();
                }
                s = (new StringBuilder(String.valueOf(s2))).append(",").toString();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String getOriginAndDest()
    {
        if (mTo == null)
        {
            WazeAppWidgetLog.e("RoutingRequest.getOriginAndDest [mTo is null]");
            return null;
        }
        if (mFrom == null)
        {
            WazeAppWidgetLog.e("RoutingRequest.getOriginAndDest [mFrom is null]");
            return null;
        } else
        {
            return (new StringBuilder("?from=x:")).append(mFrom.getLongitude()).append("+y:").append(mFrom.getLatitude()).append("&to=x:").append(mTo.getLongitude()).append("+y:").append(mTo.getLatitude()).toString();
        }
    }

    public void setRouteType(RoutingType routingtype)
    {
        mRouteType = routingtype;
    }

}
