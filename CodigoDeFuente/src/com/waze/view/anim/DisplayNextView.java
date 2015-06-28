// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.view.animation.Animation;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.view.anim:
//            SwapViews

public final class DisplayNextView
    implements android.view.animation.Animation.AnimationListener
{

    RelativeLayout firstLayout;
    private boolean mCurrentView;
    RelativeLayout secondLayout;

    public DisplayNextView(boolean flag, RelativeLayout relativelayout, RelativeLayout relativelayout1)
    {
        mCurrentView = flag;
        firstLayout = relativelayout;
        secondLayout = relativelayout1;
    }

    public void onAnimationEnd(Animation animation)
    {
        firstLayout.post(new SwapViews(mCurrentView, firstLayout, secondLayout));
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }
}
