// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetLog, WidgetManager

public class WazeAppWidgetLocationListener
    implements LocationListener
{

    public WazeAppWidgetLocationListener()
    {
    }

    public void onLocationChanged(Location location)
    {
        WazeAppWidgetLog.d("onLocationChanged called");
        WidgetManager.onLocation(location);
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }
}
