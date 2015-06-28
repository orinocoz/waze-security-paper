// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.TranslateAnimation;
import com.waze.NativeManager;
import com.waze.autocomplete.ContactsCompletionView;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity

class val.oldTop
    implements android.view.balLayoutListener
{

    final polator this$1;
    private final int val$oldTop;

    public void onGlobalLayout()
    {
        View view = findViewById(0x7f09040b);
        view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        int i = view.getTop();
        View view1 = findViewById(0x7f09040c);
        View view2 = findViewById(0x7f09040d);
        TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, val$oldTop - i, 0.0F);
        translateanimation.setDuration(500L);
        translateanimation.setInterpolator(new AnticipateOvershootInterpolator());
        view.startAnimation(translateanimation);
        view1.startAnimation(translateanimation);
        view2.startAnimation(translateanimation);
    }

    l.promoLayout()
    {
        this$1 = final_promolayout;
        val$oldTop = I.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/social/MyFriendsActivity$9

/* anonymous class */
    class MyFriendsActivity._cls9
        implements android.view.View.OnClickListener
    {

        final MyFriendsActivity this$0;
        private final View val$promoLayout;

        public void onClick(View view)
        {
            MyFriendsActivity.access$2(MyFriendsActivity.this).setFriendsListBannerDismissed();
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(400L);
            alphaanimation.setFillAfter(true);
            promoLayout.startAnimation(alphaanimation);
            int i = MyFriendsActivity.access$6(MyFriendsActivity.this).getTop();
            View view1 = findViewById(0x7f09040b);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)view1.getLayoutParams();
            layoutparams.addRule(3, 0x7f090409);
            view1.setLayoutParams(layoutparams);
            view1.requestLayout();
            findViewById(0x7f090409).bringToFront();
            view1.getViewTreeObserver().addOnGlobalLayoutListener(i. new MyFriendsActivity._cls9._cls1());
        }


            
            {
                this$0 = final_myfriendsactivity;
                promoLayout = View.this;
                super();
            }
    }

}
