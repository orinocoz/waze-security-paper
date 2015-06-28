// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.rt;

import com.waze.widget.WazeAppWidgetLog;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;

// Referenced classes of package com.waze.widget.rt:
//            RealTimeManager

class val.httpclient extends Thread
{

    final RealTimeManager this$0;
    private final HttpClient val$httpclient;
    private final HttpPost val$httppost;
    private final String val$sBuildCommand;

    public void run()
    {
        HttpResponse httpresponse;
        val$httppost.addHeader("Content-Type", "binary/octet-stream");
        val$httppost.setEntity(new StringEntity(val$sBuildCommand));
        httpresponse = val$httpclient.execute(val$httppost);
        if (httpresponse.getStatusLine().getStatusCode() == 200)
        {
            return;
        }
        try
        {
            WazeAppWidgetLog.e((new StringBuilder("Authenticate failed [error =")).append(httpresponse.getStatusLine().getStatusCode()).append("]").toString());
            return;
        }
        catch (IOException ioexception)
        {
            WazeAppWidgetLog.e((new StringBuilder("Authenticate error [error=")).append(ioexception.getMessage()).append("]").toString());
        }
        return;
    }

    st()
    {
        this$0 = final_realtimemanager;
        val$httppost = httppost1;
        val$sBuildCommand = s;
        val$httpclient = HttpClient.this;
        super();
    }
}
