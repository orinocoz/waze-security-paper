// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze:
//            LayoutManager, TooltipType

class this._cls0
    implements android.view.ner
{

    final LayoutManager this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        LayoutManager.access$3(LayoutManager.this, LayoutManager.access$2(LayoutManager.this), TooltipType.FRIENDS);
        LayoutManager.access$3(LayoutManager.this, LayoutManager.access$5(LayoutManager.this), TooltipType.MAIN_MENU);
        LayoutManager.access$9(LayoutManager.this).findViewById(0x7f0903c1).setVisibility(8);
        return false;
    }

    out()
    {
        this$0 = LayoutManager.this;
        super();
    }
}
