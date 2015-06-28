// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.view.View;
import com.waze.analytics.Analytics;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze:
//            MsgBox

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
        if (((TimerView)val$dialog.findViewById(0x7f09022f)).hasExpired())
        {
            s = "TIMEOUT|";
        } else
        {
            s = "NO|";
        }
        Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder(String.valueOf(s))).append(MsgBox.access$13(MsgBox.this)).toString());
        MsgBox.access$11(MsgBox.this, val$dialog, val$callback, val$context, 4);
    }

    Analytics()
    {
        this$0 = final_msgbox;
        val$dialog = dialog1;
        val$callback = l;
        val$context = J.this;
        super();
    }
}
