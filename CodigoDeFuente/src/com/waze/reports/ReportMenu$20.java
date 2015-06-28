// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class this._cls0
    implements android.content.e.OnShowListener
{

    final ReportMenu this$0;

    public void onShow(DialogInterface dialoginterface)
    {
        Analytics.log("REPORT_MENU_SHOWN");
        setOnShowListener(null);
    }

    ()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
