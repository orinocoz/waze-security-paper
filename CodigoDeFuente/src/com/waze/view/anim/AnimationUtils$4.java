// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;

// Referenced classes of package com.waze.view.anim:
//            AnimationUtils

class val.listener
    implements android.view.animation.onListener
{

    private final android.view.animation.onListener val$listener;
    private final View val$view;

    public void onAnimationEnd(Animation animation)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.95F, 1.02F, 1.03F, 0.97F);
        scaleanimation.setDuration(100L);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.05F, 1, -0.02F, 1, -0.03F, 1, 0.03F);
        translateanimation.setDuration(100L);
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final AnimationUtils._cls4 this$1;
            private final android.view.animation.Animation.AnimationListener val$listener;
            private final View val$view;

            public void onAnimationEnd(Animation animation1)
            {
                AnimationSet animationset1 = new AnimationSet(true);
                ScaleAnimation scaleanimation1 = new ScaleAnimation(1.02F, 1.0F, 0.97F, 1.0F);
                scaleanimation1.setDuration(100L);
                animationset1.addAnimation(scaleanimation1);
                TranslateAnimation translateanimation1 = new TranslateAnimation(1, -0.02F, 1, 0.0F, 1, 0.03F, 1, 0.0F);
                translateanimation1.setDuration(100L);
                animationset1.addAnimation(translateanimation1);
                if (listener != null)
                {
                    animationset1.setAnimationListener(listener);
                }
                view.startAnimation(animationset1);
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
            }

            
            {
                this$1 = AnimationUtils._cls4.this;
                listener = animationlistener;
                view = view1;
                super();
            }
        });
        val$view.startAnimation(animationset);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    mationListener()
    {
        val$view = view1;
        val$listener = onlistener;
        super();
    }
}
