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

class val.view
    implements android.view.animation.Listener
{

    final val.view this$1;
    private final android.view.animation.Listener val$listener;
    private final View val$view;

    public void onAnimationEnd(Animation animation)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.02F, 1.0F, 0.97F, 1.0F);
        scaleanimation.setDuration(100L);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.03F, 1, 0.0F);
        translateanimation.setDuration(100L);
        animationset.addAnimation(translateanimation);
        if (val$listener != null)
        {
            animationset.setAnimationListener(val$listener);
        }
        val$view.startAnimation(animationset);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    tionListener()
    {
        this$1 = final_onlistener;
        val$listener = listener1;
        val$view = View.this;
        super();
    }

    // Unreferenced inner class com/waze/view/anim/AnimationUtils$3

/* anonymous class */
    class AnimationUtils._cls3
        implements android.view.animation.Animation.AnimationListener
    {

        private final android.view.animation.Animation.AnimationListener val$listener;
        private final View val$view;

        public void onAnimationEnd(Animation animation)
        {
            AnimationSet animationset = new AnimationSet(true);
            ScaleAnimation scaleanimation = new ScaleAnimation(0.95F, 1.02F, 1.03F, 0.97F);
            scaleanimation.setDuration(100L);
            animationset.addAnimation(scaleanimation);
            TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -0.03F, 1, 0.03F);
            translateanimation.setDuration(100L);
            animationset.addAnimation(translateanimation);
            animationset.setAnimationListener(view. new AnimationUtils._cls3._cls1());
            view.startAnimation(animationset);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

            
            {
                view = view1;
                listener = animationlistener;
                super();
            }
    }

}
