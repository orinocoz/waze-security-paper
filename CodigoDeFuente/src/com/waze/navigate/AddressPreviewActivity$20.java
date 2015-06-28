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
    implements android.view.y._cls20
{

    final AddressPreviewActivity this$0;
    private final TextView val$aboutText;

    public void onClick(View view)
    {
        int i = val$aboutText.getHeight();
        android.view.ener ener = val$aboutText.getLayoutParams();
        ener.ght = -2;
        val$aboutText.setLayoutParams(ener);
        int j = android.view.reSpec(val$aboutText.getWidth(), 0x40000000);
        int k = android.view.reSpec(0, 0);
        val$aboutText.measure(j, k);
        int l = val$aboutText.getMeasuredHeight();
        ener.ght = i;
        val$aboutText.setLayoutParams(ener);
        ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
            i, l
        });
        valueanimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final AddressPreviewActivity._cls20 this$1;
            private final TextView val$aboutText;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                int i1 = ((Integer)valueanimator1.getAnimatedValue()).intValue();
                android.view.ViewGroup.LayoutParams layoutparams = aboutText.getLayoutParams();
                layoutparams.height = i1;
                aboutText.setLayoutParams(layoutparams);
            }

            
            {
                this$1 = AddressPreviewActivity._cls20.this;
                aboutText = textview;
                super();
            }
        });
        valueanimator.setDuration(300L);
        valueanimator.setInterpolator(new DecelerateInterpolator());
        valueanimator.addListener(new android.animation.Animator.AnimatorListener() {

            final AddressPreviewActivity._cls20 this$1;
            private final TextView val$aboutText;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                android.view.ViewGroup.LayoutParams layoutparams = aboutText.getLayoutParams();
                layoutparams.height = -2;
                aboutText.setLayoutParams(layoutparams);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            
            {
                this$1 = AddressPreviewActivity._cls20.this;
                aboutText = textview;
                super();
            }
        });
        valueanimator.start();
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(100L);
        alphaanimation.setStartOffset(200L);
        alphaanimation.setFillAfter(true);
        findViewById(0x7f090150).startAnimation(alphaanimation);
    }

    _cls2.val.aboutText()
    {
        this$0 = final_addresspreviewactivity;
        val$aboutText = TextView.this;
        super();
    }
}
