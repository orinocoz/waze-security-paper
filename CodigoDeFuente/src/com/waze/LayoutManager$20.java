// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Dialog;
import android.view.View;

// Referenced classes of package com.waze:
//            LayoutManager

class val.dialog
    implements android.view.ner
{

    final LayoutManager this$0;
    private final Dialog val$dialog;

    public void onClick(View view)
    {
        try
        {
            val$dialog.cancel();
            val$dialog.dismiss();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    istener()
    {
        this$0 = final_layoutmanager;
        val$dialog = Dialog.this;
        super();
    }
}
