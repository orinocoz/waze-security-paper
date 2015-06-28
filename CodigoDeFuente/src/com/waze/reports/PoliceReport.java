// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.rtalerts.RTAlertsNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportForm, ReportMenu

public class PoliceReport extends ReportForm
{

    private static final int HIDDEN = 1;
    private static final int NONE = -1;
    private static final int REPORT_TYPE = 1;
    private static final int VISIBLE;
    private int selected;

    public PoliceReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f0300b5);
        selected = -1;
        initLayout();
    }

    public int getDelayedReportButtonResource()
    {
        return (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() != 2 || selected != 1) && NativeManager.getInstance().isEnforcementPoliceEnabledNTV() != 0 ? 0x7f02001d : 0x7f020227;
    }

    protected int getReportSubtype()
    {
        return selected;
    }

    protected int getReportType()
    {
        return 1;
    }

    protected void initLayout()
    {
        super.initLayout();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
        ((TextView)findViewById(0x7f090034)).setText(s);
        if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() == 2)
        {
            String s3 = nativeManager.getLanguageString(DisplayStrings.DS_SPEED_TRAP);
            ((TextView)findViewById(0x7f090545)).setText(s3);
            String s4 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
            ((TextView)findViewById(0x7f090549)).setText(s4);
        } else
        {
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_HIDDEN);
            ((TextView)findViewById(0x7f090545)).setText(s1);
            String s2 = nativeManager.getLanguageString(DisplayStrings.DS_VISIBLE);
            ((TextView)findViewById(0x7f090549)).setText(s2);
        }
        findViewById(0x7f090543).setOnClickListener(new android.view.View.OnClickListener() {

            final PoliceReport this$0;

            public void onClick(View view1)
            {
                if (selected == 1)
                {
                    selected = -1;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f090543)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 1;
                    String s5;
                    if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() == 2)
                    {
                        s5 = nativeManager.getLanguageString(DisplayStrings.DS_SPEED_TRAP);
                    } else
                    {
                        s5 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
                    }
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f090543)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f090547)).setImageResource(0x7f0201f7);
                }
                stop();
            }

            
            {
                this$0 = PoliceReport.this;
                super();
            }
        });
        findViewById(0x7f090547).setOnClickListener(new android.view.View.OnClickListener() {

            final PoliceReport this$0;

            public void onClick(View view1)
            {
                if (selected == 0)
                {
                    selected = -1;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f090547)).setImageResource(0x7f0201f7);
                } else
                {
                    selected = 0;
                    String s5;
                    if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() == 2)
                    {
                        s5 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
                    } else
                    {
                        s5 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE_OVISIBLEU);
                    }
                    ((TextView)findViewById(0x7f090034)).setText(s5);
                    ((ImageView)findViewById(0x7f090543)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f090547)).setImageResource(0x7f0201fa);
                }
                stop();
            }

            
            {
                this$0 = PoliceReport.this;
                super();
            }
        });
        if (!(new RTAlertsNativeManager()).isPoliceSubtypesAllowed())
        {
            findViewById(0x7f090035).setVisibility(8);
            View view = findViewById(0x7f09003e);
            if (view != null)
            {
                view.setVisibility(8);
            }
        }
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }


}
