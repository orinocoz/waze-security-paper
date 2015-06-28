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
    implements android.view.animation.onListener
{

    private final android.view.animation.onListener val$listener;
    private final View val$view;

    public void onAnimationEnd(Animation animation)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.9F, 0.0F, 1.1F, 0.0F);
        scaleanimation.setDuration(200);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.1F, 1, 0.9F, 1, -0.1F, 1, 1.0F);
        translateanimation.setDuration(200);
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(val$listener);
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
        val$listener = onlistener;
        val$view = view1;
        super();
    }
}
