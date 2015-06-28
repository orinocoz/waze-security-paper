// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.widget.PopupWindow;

// Referenced classes of package com.waze.ifs.ui:
//            FullScreenTooltip

class this._cls0 extends PopupWindow
{

    final FullScreenTooltip this$0;

    public void dismiss()
    {
        if (FullScreenTooltip.access$0(FullScreenTooltip.this))
        {
            super.dismiss();
        } else
        if (FullScreenTooltip.access$1(FullScreenTooltip.this) != null)
        {
            FullScreenTooltip.access$1(FullScreenTooltip.this).onCloseClicked();
            return;
        }
    }

    oolTipClicked(Context context)
    {
        this$0 = FullScreenTooltip.this;
        super(context);
    }
}
