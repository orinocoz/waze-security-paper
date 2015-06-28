// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls1
    implements Runnable
{

    final avigationNTV this$1;

    public void run()
    {
        MainMenu.access$2(_fld0).stopNavigationNTV();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/menus/MainMenu$9

/* anonymous class */
    class MainMenu._cls9
        implements android.view.View.OnClickListener
    {

        final MainMenu this$0;

        public void onClick(View view)
        {
            Analytics.log("MAIN_MENU_CLICK", "VAUE", "STOP_NAV");
            NativeManager.Post(new MainMenu._cls9._cls1());
            close();
        }


            
            {
                this$0 = MainMenu.this;
                super();
            }
    }

}
