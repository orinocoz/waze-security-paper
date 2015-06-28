// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.reports:
//            ReportMenu, ChitchatReport

class this._cls0
    implements android.view.istener
{

    final ReportMenu this$0;

    public void onClick(View view)
    {
        if (!ReportMenu.access$3(ReportMenu.this))
        {
            hideBottomNotification(false);
            setReportForm(new ChitchatReport(getContext(), ReportMenu.this));
            flipView();
            return;
        } else
        {
            ReportMenu.access$4(ReportMenu.this).randomUserMsg();
            return;
        }
    }

    t()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
