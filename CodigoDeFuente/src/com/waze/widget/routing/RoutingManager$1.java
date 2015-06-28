// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;

import com.waze.widget.WazeAppWidgetLog;
import com.waze.widget.WidgetManager;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;

// Referenced classes of package com.waze.widget.routing:
//            RoutingManager, RoutingResponse

class val.httppost extends Thread
{

    final RoutingManager this$0;
    private final HttpClient val$httpclient;
    private final HttpPost val$httppost;

    public void run()
    {
        HttpResponse httpresponse;
        String s;
        try
        {
            httpresponse = val$httpclient.execute(val$httppost);
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

    ()
    {
        this$0 = final_routingmanager;
        val$httpclient = httpclient1;
        val$httppost = HttpPost.this;
        super();
    }
}
