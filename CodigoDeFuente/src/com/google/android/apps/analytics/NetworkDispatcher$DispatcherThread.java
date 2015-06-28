// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.apps.analytics;

import android.os.Handler;
import android.os.HandlerThread;
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
//            PipelinedRequester, NetworkDispatcher, Event, GoogleAnalyticsTracker, 
//            NetworkRequestUtil

private static class <init> extends HandlerThread
{
    private class AsyncDispatchTask
        implements Runnable
    {

        private final LinkedList events = new LinkedList();
        final NetworkDispatcher.DispatcherThread this$0;

        private void dispatchSomePendingEvents(boolean flag)
            throws IOException, ParseException, HttpException
        {
            if (GoogleAnalyticsTracker.getInstance().getDebug() && flag)
            {
                Log.v("GoogleAnalyticsTracker", "dispatching events in dry run mode");
            }
            int i = 0;
            while (i < events.size() && i < maxEventsPerRequest) 
            {
                Event event = (Event)events.get(i);
                String s;
                BasicHttpRequest basichttprequest;
                if ("__##GOOGLEPAGEVIEW##__".equals(event.category))
                {
                    s = NetworkRequestUtil.constructPageviewRequestPath(event, referrer);
                } else
                if ("__##GOOGLETRANSACTION##__".equals(event.category))
                {
                    s = NetworkRequestUtil.constructTransactionRequestPath(event, referrer);
                } else
                if ("__##GOOGLEITEM##__".equals(event.category))
                {
                    s = NetworkRequestUtil.constructItemRequestPath(event, referrer);
                } else
                {
                    s = NetworkRequestUtil.constructEventRequestPath(event, referrer);
                }
                basichttprequest = new BasicHttpRequest("GET", s);
                basichttprequest.addHeader("Host", NetworkDispatcher.access$200().getHostName());
                basichttprequest.addHeader("User-Agent", userAgent);
                if (GoogleAnalyticsTracker.getInstance().getDebug())
                {
                    Log.i("GoogleAnalyticsTracker", basichttprequest.getRequestLine().toString());
                }
                if (flag)
                {
                    requesterCallBacks.requestSent();
                } else
                {
                    pipelinedRequester.addRequest(basichttprequest);
                }
                i++;
            }
            if (!flag)
            {
                pipelinedRequester.sendRequests();
            }
        }

        public Event removeNextEvent()
        {
            return (Event)events.poll();
        }

        public void run()
        {
            int i;
            currentTask = this;
            i = 0;
_L5:
            long l;
            if (i >= 5 || events.size() <= 0)
            {
                break MISSING_BLOCK_LABEL_150;
            }
            l = 0L;
            if (lastStatusCode != 500 && lastStatusCode != 503)
            {
                break MISSING_BLOCK_LABEL_124;
            }
            l = (long)(Math.random() * (double)retryInterval);
            if (retryInterval < 256L)
            {
                long l1 = <no variable> * ((NetworkRequestUtil) (this)).constructPageviewRequestPath;
            }
_L1:
            Thread.sleep(l * 1000L);
            dispatchSomePendingEvents(parent.isDryRun());
            i++;
            continue; /* Loop/switch isn't completed */
            retryInterval = 2L;
              goto _L1
            InterruptedE