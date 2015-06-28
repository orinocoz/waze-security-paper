// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager

class t> extends RunnableUICallback
{

    int mCount;
    final RTAlertsNativeManager this$0;
    private final lertsCountHandler val$dataHandler;

    public void callback()
    {
        val$dataHandler.handler(mCount);
    }

    public void event()
    {
        mCount = RTAlertsNativeManager.access$4(RTAlertsNativeManager.this);
    }

    lertsCountHandler()
    {
        this$0 = final_rtalertsnativemanager;
        val$dataHandler = lertsCountHandler.this;
        super();
    }
}
