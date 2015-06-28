// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import com.waze.analytics.Analytics;
import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.push:
//            Alerter

class bleExecutor extends RunnableExecutor
{

    private final String val$analyticsInfoValue;

    public void event()
    {
        Analytics.log("PUSH_MESSAGE_RECEIVED", "VAUE", val$analyticsInfoValue);
    }

    tics()
    {
        val$analyticsInfoValue = s;
        super();
    }
}
