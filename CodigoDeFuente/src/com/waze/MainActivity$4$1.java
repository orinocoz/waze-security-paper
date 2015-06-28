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

class this._cls1
    implements Runnable
{

    final out.requestLayout this$1;

    public void run()
    {
        if (getResources().getConfiguration().orientation == 1)
        {
            AnimationUtils.SearchBarBackAnimation(findViewById(0x7f09039f));
        } else
        {
            AnimationUtils.SearchBarBackAnimation(findViewById(0x7f0903af));
        }
        MainActivity.access$4(_fld0).getMainLayout().requestLayout();
    }

    l.view()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/MainActivity$4

/* anonymous class */
    class MainActivity._cls4
        implements android.view.animation.Animation.AnimationListener
    {

        final MainActivity this$0;
        private final View val$view;

        public void onAnimationEnd(Animation animation)
        {
            startNavigateActivityWithFade();
            view.postDelayed(new MainActivity._cls4._cls1(), 200L);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = final_mainactivity;
                view = View.this;
                super();
            }
    }

}
