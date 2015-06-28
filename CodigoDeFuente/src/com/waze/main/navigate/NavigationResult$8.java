// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.view.View;
import com.waze.AppService;
import com.waze.analytics.Analytics;
import com.waze.share.ShareUtility;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements android.view.r
{

    final NavigationResult this$0;

    public void onClick(View view)
    {
        if (NavigationResult.access$10(NavigationResult.this))
        {
            return;
        } else
        {
            Analytics.log("SHARE_PROMOTION_CLICK", null, null);
            NavigationResult.access$7(NavigationResult.this);
            NavigationResult.access$8(NavigationResult.this).findViewById(0x7f0904b4).performClick();
            ShareUtility.shareLocationOrDrive(AppService.getMainActivity(), 16);
            return;
        }
    }

    ()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
