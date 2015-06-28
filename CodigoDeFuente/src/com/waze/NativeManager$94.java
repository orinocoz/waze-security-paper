// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.rtalerts.RTAlertsThumbsUpData;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.nTimeOut
    implements Runnable
{

    final NativeManager this$0;
    private final String val$UserImageUrl;
    private final int val$nTimeOut;
    private final RTAlertsThumbsUpData val$thumbsUpData;

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
                layoutmanager.openBeepPopup(val$thumbsUpData, val$UserImageUrl, val$nTimeOut);
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot open thumbs up Popup. Main activity is not available");
            return;
        }
    }

    ThumbsUpData()
    {
        this$0 = final_nativemanager;
        val$thumbsUpData = rtalertsthumbsupdata;
        val$UserImageUrl = s;
        val$nTimeOut = I.this;
        super();
    }
}
