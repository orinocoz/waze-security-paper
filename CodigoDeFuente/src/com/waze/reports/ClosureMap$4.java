// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.LayoutManager;

// Referenced classes of package com.waze.reports:
//            ClosureMap, ReportForm, RoadClosureReport, ReportMenu

class this._cls0
    implements android.view.istener
{

    final ClosureMap this$0;

    public void onClick(View view)
    {
        ClosureMap.access$6().setClosureRunning(false);
        ReportForm.SetIsLaneActive(false);
        ClosureMap.access$4().setReportForm(new RoadClosureReport(ClosureMap.access$4().getContext(), ClosureMap.access$4()));
        ClosureMap.access$4().flipView();
        ClosureMap.access$6().openDelayedReportAfterClosure();
        setResult(-1);
        finish();
    }

    port()
    {
        this$0 = ClosureMap.this;
        super();
    }
}
