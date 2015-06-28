// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportForm, ReportMenu

public class RoadClosureReport extends ReportForm
{

    private static final int CONSTRUCTION = 1;
    private static final int EVENT = 2;
    private static final int HAZARD = 0;
    private static final int NONE = -1;
    private static final int REPORT_TYPE = 12;
    private static final int TIME_ALL_DAY = 3;
    private static final int TIME_LESS_THAN_HOUR = 1;
    private static final int TIME_LONG_TERM = 5;
    private static final int TIME_SEVERAL_DAYS = 4;
    private static final int TIME_SEVERAL_HOURS = 2;
    private static final int TIME_UNKNOWN;
    private int selected;
    private int subSelected;

    public RoadClosureReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f0300cd);
        selected = -1;
        subSelected = -1;
        initLayout();
    }

    private void showSubmenu(String s, String as[], final int optionValues[])
    {
        subSelected = -1;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getContext());
        builder.setTitle(s);
        builder.setItems(as, new android.content.DialogInterface.OnClickListener() {

            final RoadClosureReport this$0;
            private final int val$optionValues[];

            public void onClick(DialogInterface dialoginterface, int i)
            {
                subSelected = optionValues[i];
            }

            
            {
                this$0 = RoadClosureReport.this;
                optionValues = ai;
                super();
            }
        });
        builder.create().show();
    }

    public int getDelayedReportButtonResource()
    {
        return 0x7f0200b9;
    }

    protected int getDuration()
    {
        return subSelected;
    }

    protected int getReportSubtype()
    {
        return selected;
    }

    protected int getReportType()
    {
        return 12;
    }

    protected void initLayout()
    {
        ReportForm.SetIsLaneActive(false);
        super.initLayout();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_CLOSURE);
        ((TextView)findViewById(0x7f090034)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
        ((TextView)findViewById(0x7f09030f)).setText(s1);
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_CONSTRUCTION);
        ((TextView)findViewById(0x7f090313)).setText(s2);
        String s3 = nativeManager.getLanguageString(DisplayStrings.DS_EVENT);
        ((TextView)findViewById(0x7f090317)).setText(s3);
        findViewById(0x7f09030d).setOnClickListener(new android.view.View.OnClickListener() {

            final RoadClosureReport this$0;

            public void onClick(View view)
            {
                stop();
                if (selected == 0)
                {
                    selected = -1;
                    subSelected = -1;
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
                    ((TextView)findViewById(0x7f09030f)).setTextColor(0xff000000);
                    return;
                } else
                {
                    selected = 0;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
                    ((TextView)findViewById(0x7f09030f)).setTextColor(0xff000000);
                    ((TextView)findViewById(0x7f090313)).setTextColor(0xff000000);
                    ((TextView)findViewById(0x7f090317)).setTextColor(0xff000000);
                    return;
                }
            }

            
            {
                this$0 = RoadClosureReport.this;
                super();
            }
        });
        findViewById(0x7f090311).setOnClickListener(new android.view.View.OnClickListener() {

            final RoadClosureReport this$0;

            public void onClick(View view)
            {
                stop();
                if (selected == 1)
                {
                    selected = -1;
                    subSelected = -1;
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
                    ((TextView)findViewById(0x7f090313)).setTextColor(0xff000000);
                    return;
                } else
                {
                    selected = 1;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_CONSTRUCTION);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
                    ((TextView)findViewById(0x7f09030f)).setTextColor(0xff000000);
                    ((TextView)findViewById(0x7f090313)).setTextColor(0xff000000);
                    ((TextView)findViewById(0x7f090317)).setTextColor(0xff000000);
                    return;
                }
            }

            
            {
                this$0 = RoadClosureReport.this;
                super();
            }
        });
        findViewById(0x7f090315).setOnClickListener(new android.view.View.OnClickListener() {

            final RoadClosureReport this$0;

            public void onClick(View view)
            {
                stop();
                if (selected == 2)
                {
                    selected = -1;
                    subSelected = -1;
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
                    ((TextView)findViewById(0x7f090317)).setTextColor(0xff000000);
                    return;
                } else
                {
                    selected = 2;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_EVENT);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201fa);
                    ((TextView)findViewById(0x7f09030f)).setTextColor(0xff000000);
                    ((TextView)findViewById(0x7f090313)).setTextColor(0xff000000);
                    ((TextView)findViewById(0x7f090317)).setTextColor(0xff000000);
                    return;
                }
            }

            
            {
                this$0 = RoadClosureReport.this;
                super();
            }
        });
        findViewById(0x7f090567).setOnClickListener(new android.view.View.OnClickListener() {

            final RoadClosureReport this$0;

            public void onClick(View view)
            {
                stop();
                String s4 = nativeManager.getLanguageString(DisplayStrings.DS_DURATION);
                String as[] = {
                    nativeManager.getLanguageString(DisplayStrings.DS_UNKNOWN), nativeManager.getLanguageString(DisplayStrings.DS_LESS_THANN_AN_HOUR), nativeManager.getLanguageString(DisplayStrings.DS_SEVERAL_HOURS), nativeManager.getLanguageString(DisplayStrings.DS_ALL_DAY), nativeManager.getLanguageString(DisplayStrings.DS_SEVERAL_DAYS), nativeManager.getLanguageString(DisplayStrings.DS_LONG_TERM)
                };
                int ai[] = new int[6];
                ai[1] = 1;
                ai[2] = 2;
                ai[3] = 3;
                ai[4] = 4;
                ai[5] = 5;
                showSubmenu(s4, as, ai);
            }

            
            {
                this$0 = RoadClosureReport.this;
                super();
            }
        });
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }




}
