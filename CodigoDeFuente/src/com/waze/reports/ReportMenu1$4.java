// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;

// Referenced classes of package com.waze.reports:
//            ReportMenu1, ReportMenu, HazardReport

class val.reportMenu
    implements android.view.stener
{

    final ReportMenu1 this$0;
    private final ReportMenu val$reportMenu;

    public void onClick(View view)
    {
        val$reportMenu.hideBottomNotification(false);
        val$reportMenu.setReportForm(new HazardReport(getContext(), val$reportMenu));
        val$reportMenu.flipView();
    }

    er()
    {
        this$0 = final_reportmenu1;
        val$reportMenu = ReportMenu.this;
        super();
    }
}
