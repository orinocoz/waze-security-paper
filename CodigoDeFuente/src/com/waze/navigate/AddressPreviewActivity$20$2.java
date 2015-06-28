// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class val.aboutText
    implements android.animation.val.aboutText
{

    final val.aboutText this$1;
    private final TextView val$aboutText;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        android.view._cls20._cls2 _lcls2 = val$aboutText.getLayoutParams();
        _lcls2.t = -2;
        val$aboutText.setLayoutParams(_lcls2);
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    l.aboutText()
    {
        this$1 = final_abouttext;
        val$aboutText = TextView.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$20

/* anonymous class */
    class AddressPreviewActivity._cls20
        implements android.view.View.OnClickListener
    {

        final AddressPreviewActivity this$0;
        private final TextView val$aboutText;

        public void onClick(View view)
        {
            int i = aboutText.getHeight();
            android.view.ViewGroup.LayoutParams layoutparams = aboutText.getLayoutParams();
            layoutparams.height = -2;
            aboutText.setLayoutParams(layoutparams);
            int j = android.view.View.MeasureSpec.makeMeasureSpec(aboutText.getWidth(), 0x40000000);
            int k = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            aboutText.measure(j, k);
            int l = aboutText.getMeasuredHeight();
            layoutparams.height = i;
            aboutText.setLayoutParams(layoutparams);
            ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
                i, l
            });
            valueanimator.addUpdateListener(new AddressPreviewActivity._cls20._cls1());
            valueanimator.setDuration(300L);
            valueanimator.setInterpolator(new DecelerateInterpolator());
            valueanimator.addListener(aboutText. new AddressPreviewActivity._cls20._cls2());
            valueanimator.start();
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(100L);
            alphaanimation.setStartOffset(200L);
            alphaanimation.setFillAfter(true);
            findViewById(0x7f090150).startAnimation(alphaanimation);
        }

            
            {
                this$0 = final_addresspreviewactivity;
                aboutText = TextView.this;
                super();
            }

        // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$20$1

/* anonymous class */
        class AddressPreviewActivity._cls20._cls1
            implements android.animation.ValueAnimator.AnimatorUpdateListener
        {

            final AddressPreviewActivity._cls20 this$1;
            private final TextView val$aboutText;

            public void onAnimationUpdate(ValueAnimator valueanimator)
            {
                int i = ((Integer)valueanimator.getAnimatedValue()).intValue();
                android.view.ViewGroup.LayoutParams layoutparams = aboutText.getLayoutParams();
                layoutparams.height = i;
                aboutText.setLayoutParams(layoutparams);
            }

                    
                    {
                        this$1 = AddressPreviewActivity._cls20.this;
                        aboutText = textview;
                        super();
                    }
        }

    }

}
