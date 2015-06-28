// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.view.anim:
//            Flip3dAnimation

public final class SwapViews
    implements Runnable
{

    RelativeLayout firstLayout;
    private boolean mIsFirstView;
    RelativeLayout secondLayout;

    public SwapViews(boolean flag, RelativeLayout relativelayout, RelativeLayout relativelayout1)
    {
        mIsFirstView = flag;
        firstLayout = relativelayout;
        secondLayout = relativelayout1;
    }

    public void run()
    {
        float f = (float)firstLayout.getWidth() / 2.0F;
        float f1 = (float)secondLayout.getHeight() / 2.0F;
        Flip3dAnimation flip3danimation;
        if (mIsFirstView)
        {
            firstLayout.setVisibility(8);
            secondLayout.setVisibility(0);
            secondLayout.requestFocus();
            flip3danimation = new Flip3dAnimation(-90F, 0.0F, f, f1);
        } else
        {
            secondLayout.setVisibility(8);
            firstLayout.setVisibility(0);
            firstLayout.requestFocus();
            flip3danimation = new Flip3dAnimation(90F, 0.0F, f, f1);
        }
        flip3danimation.setDuration(500L);
        flip3danimation.setFillAfter(true);
        flip3danimation.setInterpolator(new DecelerateInterpolator());
        if (mIsFirstView)
        {
            secondLayout.startAnimation(flip3danimation);
            return;
        } else
        {
            firstLayout.startAnimation(flip3danimation);
            return;
        }
    }
}
