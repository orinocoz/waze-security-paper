// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.Logger;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager

class val.alertId
    implements Runnable
{

    final RTAlertsNativeManager this$0;
    private final int val$alertId;

    public void run()
    {
        if (val$alertId != -1)
        {
            RTAlertsNativeManager.access$3(RTAlertsNativeManager.this, val$alertId);
            return;
        } else
        {
            Logger.ee("Invalid alertId was supplied - cannot show PopUp");
            return;
        }
    }

    ()
    {
        this$0 = final_rtalertsnativemanager;
        val$alertId = I.this;
        super();
    }
}
