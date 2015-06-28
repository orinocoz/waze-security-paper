// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.content.DialogInterface;

// Referenced classes of package com.waze:
//            MsgBox

class nit>
    implements android.content.rface.OnCancelListener
{

    final MsgBox this$0;
    private final long val$callback;
    private final int val$cancelValue;
    private final long val$context;
    private final int val$defaultOption;
    private final boolean val$isCancellable;
    private final int val$valueOne;
    private final int val$valueTwo;

    public void onCancel(DialogInterface dialoginterface)
    {
        if (val$isCancellable)
        {
            MsgBox.access$11(MsgBox.this, (Dialog)dialoginterface, val$callback, val$context, val$cancelValue);
            return;
        }
        MsgBox msgbox = MsgBox.this;
        Dialog dialog = (Dialog)dialoginterface;
        long l = val$callback;
        long l1 = val$context;
        int i;
        if (val$defaultOption == 0)
        {
            i = val$valueOne;
        } else
        {
            i = val$valueTwo;
        }
        MsgBox.access$11(msgbox, dialog, l, l1, i);
    }

    logInterface()
    {
        this$0 = final_msgbox;
        val$isCancellable = flag;
        val$callback = l;
        val$context = l1;
        val$cancelValue = i;
        val$defaultOption = j;
        val$valueOne = k;
        val$valueTwo = I.this;
        super();
    }
}
