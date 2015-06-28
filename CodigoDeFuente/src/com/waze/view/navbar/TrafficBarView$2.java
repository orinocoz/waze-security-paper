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
    implements android.view.OnGlobalLayoutListener
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
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final TrafficBarView._cls2 this$1;
            private final int val$timeout;

            public void onAnimationEnd(Animation animation)
            {
                TrafficBarView.access$2(this$0, false);
                TrafficBarView.access$3(this$0, true);
                if (timeout > 0)
                {
                    postDelayed(TrafficBarView.access$4(this$0), timeout);
                }
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$1 = TrafficBarView._cls2.this;
                timeout = i;
                super();
            }
        });
        TrafficBarView.access$1(TrafficBarView.this).startAnimation(animationset);
    }


    _cls1.val.timeout()
    {
        this$0 = final_trafficbarview;
        val$timeout = I.this;
        super();
    }
}
