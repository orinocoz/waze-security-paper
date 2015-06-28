// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.app.Service;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Handler;
import com.waze.config.WazeHistory;
import com.waze.config.WazeLang;
import com.waze.config.WazePreferences;
import com.waze.config.WazeUserPreferences;
import com.waze.widget.routing.RouteScore;
import com.waze.widget.routing.RouteScoreType;
import com.waze.widget.routing.RoutingManager;
import com.waze.widget.routing.RoutingResponse;
import com.waze.widget.rt.RealTimeManager;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetLog, StatusData, WazeAppWidgetService, WazeAppWidgetLocationListener, 
//            DestinationSelector, Destination, DestinationType, WazeAppWidgetPreferences

public class WidgetManager
{

    private static Destination dest;
    static LocationListener mGpslocListener = null;
    private static Handler mHandler = new Handler();
    static LocationManager mLocationManager;
    static LocationListener mNetlocListener = null;
    private static Service mService;

    public WidgetManager()
    {
    }

    public static void RouteRequest()
    {
        WazeAppWidgetLog.d("RouteRequest...");
        loadWazeConfig();
        if (!RealTimeManager.getInstance().hasUserName().booleanValue())
        {
            WazeAppWidgetLog.e("No valide user credentials found");
            WazeAppWidgetService.setState(0x80000, new StatusData("No Destination", -1, RouteScoreType.NONE, null));
            WazeAppWidgetService.stopRefreshMonitor();
        } else
        {
            if (mService == null)
            {
                WazeAppWidgetLog.w("service is null");
                WazeAppWidgetService.setState(0x40000, new StatusData("No Location", -1, RouteScoreType.NONE, null));
                WazeAppWidgetService.stopRefreshMonitor();
                return;
            }
            if (mLocationManager == null)
            {
                mLocationManager = (LocationManager)mService.getSystemService("location");
            }
            if (mLocationManager == null)
            {
                WazeAppWidgetService.setState(0x40000, new StatusData("No Location", -1, RouteScoreType.NONE, null));
                WazeAppWidgetLog.w("locationManager is null");
                WazeAppWidgetService.stopRefreshMonitor();
                return;
            }
            Location location = mLocationManager.getLastKnownLocation("network");
            if (location == null)
            {
                if (mGpslocListener == null)
                {
                    WazeAppWidgetLog.d("lastKnowLocation is null, activating GPS");
                    if (mGpslocListener == null)
                    {
                        if (mLocationManager.isProviderEnabled("gps"))
                        {
                            mGpslocListener = new WazeAppWidgetLocationListener();
                            mLocationManager.requestLocationUpdates("gps", 0L, 0.0F, mGpslocListener);
                        } else
                        {
                            WazeAppWidgetLog.d("GPS_PROVIDER is disabled. Not registring loction listener");
                        }
                    }
                    if (mNetlocListener == null)
                    {
                        if (mLocationManager.isProviderEnabled("network"))
                        {
                            mNetlocListener = new WazeAppWidgetLocationListener();
                            mLocationManager.requestLocationUpdates("network", 0L, 0.0F, mNetlocListener);
                            return;
                        } else
                        {
                            WazeAppWidgetLog.d("NETWORK_PROVIDER is disabled. Not registring loction listener");
                            return;
                        }
                    }
                } else
                {
                    WazeAppWidgetLog.d("lastKnowLocation is null, GPS already activated");
                    return;
                }
            } else
            {
                executeRequest(location);
                WazeAppWidgetService.stopRefreshMonitor();
                return;
            }
        }
    }

    public static void executeRequest(Location location)
    {
        loadWazeConfig();
        if (location == null)
        {
            WazeAppWidgetService.setState(0x40000, new StatusData("No Location", -1, RouteScoreType.NONE, null));
            WazeAppWidgetLog.w("last Known Location is null");
        } else
        {
            dest = DestinationSelector.getDestination(location);
            WazeAppWidgetLog.d((new StringBuilder("DestinationSelector selected ")).append(dest.getName()).toString());
            if (dest.getType() == DestinationType.NA)
            {
                WazeAppWidgetService.setState(0x80000, new StatusData("No Destination", -1, RouteScoreType.NONE, null));
                return;
            }
            if (dest.getType() != DestinationType.NONE)
            {
                if (WazeAppWidgetPreferences.RoutingServerAuthenticationNeeded().booleanValue())
                {
                    RealTimeManager.getInstance().authenticate();
                }
                (new RoutingManager()).RoutingRequest(location, dest.getLocation());
                return;
            }
        }
    }

    public static void executeResponse(final RoutingResponse rrsp)
    {
        mHandler.post(new Runnable() {

            private final RoutingResponse val$rrsp;

            public void run()
            {
                if (rrsp == null)
                {
                    WazeAppWidgetService.setState(0x100000, new StatusData(WidgetManager.dest.getName(), -1, RouteScoreType.NONE, null));
                    return;
                } else
                {
                    RouteScoreType routescoretype = RouteScore.getScore(rrsp.getTime(), rrsp.getAveragetTime());
                    WazeAppWidgetService.setState(1, new StatusData(WidgetManager.dest.getName(), rrsp.getTime() / 60, routescoretype, rrsp));
                    return;
                }
            }

            
            {
                rrsp = routingresponse;
                super();
            }
        });
    }

    public static Boolean hasHomeOrWork()
    {
        loadWazeConfig();
        Location location = WazeHistory.getEntry(WazeLang.getLang("Home"));
        Location location1 = WazeHistory.getEntry(WazeLang.getLang("Work"));
        if (location == null && location1 == null)
        {
            return Boolean.valueOf(false);
        } else
        {
            return Boolean.valueOf(true);
        }
    }

    public static void init(Service service)
    {
        mService = service;
        mLocationManager = (LocationManager)service.getSystemService("location");
        loadWazeConfig();
    }

    public static void loadWazeConfig()
    {
        WazeAppWidgetLog.d("loadWazeConfig");
        WazePreferences.load();
        WazeUserPreferences.load();
        WazeHistory.load();
        WazeLang.load(WazeUserPreferences.getProperty("System.Language"));
    }

    public static void onLocation(Location location)
    {
        if (mGpslocListener != null)
        {
            mLocationManager.removeUpdates(mGpslocListener);
            mGpslocListener = null;
        }
        if (mNetlocListener != null)
        {
            mLocationManager.removeUpdates(mNetlocListener);
            mNetlocListener = null;
        }
        WazeAppWidgetService.stopRefreshMonitor();
        executeRequest(location);
    }


}
