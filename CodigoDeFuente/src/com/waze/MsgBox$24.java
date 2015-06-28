// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.content.DialogInterface;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze:
//            MsgBox

class nit>
    implements android.content.rface.OnCancelListener
{

    final MsgBox this$0;
    private final long val$callback;
    private final long val$context;

    public void onCancel(DialogInterface dialoginterface)
    {
        if (!MsgBox.access$14(MsgBox.this))
        {
            MsgBox.access$12(MsgBox.this, true);
            Analytics.log("TRIP_SUGGEST_SHOWN", "ACTION|TYPE", (new StringBuilder("X|")).append(MsgBox.access$13(MsgBox.this)).toString());
            MsgBox.access$11(MsgBox.this, (Dialog)dialoginterface, val$callback, val$context, 4);
        }
    }

    logInterface()
    {
        this$0 = final_msgbox;
        val$callback = l;
        val$context = J.this;
        super();
    }
}
