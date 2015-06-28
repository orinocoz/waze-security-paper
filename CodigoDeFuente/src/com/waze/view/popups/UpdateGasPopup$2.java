// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.view.popups:
//            UpdateGasPopup

class val.lcontext
    implements android.view.ner
{

    final UpdateGasPopup this$0;
    private final long val$cb;
    private final long val$lcontext;

    public void onClick(View view)
    {
        hide();
        NativeManager.getInstance().NativeManagerCallback(4, val$cb, val$lcontext);
    }

    ()
    {
        this$0 = final_updategaspopup;
        val$cb = l;
        val$lcontext = J.this;
        super();
    }
}
