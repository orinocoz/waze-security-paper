// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.waze.view.anim.AnimationUtils;

// Referenced classes of package com.waze:
//            MainActivity, LayoutManager

class val.view
    implements android.view.animation.tionListener
{

    final MainActivity this$0;
    private final View val$view;

    public void onAnimationEnd(Animation animation)
    {
        startNavigateActivityWithFade();
        val$view.postDelayed(new Runnable() {

            final MainActivity._cls4 this$1;

            public void run()
            {
                if (getResources().getConfiguration().orientation == 1)
                {
                    AnimationUtils.SearchBarBackAnimation(findViewById(0x7f09039f));
                } else
                {
                    AnimationUtils.SearchBarBackAnimation(findViewById(0x7f0903af));
                }
                MainActivity.access$4(this$0).getMainLayout().requestLayout();
            }

            
            {
                this$1 = MainActivity._cls4.this;
                super();
            }
        }, 200L);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }


    _cls1.this._cls1()
    {
        this$0 = final_mainactivity;
        val$view = View.this;
        super();
    }
}
