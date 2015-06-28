// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;

import android.location.Location;
import com.waze.widget.WazeAppWidgetLog;
import com.waze.widget.WazeAppWidgetPreferences;
import com.waze.widget.WidgetManager;
import com.waze.widget.rt.RealTimeManager;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;

// Referenced classes of package com.waze.widget.routing:
//            RoutingRequest, RoutingUserOptions, RoutingOption, RoutingResponse

public class RoutingManager
{

    private String mServerUrl;

    public RoutingManager()
    {
        mServerUrl = WazeAppWidgetPreferences.getRoutingServerUrl();
    }

    private void execute(RoutingRequest routingrequest)
    {
        if (mServerUrl == null || mServerUrl.length() <= 0)
        {
            WazeAppWidgetLog.e("Sending routing request [mServerUrl is null]");
            WidgetManager.executeResponse(null);
            return;
        }
        if (routingrequest == null || routingrequest.buildCmd() == null)
        {
            WazeAppWidgetLog.e("Sending routing request [RoutingRequest is null]");
            WidgetManager.executeResponse(null);
            return;
        } else
        {
            WazeAppWidgetLog.e((new StringBuilder("Sending routing request [ ")).append(routingrequest.getOriginAndDest()).append("]").toString());
            (new Thread() {

                final RoutingManager this$0;
                private final HttpClient val$httpclient;
                private final HttpPost val$httppost;

                public void run()
                {
                    HttpResponse httpresponse;
                    String s;
                    try
                    {
                        httpresponse = httpclient.execute(httppost);
                    }
                    catch (IOException ioexception)
                    {
                        return;
                    }
                    if (httpresponse.getStatusLine().getStatusCode() != 200)
                    {
                        break MISSING_BLOCK_LABEL_87;
                    }
                    s = EntityUtils.toString(httpresponse.getEntity());
                    WazeAppWidgetLog.d((new StringBuilder("Got routing response [")).append(s).append("]").toString());
                    try
                    {
                        WidgetManager.executeResponse(new RoutingResponse(s));
                        return;
                    }
                    catch (JSONException jsonexception) { }
                    try
                    {
                        WidgetManager.executeResponse(null);
                        return;
                    }
                    catch (IOException ioexception1)
                    {
                        return;
                    }
                    WazeAppWidgetLog.e((new StringBuilder("routing request failed code=")).append(httpresponse.getStatusLine().getStatusCode()).toString());
                    WidgetManager.executeResponse(null);
                    return;
                }

            
            {
                this$0 = RoutingManager.this;
                httpclient = httpclient1;
                httppost = httppost1;
                super();
            }
            }).start();
            return;
        }
    }

    public void RoutingRequest(Location location, Location location1)
    {
        RealTimeManager realtimemanager = RealTimeManager.getInstance();
        RoutingRequest routingrequest = new RoutingRequest(location, location1, RoutingUserOptions.routeType(), realtimemanager.getSessionId(), realtimemanager.getCookie());
        routingrequest.addOption(RoutingOption.AVOID_TOLL_ROADS, RoutingUserOptions.avoidTolls());
        routingrequest.addOption(RoutingOption.AVOID_DANGER_ZONES, RoutingUserOptions.avoidPalestinianRoads());
        routingrequest.addOption(RoutingOption.AVOID_PRIMARIES, RoutingUserOptions.avoidPrimaries());
        routingrequest.addOption(RoutingOption.PREFER_SAME_STREET, RoutingUserOptions.preferSameStreet());
        execute(routingrequest);
    }
}
