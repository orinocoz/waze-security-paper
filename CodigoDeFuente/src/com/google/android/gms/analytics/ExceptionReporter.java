// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.Context;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.analytics:
//            StandardExceptionParser, aa, ExceptionParser, Tracker, 
//            GoogleAnalytics

public class ExceptionReporter
    implements Thread.UncaughtExceptionHandler
{

    private final Context mContext;
    private final Thread.UncaughtExceptionHandler tL;
    private final Tracker tM;
    private ExceptionParser tN;

    public ExceptionReporter(Tracker tracker, Thread.UncaughtExceptionHandler uncaughtexceptionhandler, Context context)
    {
        if (tracker == null)
        {
            throw new NullPointerException("tracker cannot be null");
        }
        if (context == null)
        {
            throw new NullPointerException("context cannot be null");
        }
        tL = uncaughtexceptionhandler;
        tM = tracker;
        tN = new StandardExceptionParser(context, new ArrayList());
        mContext = context.getApplicationContext();
        StringBuilder stringbuilder = (new StringBuilder()).append("ExceptionReporter created, original handler is ");
        String s;
        if (uncaughtexceptionhandler == null)
        {
            s = "null";
        } else
        {
            s = uncaughtexceptionhandler.getClass().getName();
        }
        aa.C(stringbuilder.append(s).toString());
    }

    Thread.UncaughtExceptionHandler cy()
    {
        return tL;
    }

    public ExceptionParser getExceptionParser()
    {
        return tN;
    }

    public void setExceptionParser(ExceptionParser exceptionparser)
    {
        tN = exceptionparser;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        String s = "UncaughtException";
        if (tN != null)
        {
            String s1;
            if (thread != null)
            {
                s1 = thread.getName();
            } else
            {
                s1 = null;
            }
            s = tN.getDescription(s1, throwable);
        }
        aa.C((new StringBuilder()).append("Tracking Exception: ").append(s).toString());
        tM.send((new HitBuilders.ExceptionBuilder()).setDescription(s).setFatal(true).build());
        GoogleAnalytics.getInstance(mContext).dispatchLocalHits();
        if (tL != null)
        {
            aa.C("Passing exception to original handler.");
            tL.uncaughtException(thread, throwable);
        }
    }
}
