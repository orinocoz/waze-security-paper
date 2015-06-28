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

class val.promoLayout
    implements android.view.
{

    final MyFriendsActivity this$0;
    private final View val$promoLayout;

    public void onClick(View view)
    {
        MyFriendsActivity.access$2(MyFriendsActivity.this).setFriendsListBannerDismissed();
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(400L);
        alphaanimation.setFillAfter(true);
        val$promoLayout.startAnimation(alphaanimation);
        final int oldTop = MyFriendsActivity.access$6(MyFriendsActivity.this).getTop();
        View view1 = findViewById(0x7f09040b);
        android.widget.tParams tparams = (android.widget.tParams)view1.getLayoutParams();
        tparams.addRule(3, 0x7f090409);
        view1.setLayoutParams(tparams);
        view1.requestLayout();
        findViewById(0x7f090409).bringToFront();
        view1.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final MyFriendsActivity._cls9 this$1;
            private final int val$oldTop;

            public void onGlobalLayout()
            {
                View view2 = findViewById(0x7f09040b);
                view2.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                int i = view2.getTop();
                View view3 = findViewById(0x7f09040c);
                View view4 = findViewById(0x7f09040d);
                TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, oldTop - i, 0.0F);
                translateanimation.setDuration(500L);
                translateanimation.setInterpolator(new AnticipateOvershootInterpolator());
                view2.startAnimation(translateanimation);
                view3.startAnimation(translateanimation);
                view4.startAnimation(translateanimation);
            }

            
            {
                this$1 = MyFriendsActivity._cls9.this;
                oldTop = i;
                super();
            }
        });
    }


    _cls1.val.oldTop()
    {
        this$0 = final_myfriendsactivity;
        val$promoLayout = View.this;
        super();
    }
}
