// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.view.View;
import com.waze.AppService;
import com.waze.analytics.Analytics;
import com.waze.share.ShareUtility;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls0
    implements android.view.Listener
{

    final MainMenu this$0;

    public void onClick(View view)
    {
        Analytics.log("MAIN_MENU_CLICK", "VAUE", "SHARE_DRIVE");
        ShareUtility.shareLocationOrDrive(AppService.getMainActivity(), 16);
        dismiss();
    }

    ()
    {
        this$0 = MainMenu.this;
        super();
    }
}
