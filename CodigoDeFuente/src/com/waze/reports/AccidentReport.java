// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportForm, ReportMenu

public class AccidentReport extends ReportForm
{

    private static final int MAJOR = 1;
    private static final int MINOR = 0;
    private static final int NONE = -1;
    private static final int REPORT_TYPE = 2;
    private int selected;

    public AccidentReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f030001);
        selected = -1;
        initLayout();
    }

    public int getDelayedReportButtonResource()
    {
        return 0x7f020013;
    }

    protected int getReportSubtype()
    {
        return selected;
    }

    protected int getReportType()
    {
        return 2;
    }

    protected void initLayout()
    {
        super.initLayout();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_ACCIDENT);
        ((TextView)findViewById(0x7f090034)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_MINOR);
        ((TextView)findViewById(0x7f090039)).setText(s1);
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_MAJOR);
        ((TextView)findViewById(0x7f09003d)).setText(s2);
        findViewById(0x7f090037).setOnClickListener(new android.view.View.OnClickListener() {

            final AccidentReport this$0;

            public void onClick(View view)
            {
                if (selected == 0)
                {
                    selected = -1;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_ACCIDENT);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f090037)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 0;
                    String s3 = nativeManager.getLanguageString(DisplayStrings.DS_MINOR_ACCIDENT);
                    ((TextView)findViewById(0x7f090034)).setText(s3);
                    ((ImageView)findViewById(0x7f090037)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f09003b)).setImageResource(0x7f0201f7);
                }
                stop();
            }

            
            {
                this$0 = AccidentReport.this;
                super();
            }
        });
        findViewById(0x7f09003b).setOnClickListener(new android.view.View.OnClickListener() {

            final AccidentReport this$0;

            public void onClick(View view)
            {
                if (selected == 1)
                {
                    selected = -1;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_ACCIDENT);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f09003b)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 1;
                    String s3 = nativeManager.getLanguageString(DisplayStrings.DS_MAJOR_ACCIDENT);
                    ((TextView)findViewById(0x7f090034)).setText(s3);
                    ((ImageView)findViewById(0x7f090037)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f09003b)).setImageResource(0x7f0201fa);
                }
                stop();
            }

            
            {
                this$0 = AccidentReport.this;
                super();
            }
        });
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }


}
