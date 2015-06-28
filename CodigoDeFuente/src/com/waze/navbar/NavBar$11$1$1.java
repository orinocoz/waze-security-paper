// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navbar;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.waze.view.anim.AnimationUtils;

// Referenced classes of package com.waze.navbar:
//            NavBar

class val.nearingView
    implements android.view.animation.ationListener
{

    final on this$2;
    private final View val$nearingView;

    public void onAnimationEnd(Animation animation)
    {
        val$nearingView.setVisibility(8);
        val$nearingView.clearAnimation();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ._cls0()
    {
        this$2 = final__pcls0;
        val$nearingView = View.this;
        super();
    }

    // Unreferenced inner class com/waze/navbar/NavBar$11

/* anonymous class */
    class NavBar._cls11
        implements android.view.animation.Animation.AnimationListener
    {

        final NavBar this$0;

        public void onAnimationEnd(Animation animation)
        {
            ChangeToAlertMode(false);
            AnimationUtils.openAnimateAlert2(NavBar.access$17(NavBar.this).findViewById(0x7f090168), new NavBar._cls11._cls1());
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = NavBar.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/navbar/NavBar$11$1

/* anonymous class */
    class NavBar._cls11._cls1
        implements android.view.animation.Animation.AnimationListener
    {

        final NavBar._cls11 this$1;

        public void onAnimationEnd(Animation animation)
        {
            ChangeToAlertMode(false);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            View view = NavBar.access$17(this$0).findViewById(0x7f090452);
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(500L);
            alphaanimation.setAnimationListener(view. new NavBar._cls11._cls1._cls1());
            view.startAnimation(alphaanimation);
        }

            
            {
                this$1 = NavBar._cls11.this;
                super();
            }
    }

}
