// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.content.DialogInterface;
import android.view.View;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls1
    implements android.content.e.OnClickListener
{

    final  this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            NativeManager.Post(new Runnable() {

                final MainMenu._cls12._cls1 this$2;

                public void run()
                {
                    AppService.getNativeManager().StopFollow();
                }

            
            {
                this$2 = MainMenu._cls12._cls1.this;
                super();
            }
            });
            findViewById(0x7f0903c7).setVisibility(8);
            close();
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/menus/MainMenu$12

/* anonymous class */
    class MainMenu._cls12
        implements android.view.View.OnClickListener
    {

        final MainMenu this$0;

        public void onClick(View view)
        {
            MainMenu._cls12._cls1 _lcls1 = new MainMenu._cls12._cls1();
            MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(MainMenu.access$2(MainMenu.this).getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), MainMenu.access$2(MainMenu.this).getLanguageString(DisplayStrings.DS_WILL_NO_LONGER_TRACK_YOU_ON_THE_MAP), true, _lcls1, MainMenu.access$2(MainMenu.this).getLanguageString(DisplayStrings.DS_YES), MainMenu.access$2(MainMenu.this).getLanguageString(DisplayStrings.DS_NO), -1);
        }


            
            {
                this$0 = MainMenu.this;
                super();
            }
    }

}
