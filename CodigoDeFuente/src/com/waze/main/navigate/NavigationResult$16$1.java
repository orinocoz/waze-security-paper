// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import com.waze.analytics.Analytics;
import com.waze.view.anim.AnimationUtils;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls1
    implements android.view.animation.tener
{

    final tener this$1;

    public void onAnimationEnd(Animation animation)
    {
        Analytics.log("ETA_SHOWN_AND_READY");
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/main/navigate/NavigationResult$16

/* anonymous class */
    class NavigationResult._cls16
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
    {

        final NavigationResult this$0;

        public void onGlobalLayout()
        {
            View view = NavigationResult.access$8(NavigationResult.this).findViewById(0x7f09047f);
            view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            AnimationUtils.openNavResultsFromRectangle(view, new NavigationResult._cls16._cls1());
        }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
    }

}
