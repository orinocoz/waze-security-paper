// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.text.Editable;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

class val.change
    implements Runnable
{

    final val.span this$1;
    private final int val$change;
    private final val.span val$span;
    private final Editable val$text;

    public void run()
    {
        int i = val$text.getSpanStart(val$span);
        int j = val$text.getSpanEnd(val$span);
        val$span.span(val$span.span() + val$change);
        if (val$span.span() > 0)
        {
            val$text.replace(i, j, val$span.span);
            return;
        } else
        {
            val$text.delete(i, j);
            val$text.removeSpan(val$span);
            return;
        }
    }

    ()
    {
        this$1 = final_;
        val$text = editable;
        val$span = 1;
        val$change = I.this;
        super();
    }
}
