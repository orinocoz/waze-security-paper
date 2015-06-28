// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.view.animation.Animation;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls0
    implements android.view.animation.imationListener
{

    final MainMenu this$0;

    public void onAnimationEnd(Animation animation)
    {
        Analytics.log("MAIN_MENU_SHOWN");
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ation()
    {
        this$0 = MainMenu.this;
        super();
    }
}
