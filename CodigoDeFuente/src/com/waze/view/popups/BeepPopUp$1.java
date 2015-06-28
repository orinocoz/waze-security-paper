// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.rtalerts.RTAlertsThumbsUpData;

// Referenced classes of package com.waze.view.popups:
//            BeepPopUp

class this._cls0
    implements Runnable
{

    final BeepPopUp this$0;

    public void run()
    {
        Analytics.log("BEEP_BACK");
        AppService.getNativeManager().sendBeepBackNTV(BeepPopUp.access$0(BeepPopUp.this).mAlertID);
    }

    pData()
    {
        this$0 = BeepPopUp.this;
        super();
    }
}
