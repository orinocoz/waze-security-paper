// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.animation.Animation;
import android.widget.LinearLayout;

// Referenced classes of package com.waze:
//            LayoutManager, TooltipType

class val.type
    implements android.view.animation.onListener
{

    final LayoutManager this$0;
    private final LinearLayout val$tooltipLayout;
    private final TooltipType val$type;

    public void onAnimationEnd(Animation animation)
    {
        val$tooltipLayout.setVisibility(8);
        toolTipClosed(val$type);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    t()
    {
        this$0 = final_layoutmanager;
        val$tooltipLayout = linearlayout;
        val$type = TooltipType.this;
        super();
    }
}
