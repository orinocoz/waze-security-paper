// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.settings.SettingsDialogListener;
import com.waze.settings.SettingsUtils;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls2
    implements SettingsDialogListener
{

    final ._cls0 this$2;

    public void onComplete(final int position)
    {
        NativeManager.Post(new Runnable() {

            final MainMenu._cls3._cls1._cls1 this$3;
            private final int val$position;

            public void run()
            {
                MainMenu.access$2(this$0).toggleNavigationVoiceNTV(position);
            }

            
            {
                this$3 = MainMenu._cls3._cls1._cls1.this;
                position = i;
                super();
            }
        });
        MainMenu.access$3(_fld0, true, position);
    }


    ._cls0()
    {
        this$2 = this._cls2.this;
        super();
    }

    // Unreferenced inner class com/waze/menus/MainMenu$3

/* anonymous class */
    class MainMenu._cls3
        implements android.view.View.OnClickListener
    {

        final MainMenu this$0;

        public void onClick(View view)
        {
            Analytics.log("MAIN_MENU_CLICK", "VAUE", "MUTE_TOGGLE");
            AppService.Post(new MainMenu._cls3._cls1());
        }


            
            {
                this$0 = MainMenu.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/menus/MainMenu$3$1

/* anonymous class */
    class MainMenu._cls3._cls1
        implements Runnable
    {

        final MainMenu._cls3 this$1;

        public void run()
        {
            SettingsUtils.showSubmenu(AppService.getMainActivity(), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUND), MainMenu.access$1(this$0), new MainMenu._cls3._cls1._cls1());
        }


            
            {
                this$1 = MainMenu._cls3.this;
                super();
            }
    }

}
