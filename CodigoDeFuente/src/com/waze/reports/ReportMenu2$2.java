// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.roadrecording.RoadRecordingPopUp;

// Referenced classes of package com.waze.reports:
//            ReportMenu2, ReportMenu

class val.reportMenu
    implements android.view.stener
{

    final ReportMenu2 this$0;
    private final ReportMenu val$reportMenu;

    public void onClick(View view)
    {
        val$reportMenu.hideBottomNotification(false);
        RoadRecordingPopUp roadrecordingpopup = new RoadRecordingPopUp(getContext(), val$reportMenu);
        val$reportMenu.dismiss();
        roadrecordingpopup.open();
        val$reportMenu.setRoadRecording(roadrecordingpopup);
    }

    rdingPopUp()
    {
        this$0 = final_reportmenu2;
        val$reportMenu = ReportMenu.this;
        super();
    }
}
