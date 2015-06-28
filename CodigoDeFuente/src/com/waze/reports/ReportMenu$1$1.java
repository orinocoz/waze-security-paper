// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class this._cls1
    implements Runnable
{

    final iss this$1;

    public void run()
    {
        hideBottomNotification(true);
        dismiss();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/ReportMenu$1

/* anonymous class */
    class ReportMenu._cls1
        implements android.view.animation.Animation.AnimationListener
    {

        final ReportMenu this$0;

        public void onAnimationEnd(Animation animation)
        {
            ReportMenu.access$1(ReportMenu.this).post(new ReportMenu._cls1._cls1());
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = ReportMenu.this;
                super();
            }
    }

}
