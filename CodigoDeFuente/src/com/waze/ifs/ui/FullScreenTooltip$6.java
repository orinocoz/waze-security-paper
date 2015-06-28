// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.animation.Animation;
import android.widget.PopupWindow;

// Referenced classes of package com.waze.ifs.ui:
//            FullScreenTooltip

class this._cls0
    implements android.view.animation.istener
{

    final FullScreenTooltip this$0;

    public void onAnimationEnd(Animation animation)
    {
        mWindow.dismiss();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    mationListener()
    {
        this$0 = FullScreenTooltip.this;
        super();
    }
}
