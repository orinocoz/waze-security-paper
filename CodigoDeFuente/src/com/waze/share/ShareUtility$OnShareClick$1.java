// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.waze.share:
//            ShareUtility

class val.v
    implements android.view.animation.
{

    final val.v this$1;
    private final View val$v;

    public void onAnimationEnd(Animation animation)
    {
        val$v.clearAnimation();
        val$v.setAlpha(0.5F);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    istener()
    {
        this$1 = final_istener;
        val$v = View.this;
        super();
    }
}
