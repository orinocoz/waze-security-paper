// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.view.View;
import com.waze.AppService;
import com.waze.MainActivity;

// Referenced classes of package com.waze.reports:
//            ReportForm, ReportGroupsActivity

class this._cls0
    implements android.view.istener
{

    final ReportForm this$0;

    public void onClick(View view)
    {
        stop();
        Intent intent = new Intent(AppService.getMainActivity(), com/waze/reports/ReportGroupsActivity);
        AppService.getMainActivity().startActivityForResult(intent, 32776);
    }

    ctivity()
    {
        this$0 = ReportForm.this;
        super();
    }
}
