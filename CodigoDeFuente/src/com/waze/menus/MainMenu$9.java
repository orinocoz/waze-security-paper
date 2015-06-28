// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls0
    implements android.view.kListener
{

    final MainMenu this$0;

    public void onClick(View view)
    {
        Analytics.log("MAIN_MENU_CLICK", "VAUE", "STOP_NAV");
        NativeManager.Post(new Runnable() {

            final MainMenu._cls9 this$1;

            public void run()
            {
                MainMenu.access$2(this$0).stopNavigationNTV();
            }

            
            {
                this$1 = MainMenu._cls9.this;
                super();
            }
        });
        close();
    }


    _cls1.this._cls1()
    {
        this$0 = MainMenu.this;
        super();
    }
}
