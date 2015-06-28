// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;
import android.widget.ViewFlipper;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class val.viewFlipper
    implements Runnable
{

    final is._cls0 this$1;
    private final ViewFlipper val$viewFlipper;

    public void run()
    {
        val$viewFlipper.removeView(ReportMenu.access$7(_fld0));
        ReportMenu.access$8(_fld0, null);
    }

    l.viewFlipper()
    {
        this$1 = final_viewflipper;
        val$viewFlipper = ViewFlipper.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/ReportMenu$19

/* anonymous class */
    class ReportMenu._cls19
        implements android.view.animation.Animation.AnimationListener
    {

        final ReportMenu this$0;
        private final ViewFlipper val$viewFlipper;

        public void onAnimationEnd(Animation animation)
        {
            viewFlipper.post(viewFlipper. new ReportMenu._cls19._cls1());
            animation.setAnimationListener(null);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = final_reportmenu;
                viewFlipper = ViewFlipper.this;
                super();
            }
    }

}
