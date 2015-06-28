// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze:
//            MsgBox, AppService, NativeManager

class it>
    implements Runnable
{

    final ismiss this$1;
    private final Dialog val$dialog;

    public void run()
    {
        val$dialog.dismiss();
    }

    it>()
    {
        this$1 = final_it>;
        val$dialog = Dialog.this;
        super();
    }

    // Unreferenced inner class com/waze/MsgBox$8

/* anonymous class */
    class MsgBox._cls8
        implements Runnable
    {

        private final int val$nType;

        public void run()
        {
            if (ActivityBase.getRunningCount() < 1 || AppService.getActiveActivity() == null)
            {
                return;
            }
            AppService.getNativeManager();
            Dialog dialog1 = new Dialog(AppService.getActiveActivity(), 0x7f060057);
            AppService.getActiveActivity().setDialog(dialog1);
            dialog1.setContentView(0x7f03008a);
            if (nType == 0)
            {
                ((TextView)dialog1.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_ON));
                ((ImageView)dialog1.findViewById(0x7f090408)).setImageResource(0x7f020063);
            } else
            if (nType == 2)
            {
                ((TextView)dialog1.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_OFF));
                ((ImageView)dialog1.findViewById(0x7f090408)).setImageResource(0x7f020062);
            } else
            {
                ((TextView)dialog1.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALERTS_ONLY));
                ((ImageView)dialog1.findViewById(0x7f090408)).setImageResource(0x7f02004d);
            }
            (new Handler()).postDelayed(dialog1. new MsgBox._cls8._cls1(), 1000L);
            dialog1.show();
        }

            
            {
                nType = i;
                super();
            }
    }

}
