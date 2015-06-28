// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.view.View;
import com.waze.analytics.Analytics;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze:
//            MsgBox, NativeManager

class nit>
    implements android.view.ckListener
{

    final MsgBox this$0;
    private final long val$callback;
    private final long val$context;
    private final Dialog val$dialog;

    public void onClick(View view)
    {
        MsgBox.access$12(MsgBox.this, true);
        String s;
        if (((TimerView)val$dialog.findViewById(0x7f090232)).hasExpired())
        {
            s = "TIMEOUT|";
        } else
        {
            s = "YES|";
        }
        Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder(String.valueOf(s))).append(MsgBox.access$13(MsgBox.this)).toString());
        ((TimerView)val$dialog.findViewById(0x7f090232)).stop();
        ((TimerView)val$dialog.findViewById(0x7f09022f)).stop();
        try
        {
            val$dialog.dismiss();
        }
        catch (Exception exception) { }
        if (val$callback != -1L)
        {
            NativeManager.Post(new Runnable() {

                final MsgBox._cls23 this$1;
                private final long val$callback;
                private final long val$context;

                public void run()
                {
                    MsgBox.access$10(this$0, 3, callback, context);
                }

            
            {
                this$1 = MsgBox._cls23.this;
                callback = l;
                context = l1;
                super();
            }
            });
        }
    }


    nit>()
    {
        this$0 = final_msgbox;
        val$dialog = dialog1;
        val$callback = l;
        val$context = J.this;
        super();
    }
}
