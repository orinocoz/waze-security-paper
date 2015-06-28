// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class this._cls0
    implements android.view.animation.mationListener
{

    final ReportMenu this$0;

    public void onAnimationEnd(Animation animation)
    {
        ReportMenu.access$1(ReportMenu.this).post(new Runnable() {

            final ReportMenu._cls1 this$1;

            public void run()
            {
                hideBottomNotification(true);
                dismiss();
            }

            
            {
                this$1 = ReportMenu._cls1.this;
                super();
            }
        });
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }


    _cls1.this._cls1()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
