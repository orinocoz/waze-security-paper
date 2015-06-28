// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;
import android.widget.ViewFlipper;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class val.viewFlipper
    implements android.view.animation.ationListener
{

    final ReportMenu this$0;
    private final ViewFlipper val$viewFlipper;

    public void onAnimationEnd(Animation animation)
    {
        val$viewFlipper.post(new Runnable() {

            final ReportMenu._cls19 this$1;
            private final ViewFlipper val$viewFlipper;

            public void run()
            {
                viewFlipper.removeView(ReportMenu.access$7(this$0));
                ReportMenu.access$8(this$0, null);
            }

            
            {
                this$1 = ReportMenu._cls19.this;
                viewFlipper = viewflipper;
                super();
            }
        });
        animation.setAnimationListener(null);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }


    _cls1.val.viewFlipper()
    {
        this$0 = final_reportmenu;
        val$viewFlipper = ViewFlipper.this;
        super();
    }
}
