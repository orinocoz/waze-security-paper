// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager

class t> extends RunnableUICallback
{

    final lertsListDataHandler.Data mData = new lertsListDataHandler.Data();
    final RTAlertsNativeManager this$0;
    private final lertsListDataHandler val$dataHandler;

    public void callback()
    {
        val$dataHandler.handler(mData);
    }

    public void event()
    {
        mData.mAlertsData = RTAlertsNativeManager.access$2(RTAlertsNativeManager.this);
    }

    lertsListDataHandler()
    {
        this$0 = final_rtalertsnativemanager;
        val$dataHandler = lertsListDataHandler.this;
        super();
    }
}
