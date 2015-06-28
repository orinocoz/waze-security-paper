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

public class TrafficJamReport extends ReportForm
{

    private static final int HEAVY = 1;
    private static final int MODERATE = 0;
    private static final int NONE = -1;
    private static final int REPORT_TYPE = 3;
    private static final int STANDSTILL = 2;
    private int selected;

    public TrafficJamReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f030129);
        selected = -1;
        initLayout();
    }

    public int getDelayedReportButtonResource()
    {
        return 0x7f020020;
    }

    protected int getReportSubtype()
    {
        return selected;
    }

    protected int getReportType()
    {
        return 3;
    }

    protected void initLayout()
    {
        super.initLayout();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_JAM);
        ((TextView)findViewById(0x7f090034)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_MODERATE);
        ((TextView)findViewById(0x7f09075a)).setText(s1);
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_HEAVY);
        ((TextView)findViewById(0x7f09075e)).setText(s2);
        String s3 = nativeManager.getLanguageString(DisplayStrings.DS_STANDSTILL);
        ((TextView)findViewById(0x7f090762)).setText(s3);
        findViewById(0x7f090758).setOnClickListener(new android.view.View.OnClickListener() {

            final TrafficJamReport this$0;

            public void onClick(View view)
            {
                if (selected == 0)
                {
                    selected = -1;
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_JAM);
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f090758)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 0;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_MODERATE_TRAFFIC);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f090758)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f09075c)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090760)).setImageResource(0x7f0201f7);
                }
                stop();
            }

            
            {
                this$0 = TrafficJamReport.this;
                super();
            }
        });
        findViewById(0x7f09075c).setOnClickListener(new android.view.View.OnClickListener() {

            final TrafficJamReport this$0;

            public void onClick(View view)
            {
                if (selected == 1)
                {
                    selected = -1;
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_JAM);
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f09075c)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 1;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_HEAVY_TRAFFIC);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f090758)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f09075c)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f090760)).setImageResource(0x7f0201f7);
                }
                stop();
            }

            
            {
                this$0 = TrafficJamReport.this;
                super();
            }
        });
        findViewById(0x7f090760).setOnClickListener(new android.view.View.OnClickListener() {

            final TrafficJamReport this$0;

            public void onClick(View view)
            {
                if (selected == 2)
                {
                    selected = -1;
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_JAM);
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f090760)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 2;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_COMPLETE_STANDSTILL);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f090758)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f09075c)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090760)).setImageResource(0x7f0201fa);
                }
                stop();
            }

            
            {
                this$0 = TrafficJamReport.this;
                super();
            }
        });
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }


}
