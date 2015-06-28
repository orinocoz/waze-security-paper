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

public class HazardReport extends ReportForm
{

    private static final int NONE = -1;
    private static final int ON_ROAD = 0;
    private static final int ON_ROAD_CAR_STOPPED = 23;
    private static final int ON_ROAD_CONSTRUCTION = 22;
    private static final int ON_ROAD_OBJECT = 3;
    private static final int ON_ROAD_POT_HOLE = 4;
    private static final int ON_ROAD_ROAD_KILL = 5;
    private static final int ON_SHOULDER = 1;
    private static final int ON_SHOULDER_ANIMALS = 7;
    private static final int ON_SHOULDER_CAR_STOPPED = 6;
    private static final int ON_SHOULDER_MISSING_SIGN = 8;
    private static final int REPORT_TYPE = 5;
    private static final int WEATHER = 2;
    private static final int WEATHER_FOG = 9;
    private static final int WEATHER_HAIL = 10;
    private static final int WEATHER_HEAVY_RAIN = 13;
    private static final int WEATHER_HEAVY_SNOW = 21;
    private int selected;
    private int subSelected;

    public HazardReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f030064);
        selected = -1;
        subSelected = -1;
        initLayout();
    }

    private void showSubmenu(String s, final String options[], final int optionValues[])
    {
        subSelected = -1;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getContext());
        builder.setTitle(s);
        builder.setItems(options, new android.content.DialogInterface.OnClickListener() {

            final HazardReport this$0;
            private final int val$optionValues[];
            private final String val$options[];

            public void onClick(DialogInterface dialoginterface, int i)
            {
                ((TextView)findViewById(0x7f090034)).setText(options[i]);
                subSelected = optionValues[i];
            }

            
            {
                this$0 = HazardReport.this;
                options = as;
                optionValues = ai;
                super();
            }
        });
        builder.create().show();
    }

    public int getDelayedReportButtonResource()
    {
        return 0x7f020018;
    }

    protected int getReportSubtype()
    {
        if (subSelected == -1)
        {
            return selected;
        } else
        {
            return subSelected;
        }
    }

    protected int getReportType()
    {
        return 5;
    }

    protected void initLayout()
    {
        super.initLayout();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
        ((TextView)findViewById(0x7f090034)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_ON_ROAD);
        ((TextView)findViewById(0x7f09030f)).setText(s1);
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_SHOULDER);
        ((TextView)findViewById(0x7f090313)).setText(s2);
        String s3 = nativeManager.getLanguageString(DisplayStrings.DS_WEATHER);
        ((TextView)findViewById(0x7f090317)).setText(s3);
        findViewById(0x7f09030d).setOnClickListener(new android.view.View.OnClickListener() {

            final HazardReport this$0;

            public void onClick(View view)
            {
                if (selected == 0)
                {
                    selected = -1;
                    subSelected = -1;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 0;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_ON_ROAD);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD_ON_ROAD);
                    String as[] = {
                        nativeManager.getLanguageString(DisplayStrings.DS_OBJECT_ON_ROAD), nativeManager.getLanguageString(DisplayStrings.DS_CONSTRUCTION), nativeManager.getLanguageString(DisplayStrings.DS_POTHOLE), nativeManager.getLanguageString(DisplayStrings.DS_CAR_STOPPED_ON_ROAD), nativeManager.getLanguageString(DisplayStrings.DS_ROADKILL)
                    };
                    int ai[] = {
                        3, 22, 4, 23, 5
                    };
                    showSubmenu(s5, as, ai);
                }
                stop();
            }

            
            {
                this$0 = HazardReport.this;
                super();
            }
        });
        findViewById(0x7f090311).setOnClickListener(new android.view.View.OnClickListener() {

            final HazardReport this$0;

            public void onClick(View view)
            {
                if (selected == 1)
                {
                    selected = -1;
                    subSelected = -1;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 1;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_SHOULDER);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD_ON_SHOULDER);
                    String as[] = {
                        nativeManager.getLanguageString(DisplayStrings.DS_CAR_STOPPED), nativeManager.getLanguageString(DisplayStrings.DS_ANIMALS), nativeManager.getLanguageString(DisplayStrings.DS_MISSING_SIGN)
                    };
                    int ai[] = {
                        6, 7, 8
                    };
                    showSubmenu(s5, as, ai);
                }
                stop();
            }

            
            {
                this$0 = HazardReport.this;
                super();
            }
        });
        findViewById(0x7f090315).setOnClickListener(new android.view.View.OnClickListener() {

            final HazardReport this$0;

            public void onClick(View view)
            {
                if (selected == 2)
                {
                    selected = -1;
                    subSelected = -1;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 2;
                    String s4 = nativeManager.getLanguageString(DisplayStrings.DS_WEATHER);
                    ((TextView)findViewById(0x7f090034)).setText(s4);
                    ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201fa);
                    String s5 = nativeManager.getLanguageString(DisplayStrings.DS_WEATHER_HAZARD);
                    String as[] = {
                        nativeManager.getLanguageString(DisplayStrings.DS_FOG), nativeManager.getLanguageString(DisplayStrings.DS_HAIL), nativeManager.getLanguageString(DisplayStrings.DS_FLOOD), nativeManager.getLanguageString(DisplayStrings.DS_ICE_ON_ROAD)
                    };
                    int ai[] = {
                        9, 10, 13, 21
                    };
                    showSubmenu(s5, as, ai);
                }
                stop();
            }

            
            {
                this$0 = HazardReport.this;
                super();
            }
        });
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }




}
