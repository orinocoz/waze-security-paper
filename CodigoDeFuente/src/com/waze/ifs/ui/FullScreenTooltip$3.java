// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.widget.CompoundButton;

// Referenced classes of package com.waze.ifs.ui:
//            FullScreenTooltip

class this._cls0
    implements android.widget.ckedChangeListener
{

    final FullScreenTooltip this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        FullScreenTooltip fullscreentooltip = FullScreenTooltip.this;
        boolean flag1;
        if (flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        FullScreenTooltip.access$2(fullscreentooltip, flag1);
    }

    kedChangeListener()
    {
        this$0 = FullScreenTooltip.this;
        super();
    }
}
