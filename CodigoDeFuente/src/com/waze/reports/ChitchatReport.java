// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportForm, ReportMenu

public class ChitchatReport extends ReportForm
{

    private static final int REPORT_TYPE;

    public ChitchatReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f03002d);
        initLayout();
    }

    public int getDelayedReportButtonResource()
    {
        return 0x7f020017;
    }

    protected int getReportSubtype()
    {
        return -1;
    }

    protected int getReportType()
    {
        return 0;
    }

    protected void initLayout()
    {
        super.initLayout();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_CHIT_CHAT);
        ((TextView)findViewById(0x7f090034)).setText(s);
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }
}
