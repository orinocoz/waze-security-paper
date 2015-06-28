// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.view.anim.AnimationUtils;

// Referenced classes of package com.waze:
//            LayoutManager

class t
    implements Runnable
{

    final LayoutManager this$0;
    private final LinearLayout val$currentTooltip;
    private final LinearLayout val$currentTooltip_ls;
    private final String val$text;

    private void showAnimatedTooltip(LinearLayout linearlayout, String s)
    {
        linearlayout.setVisibility(0);
        linearlayout.bringToFront();
        ((TextView)linearlayout.findViewById(0x7f09072b)).setText(s);
        AnimationUtils.slideTooltip(linearlayout);
    }

    public void run()
    {
        showAnimatedTooltip(val$currentTooltip, val$text);
        if (val$currentTooltip_ls != null)
        {
            showAnimatedTooltip(val$currentTooltip_ls, val$text);
        }
    }

    t()
    {
        this$0 = final_layoutmanager;
        val$currentTooltip = linearlayout;
        val$text = s;
        val$currentTooltip_ls = LinearLayout.this;
        super();
    }
}
