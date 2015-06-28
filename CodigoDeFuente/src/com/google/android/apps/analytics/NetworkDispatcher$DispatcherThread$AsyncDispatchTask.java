// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.apps.analytics;

import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ParseException;
import org.apache.http.message.BasicHttpRequest;

// Referenced classes of package com.google.android.apps.analytics:
//            GoogleAnalyticsTracker, Event, NetworkRequestUtil, NetworkDispatcher, 
//            PipelinedRequester

private class events
    implements Runnable
{

    private final LinkedList events = new LinkedList();
    final this._cls0 this$0;

    private void dispatchSomePendingEvents(boolean flag)
        throws IOException, ParseException, HttpException
    {
        if (GoogleAnalyticsTracker.getInstance().getDebug() && flag)
        {
            Log.v("GoogleAnalyticsTracker", "dispatching events in dry run mode");
        }
        int i = 0;
        while (i < events.size() && i < events(this._cls0.this)) 
        {
            Event event = (Event)events.get(i);
            String s;
            BasicHttpRequest basichttprequest;
            if ("__##GOOGLEPAGEVIEW##__".equals(event.category))
            {
                s = NetworkRequestUtil.constructPageviewRequestPath(event, events(this._cls0.this));
            } else
            if ("__##GOOGLETRANSACTION##__".equals(event.category))
            {
                s = NetworkRequestUtil.constructTransactionRequestPath(event, this._mth0(this._cls0.this));
            } else
            if ("__##GOOGLEITEM##__".equals(event.category))
            {
                s = NetworkRequestUtil.constructItemRequestPath(event, this._mth0(this._cls0.this));
            } else
            {
                s = NetworkRequestUtil.constructEventRequestPath(event, this._mth0(this._cls0.this));
            }
            basichttprequest = new BasicHttpRequest("GET", s);
            basichttprequest.addHeader("Host", NetworkDispatcher.access$200().getHostName());
            basichttprequest.addHeader("User-Agent", this._mth0(this._cls0.this));
            if (GoogleAnalyticsTracker.getInstance().getDebug())
            {
                Log.i("GoogleAnalyticsTracker", basichttprequest.getRequestLine().toString());
            }
            if (flag)
            {
                this._mth0(this._cls0.this).requestSent();
            } else
            {
                .requestSent(this._cls0.this).addRequest(basichttprequest);
            }
            i++;
        }
        if (!flag)
        {
            this._mth0(this._cls0.this).sendRequests();
        }
    }

    public Event removeNextEvent()
    {
        return (Event)events.poll();
    }

    public void run()
    {
        int i;
        events(this._cls0.this, this);
        i = 0;
_L5:
        long l;
        if (i >= 5 || events.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        l = 0L;
        if (events(this._cls0.this) != 500 && this._mth0(this._cls0.this) != 503)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        l = (long)(Math.random() * (double)this._mth0(this._cls0.this));
        if (this._mth0(this._cls0.this) < 256L)
        {
            this._mth0(this._cls0.this, 2L);
        }
_L1:
        Thread.sleep(l * 1000L);
        dispatchSomePendingEvents(dispatchSomePendingEvents(this._cls0.this).isDryRun());
        i++;
        continue; /* Loop/switch isn't completed */
        this._mth0(this._cls0.this, 2L);
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        Log.w("GoogleAnalyticsTracker", "Couldn't sleep.", interruptedexception);
_L3:
        this._mth0(this._cls0.this).finishedCurrentRequests();
        this._mth0(this._cls0.this)._mth0();
        this._mth0(this._cls0.this, null);
        return;
        IOException ioexception;
        ioexception;
        Log.w("GoogleAnalyticsTracker", "Problem with socket or streams.", ioexception);
        continue; /* Loop/switch isn't completed */
        HttpException httpexception;
        httpexception;
        Log.w("GoogleAnalyticsTracker", "Problem with http streams.", httpexception);
        if (true) goto _L3; else goto _L2
_L2:
        if (true) goto _L5; else goto _L4
_L4:
    }

    public (Event aevent[])
    {
        this$0 = this._cls0.this;
        super();
        Collections.addAll(events, aevent);
    }
}
