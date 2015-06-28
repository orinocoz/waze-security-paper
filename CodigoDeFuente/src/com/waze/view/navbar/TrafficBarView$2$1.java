// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.navbar;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.RotateAnimation;

// Referenced classes of package com.waze.view.navbar:
//            TrafficBarView

class val.timeout
    implements android.view.animation.Listener
{

    final val.timeout this$1;
    private final int val$timeout;

    public void onAnimationEnd(Animation animation)
    {
        TrafficBarView.access$2(_fld0, false);
        TrafficBarView.access$3(_fld0, true);
        if (val$timeout > 0)
        {
            postDelayed(TrafficBarView.access$4(_fld0), val$timeout);
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    l.timeout()
    {
        this$1 = final_timeout1;
        val$timeout = I.this;
        super();
    }

    // Unreferenced inner class com/waze/view/navbar/TrafficBarView$2

/* anonymous class */
    class TrafficBarView._cls2
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        final TrafficBarView this$0;
        private final int val$timeout;

        public void onGlobalLayout()
        {
            TrafficBarView.access$1(TrafficBarView.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
            AnimationSet animationset = new AnimationSet(true);
            animationset.setDuration(200L);
            animationset.setFillBefore(true);
            animationset.setInterpolator(new DecelerateInterpolator());
            animationset.addAnimation(new AlphaAnimation(0.0F, 1.0F));
            animationset.addAnimation(new RotateAnimation(80F, 0.0F, 1, 0.0F, 1, 0.5F));
            animationset.setAnimationListener(timeout. new TrafficBarView._cls2._cls1());
            TrafficBarView.access$1(TrafficBarView.this).startAnimation(animationset);
        }


            
            {
                this$0 = final_trafficbarview;
                timeout = I.this;
                super();
            }
    }

}
