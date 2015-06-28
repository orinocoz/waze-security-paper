// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navbar;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;

// Referenced classes of package com.waze.navbar:
//            NavBar

class val.nearingPanel
    implements android.view.animation.ationListener
{

    final on this$2;
    private final View val$nameText;
    private final View val$nearingPanel;
    private final View val$photoFrame;

    public void onAnimationEnd(Animation animation)
    {
        View view = NavBar.access$17(_fld0).findViewById(0x7f090460);
        view.setVisibility(0);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(150L);
        alphaanimation.setFillAfter(false);
        view.startAnimation(alphaanimation);
        ((TextView)val$nameText).setTextSize(2, 18F);
        ((TextView)val$nameText).setMaxLines(3);
        android.widget.ayoutParams ayoutparams = (android.widget.ayoutParams)val$nameText.getLayoutParams();
        ayoutparams.width = -2;
        ayoutparams.rightMargin = (int)(10F * NavBar.access$26(_fld0));
        val$nameText.setLayoutParams(ayoutparams);
        AlphaAnimation alphaanimation1 = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation1.setDuration(150L);
        alphaanimation1.setFillAfter(false);
        val$nameText.startAnimation(alphaanimation1);
        val$photoFrame.setVisibility(0);
        val$photoFrame.clearAnimation();
        val$nearingPanel.clearAnimation();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    nameText()
    {
        this$2 = final_nametext;
        val$nameText = view;
        val$photoFrame = view1;
        val$nearingPanel = View.this;
        super();
    }

    // Unreferenced inner class com/waze/navbar/NavBar$17

/* anonymous class */
    class NavBar._cls17
        implements android.view.animation.Animation.AnimationListener
    {

        final NavBar this$0;
        private final View val$nameText;

        public void onAnimationEnd(Animation animation)
        {
            final View minimizeButton = NavBar.access$17(NavBar.this).findViewById(0x7f090465);
            RotateAnimation rotateanimation = new RotateAnimation(180F, 0.0F, 1, 0.5F, 1, 0.5F);
            rotateanimation.setDuration(300L);
            rotateanimation.setFillAfter(false);
            minimizeButton.startAnimation(rotateanimation);
            final View photoFrame = NavBar.access$17(NavBar.this).findViewById(0x7f090456);
            photoFrame.setVisibility(0);
            final View nearingPanel = NavBar.access$17(NavBar.this).findViewById(0x7f090452);
            final View shadow = NavBar.access$17(NavBar.this).findViewById(0x7f090454);
            nearingPanel.getViewTreeObserver().addOnGlobalLayoutListener(nameText. new NavBar._cls17._cls1());
            nearingPanel.requestLayout();
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = final_navbar;
                nameText = View.this;
                super();
            }
    }


    // Unreferenced inner class com/waze/navbar/NavBar$17$1

/* anonymous class */
    class NavBar._cls17._cls1
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        final NavBar._cls17 this$1;
        private final View val$minimizeButton;
        private final View val$nameText;
        private final View val$nearingPanel;
        private final View val$photoFrame;
        private final View val$shadow;

        public void onGlobalLayout()
        {
            TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, minimizeButton.getHeight() - nearingPanel.getHeight(), 0.0F);
            translateanimation.setDuration(300L);
            translateanimation.setFillAfter(false);
            translateanimation.setInterpolator(new DecelerateInterpolator());
            nearingPanel.startAnimation(translateanimation);
            TranslateAnimation translateanimation1 = new TranslateAnimation(0.0F, 0.0F, minimizeButton.getHeight() - nearingPanel.getHeight(), 0.0F);
            translateanimation1.setDuration(300L);
            translateanimation1.setFillAfter(false);
            translateanimation1.setInterpolator(new DecelerateInterpolator());
            shadow.startAnimation(translateanimation1);
            ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 0.5F * (float)photoFrame.getWidth(), (photoFrame.getHeight() + photoFrame.getTop()) - minimizeButton.getHeight() / 2);
            scaleanimation.setDuration(300L);
            scaleanimation.setFillAfter(false);
            scaleanimation.setInterpolator(new DecelerateInterpolator());
            photoFrame.startAnimation(scaleanimation);
            translateanimation.setAnimationListener(nearingPanel. new NavBar._cls17._cls1._cls1());
            nearingPanel.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }


            
            {
                this$1 = final__pcls17;
                minimizeButton = view;
                nearingPanel = view1;
                shadow = view2;
                photoFrame = view3;
                nameText = View.this;
                super();
            }
    }

}
