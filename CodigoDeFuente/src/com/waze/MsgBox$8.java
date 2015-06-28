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

class init>
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
        final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f060057);
        AppService.getActiveActivity().setDialog(dialog);
        dialog.setContentView(0x7f03008a);
        if (val$nType == 0)
        {
            ((TextView)dialog.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_ON));
            ((ImageView)dialog.findViewById(0x7f090408)).setImageResource(0x7f020063);
        } else
        if (val$nType == 2)
        {
            ((TextView)dialog.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_OFF));
            ((ImageView)dialog.findViewById(0x7f090408)).setImageResource(0x7f020062);
        } else
        {
            ((TextView)dialog.findViewById(0x7f09022b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALERTS_ONLY));
            ((ImageView)dialog.findViewById(0x7f090408)).setImageResource(0x7f02004d);
        }
        (new Handler()).postDelayed(new Runnable() {

            final MsgBox._cls8 this$1;
            private final Dialog val$dialog;

            public void run()
            {
                dialog.dismiss();
            }

            
            {
                this$1 = MsgBox._cls8.this;
                dialog = dialog1;
                super();
            }
        }, 1000L);
        dialog.show();
    }

    init>()
    {
        val$nType = i;
        super();
    }
}
