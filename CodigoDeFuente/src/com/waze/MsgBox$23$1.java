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

class t>
    implements Runnable
{

    final val.context this$1;
    private final long val$callback;
    private final long val$context;

    public void run()
    {
        MsgBox.access$10(_fld0, 3, val$callback, val$context);
    }

    t>()
    {
        this$1 = final_t>;
        val$callback = l;
        val$context = J.this;
        super();
    }

    // Unreferenced inner class com/waze/MsgBox$23

/* anonymous class */
    class MsgBox._cls23
        implements android.view.View.OnClickListener
    {

        final MsgBox this$0;
        private final long val$callback;
        private final long val$context;
        private final Dialog val$dialog;

        public void onClick(View view)
        {
            MsgBox.access$12(MsgBox.this, true);
            String s;
            if (((TimerView)dialog.findViewById(0x7f090232)).hasExpired())
            {
                s = "TIMEOUT|";
            } else
            {
                s = "YES|";
            }
            Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder(String.valueOf(s))).append(MsgBox.access$13(MsgBox.this)).toString());
            ((TimerView)dialog.findViewById(0x7f090232)).stop();
            ((TimerView)dialog.findViewById(0x7f09022f)).stop();
            try
            {
                dialog.dismiss();
            }
            catch (Exception exception) { }
            if (callback != -1L)
            {
                NativeManager.Post(context. new MsgBox._cls23._cls1());
            }
        }


            
            {
                this$0 = final_msgbox;
                dialog = dialog1;
                callback = l;
                context = J.this;
                super();
            }
    }

}
