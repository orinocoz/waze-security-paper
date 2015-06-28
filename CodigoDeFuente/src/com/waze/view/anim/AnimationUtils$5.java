// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import com.waze.AppService;

// Referenced classes of package com.waze.view.anim:
//            AnimationUtils

class val.textTranslateAnimation
    implements android.view.animation.onListener
{

    private final TranslateAnimation val$textTranslateAnimation;
    private final View val$toolTipLayout;

    public void onAnimationEnd(Animation animation)
    {
        AnimationUtils.access$0(val$toolTipLayout);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        AppService.Post(new Runnable() {

            final AnimationUtils._cls5 this$1;
            private final TranslateAnimation val$textTranslateAnimation;
            private final View val$toolTipLayout;

            public void run()
            {
                toolTipLayout.findViewById(0x7f09072b).startAnimation(textTranslateAnimation);
            }

            
            {
                this$1 = AnimationUtils._cls5.this;
                toolTipLayout = view;
                textTranslateAnimation = translateanimation;
                super();
            }
        }, 50L);
    }

    ation()
    {
        val$toolTipLayout = view;
        val$textTranslateAnimation = translateanimation;
        super();
    }
}
