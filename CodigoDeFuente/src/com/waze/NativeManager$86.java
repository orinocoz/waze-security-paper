// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.rtalerts.RTAlertsAlertData;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.nTimeout
    implements Runnable
{

    final NativeManager this$0;
    private final RTAlertsAlertData val$alertData;
    private final int val$nTimeout;
    private final String val$sUserImageUrl;
    private final int val$x;
    private final int val$y;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            LayoutManager layoutmanager = mainactivity.getLayoutMgr();
            if (layoutmanager == null)
            {
                return;
            } else
            {
                layoutmanager.openAlertPopup(val$alertData, val$x, val$y, val$sUserImageUrl, val$nTimeout);
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot open alert. Main activity is not available");
            return;
        }
    }

    AlertData()
    {
        this$0 = final_nativemanager;
        val$alertData = rtalertsalertdata;
        val$x = i;
        val$y = j;
        val$sUserImageUrl = s;
        val$nTimeout = I.this;
        super();
    }
}
