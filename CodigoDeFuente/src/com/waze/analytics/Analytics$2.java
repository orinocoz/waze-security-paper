// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.analytics;

import com.waze.NativeManager;

// Referenced classes of package com.waze.analytics:
//            Analytics

class val.nm
    implements Runnable
{

    private final NativeManager val$nm;

    public void run()
    {
        val$nm.logAnalyticsAdsContextClearNTV();
    }

    ()
    {
        val$nm = nativemanager;
        super();
    }
}
