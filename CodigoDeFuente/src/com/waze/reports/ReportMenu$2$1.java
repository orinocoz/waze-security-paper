// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        Analytics.log("REPORT_MENU_SHOWN");
        ReportMenu.access$2(_fld0);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/ReportMenu$2

/* anonymous class */
    class ReportMenu._cls2
        implements android.view.animation.Animation.AnimationListener
    {

        final ReportMenu this$0;

        public void onAnimationEnd(Animation animation)
        {
            ReportMenu.access$1(ReportMenu.this).post(new ReportMenu._cls2._cls1());
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
