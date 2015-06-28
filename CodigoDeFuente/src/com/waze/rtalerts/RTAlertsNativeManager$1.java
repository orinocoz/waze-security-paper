// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsCommentData

class t> extends RunnableUICallback
{

    RTAlertsCommentData mData[];
    final RTAlertsNativeManager this$0;
    private final int val$alertId;
    private final lertsCommentDataHandler val$dataHandler;

    public void callback()
    {
        val$dataHandler.handler(mData);
    }

    public void event()
    {
        mData = RTAlertsNativeManager.access$0(RTAlertsNativeManager.this, val$alertId);
    }

    lertsCommentDataHandler()
    {
        this$0 = final_rtalertsnativemanager;
        val$alertId = i;
        val$dataHandler = lertsCommentDataHandler.this;
        super();
    }
}
