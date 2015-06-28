// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.apps.analytics;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Locale;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ParseException;
import org.apache.http.message.BasicHttpRequest;

// Referenced classes of package com.google.android.apps.analytics:
//            Dispatcher, Event, PipelinedRequester, GoogleAnalyticsTracker, 
//            NetworkRequestUtil

class NetworkDispatcher
    implements Dispatcher
{
    private static class DispatcherThread extends HandlerThread
    {

        private final Dispatcher.Callbacks callbacks;
        private AsyncDispatchTask currentTask;
        private Handler handlerExecuteOnDispatcherThread;
        private int lastStatusCode;
        private int maxEventsPerRequest;
        private final NetworkDispatcher parent;
        private final PipelinedRequester pipelinedRequester;
        private final String referrer;
        private final RequesterCallbacks requesterCallBacks;
        private long retryInterval;
        private final String userAgent;

        public void dispatchEvents(Event aevent[])
        {
            if (handlerExecuteOnDispatcherThread != null)
            {
                handlerExecuteOnDispatcherThread.post(new AsyncDispatchTask(aevent));
            }
        }

        protected void onLooperPrepared()
        {
            handlerExecuteOnDispatcherThread = new Handler();
        }



/*
        static int access$1002(DispatcherThread dispatcherthread, int i)
        {
            dispatcherthread.maxEventsPerRequest = i;
            return i;
        }

*/






/*
        static AsyncDispatchTask access$402(DispatcherThread dispatcherthread, AsyncDispatchTask asyncdispatchtask)
        {
            dispatcherthread.currentTask = asyncdispatchtask;
            return asyncdispatchtask;
        }

*/



/*
        static int access$502(DispatcherThread dispatcherthread, int i)
        {
            dispatcherthread.lastStatusCode = i;
            return i;
        }

*/



/*
        static long access$602(DispatcherThread dispatcherthread, long l)
        {
            dispatcherthread.retryInterval = l;
            return l;
        }

*/


/*
        static long access$630(DispatcherThread dispatcherthread, long l)
        {
            long l1 = l * dispatcherthread.retryInterval;
            dispatcherthread.retryInterval = l1;
            return l1;
        }

*/




        private DispatcherThread(Dispatcher.Callbacks callbacks1, PipelinedRequester pipelinedrequester, String s, String s1, NetworkDispatcher networkdispatcher)
        {
            super("DispatcherThread");
            maxEventsPerRequest = 30;
            currentTask = null;
            callbacks = callbacks1;
            referrer = s;
            userAgent = s1;
            pipelinedRequester = pipelinedrequester;
            requesterCallBacks = new RequesterCallbacks();
            pipelinedRequester.installCallbacks(requesterCallBacks);
            parent = networkdispatcher;
        }


        private DispatcherThread(Dispatcher.Callbacks callbacks1, String s, String s1, NetworkDispatcher networkdispatcher)
        {
            this(callbacks1, new PipelinedRequester(NetworkDispatcher.GOOGLE_ANALYTICS_HOST), s, s1, networkdispatcher);
        }

    }

    private class DispatcherThread.AsyncDispatchTask
        implements Runnable
    {

        private final LinkedList events = new LinkedList();
        final DispatcherThread this$0;

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
                basichttprequest.addHeader("Host", NetworkDispatcher.GOOGLE_ANALYTICS_HOST.getHostName());
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
            InterruptedException interruptedexception;
            interruptedexception;
            Log.w("GoogleAnalyticsTracker", "Couldn't sleep.", interruptedexception);
_L3:
            pipelinedRequester.finishedCurrentRequests();
            callbacks.dispatchFinished();
            currentTask = null;
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

        public DispatcherThread.AsyncDispatchTask(Event aevent[])
        {
            this$0 = DispatcherThread.this;
            super();
            Collections.addAll(events, aevent);
        }
    }

    private class DispatcherThread.RequesterCallbacks
        implements PipelinedRequester.Callbacks
    {

        final DispatcherThread this$0;

        public void pipelineModeChanged(boolean flag)
        {
            if (flag)
            {
                maxEventsPerRequest = 30;
                return;
            } else
            {
                maxEventsPerRequest = 1;
                return;
            }
        }

        public void requestSent()
        {
            Event event;
            if (currentTask != null)
            {
                if ((event = currentTask.removeNextEvent()) != null)
                {
                    callbacks.eventDispatched(event.eventId);
                    return;
                }
            }
        }

        public void serverError(int i)
        {
            lastStatusCode = i;
        }

        private DispatcherThread.RequesterCallbacks()
        {
            this$0 = DispatcherThread.this;
            super();
        }

    }


    private static final HttpHost GOOGLE_ANALYTICS_HOST = new HttpHost("www.google-analytics.com", 80);
    private static final int MAX_EVENTS_PER_PIPELINE = 30;
    private static final int MAX_SEQUENTIAL_REQUESTS = 5;
    private static final long MIN_RETRY_INTERVAL = 2L;
    private static final String USER_AGENT_TEMPLATE = "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)";
    private DispatcherThread dispatcherThread;
    private boolean dryRun;
    private final String userAgent;

    public NetworkDispatcher()
    {
        this("GoogleAnalytics", "1.2");
    }

    public NetworkDispatcher(String s, String s1)
    {
        dryRun = false;
        Locale locale = Locale.getDefault();
        Object aobj[] = new Object[7];
        aobj[0] = s;
        aobj[1] = s1;
        aobj[2] = android.os.Build.VERSION.RELEASE;
        String s2;
        String s3;
        if (locale.getLanguage() != null)
        {
            s2 = locale.getLanguage().toLowerCase();
        } else
        {
            s2 = "en";
        }
        aobj[3] = s2;
        if (locale.getCountry() != null)
        {
            s3 = locale.getCountry().toLowerCase();
        } else
        {
            s3 = "";
        }
        aobj[4] = s3;
        aobj[5] = Build.MODEL;
        aobj[6] = Build.ID;
        userAgent = String.format("%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)", aobj);
    }

    public void dispatchEvents(Event aevent[])
    {
        if (dispatcherThread != null)
        {
            dispatcherThread.dispatchEvents(aevent);
        }
    }

    String getUserAgent()
    {
        return userAgent;
    }

    public void init(Dispatcher.Callbacks callbacks, PipelinedRequester pipelinedrequester, String s)
    {
        stop();
        dispatcherThread = new DispatcherThread(callbacks, pipelinedrequester, s, userAgent, this);
        dispatcherThread.start();
    }

    public void init(Dispatcher.Callbacks callbacks, String s)
    {
        stop();
        dispatcherThread = new DispatcherThread(callbacks, s, userAgent, this);
        dispatcherThread.start();
    }

    public boolean isDryRun()
    {
        return dryRun;
    }

    public void setDryRun(boolean flag)
    {
        dryRun = flag;
    }

    public void stop()
    {
        if (dispatcherThread != null && dispatcherThread.getLooper() != null)
        {
            dispatcherThread.getLooper().quit();
            dispatcherThread = null;
        }
    }

    public void waitForThreadLooper()
    {
        dispatcherThread.getLooper();
    }


}
