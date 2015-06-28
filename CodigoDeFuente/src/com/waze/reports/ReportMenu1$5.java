// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.reports:
//            ReportMenu1, ReportMenu, ChitchatReport

class val.reportMenu
    implements android.view.stener
{

    final ReportMenu1 this$0;
    private final ReportMenu val$reportMenu;

    public void onClick(View view)
    {
        if (!ReportMenu1.access$0(ReportMenu1.this).isRandomUserNTV())
        {
            val$reportMenu.hideBottomNotification(false);
            val$reportMenu.setReportForm(new ChitchatReport(getContext(), val$reportMenu));
            val$reportMenu.flipView();
            return;
        } else
        {
            ReportMenu1.access$1(ReportMenu1.this).randomUserMsg();
            return;
        }
    }

    ()
    {
        this$0 = final_reportmenu1;
        val$reportMenu = ReportMenu.this;
        super();
    }
}
