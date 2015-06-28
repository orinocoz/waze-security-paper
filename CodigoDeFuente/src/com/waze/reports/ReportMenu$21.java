// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.animation.Animation;

// Referenced classes of package com.waze.reports:
//            ReportMenu, ReportForm

class this._cls0
    implements android.view.animation.ationListener
{

    final ReportMenu this$0;

    public void onAnimationEnd(Animation animation)
    {
        ReportMenu.access$7(ReportMenu.this).start();
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    n()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
