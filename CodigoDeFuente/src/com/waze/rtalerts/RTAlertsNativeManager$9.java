// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsCommentsEditor

class t> extends RunnableUICallback
{

    boolean mValidated;
    final RTAlertsNativeManager this$0;
    private final int val$alertId;
    private final Activity val$context4Result;

    public void callback()
    {
        if (mValidated)
        {
            RTAlertsCommentsEditor.start(val$context4Result, val$alertId);
        }
    }

    public void event()
    {
        mValidated = RTAlertsNativeManager.access$7(RTAlertsNativeManager.this, val$alertId);
    }

    ()
    {
        this$0 = final_rtalertsnativemanager;
        val$alertId = i;
        val$context4Result = Activity.this;
        super();
    }
}
