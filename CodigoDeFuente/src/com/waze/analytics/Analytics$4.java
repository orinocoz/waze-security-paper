// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.analytics;

import com.waze.NativeManager;

// Referenced classes of package com.waze.analytics:
//            Analytics

class val.event
    implements Runnable
{

    private final String val$event;
    private final NativeManager val$nm;

    public void run()
    {
        val$nm.logAnalyticsAdsContextNavNTV(val$event);
    }

    ()
    {
        val$nm = nativemanager;
        val$event = s;
        super();
    }
}
