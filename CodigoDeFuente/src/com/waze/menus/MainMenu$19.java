// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.content.DialogInterface;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls0
    implements android.content.ace.OnShowListener
{

    final MainMenu this$0;

    public void onShow(DialogInterface dialoginterface)
    {
        Analytics.log("MAIN_MENU_SHOWN");
        setOnShowListener(null);
    }

    face()
    {
        this$0 = MainMenu.this;
        super();
    }
}
