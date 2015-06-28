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

public class CameraReport extends ReportForm
{

    private static final int FAKE = 2;
    private static final int NONE = -1;
    private static final int REDLIGHT = 1;
    private static final int REPORT_TYPE = 10;
    private static final int SPEED;
    private int selected;

    public CameraReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f030029);
        selected = -1;
        initLayout();
    }

    private void setSendEnabled(boolean flag)
    {
        int i;
        if (!flag)
        {
            i = 0xff888888;
        } else
        {
            i = 0xff000000;
        }
        ((TextView)findViewById(0x7f090370)).setTextColor(i);
        findViewById(0x7f09036f).setEnabled(flag);
    }

    public int getDelayedReportButtonResource()
    {
        return 0x7f0203b4;
    }

    protected int getReportSubtype()
    {
        return selected;
    }

    protected int getReportType()
    {
        return 10;
    }

    protected void initLayout()
    {
        super.initLayout();
        stop();
        ((TextView)findViewById(0x7f090205)).setTextColor(0xff888888);
        findViewById(0x7f090204).setEnabled(false);
        findViewById(0x7f0901f7).setEnabled(false);
        ImageView imageview = (ImageView)findViewById(0x7f090569);
        if (imageview != null)
        {
            imageview.setImageResource(0x7f020219);
            ((TextView)findViewById(0x7f09056a)).setTextColor(0xff888888);
        }
        String s = nativeManager.getLanguageString(DisplayStrings.DS_WAZERS_ARE_NOTIFIED_OF_SPEED_CAMS_ONLY_WHEN_APPROACHING_AT_AN_EXCESSIVE_SPEED_);
        ((TextView)findViewById(0x7f0901f2)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_NOTEC_NEW_SPEED_CAMS_NEED_TO_BE_VALIDATED_BY_COMMUNITY_MAP_EDITORS__YOU_CAN_DO_IT_TOO_AT_WWW_WAZE_COMSLIVEMAP);
        ((TextView)findViewById(0x7f0901f3)).setText(s1);
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_CAMERA);
        ((TextView)findViewById(0x7f090034)).setText(s2);
        String s3 = nativeManager.getLanguageString(DisplayStrings.DS_SPEED);
        ((TextView)findViewById(0x7f0901e9)).setText(s3);
        String s4 = nativeManager.getLanguageString(DisplayStrings.DS_RED_LIGHT);
        ((TextView)findViewById(0x7f0901ed)).setText(s4);
        String s5 = nativeManager.getLanguageString(DisplayStrings.DS_FAKE);
        ((TextView)findViewById(0x7f0901f1)).setText(s5);
        setSendEnabled(false);
        findViewById(0x7f0901e7).setOnClickListener(new android.view.View.OnClickListener() {

            final CameraReport this$0;

            public void onClick(View view)
            {
                if (selected == 0)
                {
                    selected = -1;
                    String s7 = nativeManager.getLanguageString(DisplayStrings.DS_CAMERA);
                    ((TextView)findViewById(0x7f090034)).setText(s7);
                    ((ImageView)findViewById(0x7f0901e7)).setImageResource(0x7f0201f7);
                    setSendEnabled(false);
                } else
                {
                    selected = 0;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_SPEED);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f0901e7)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f0901eb)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f0901ef)).setImageResource(0x7f0201f7);
                    setSendEnabled(true);
                }
                stop();
            }

            
            {
                this$0 = CameraReport.this;
                super();
            }
        });
        findViewById(0x7f0901eb).setOnClickListener(new android.view.View.OnClickListener() {

            final CameraReport this$0;

            public void onClick(View view)
            {
                if (selected == 1)
                {
                    selected = -1;
                    String s7 = nativeManager.getLanguageString(DisplayStrings.DS_CAMERA);
                    ((TextView)findViewById(0x7f090034)).setText(s7);
                    ((ImageView)findViewById(0x7f0901eb)).setImageResource(0x7f0201f7);
                    setSendEnabled(false);
                } else
                {
                    selected = 1;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_RED_LIGHT);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f0901e7)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f0901eb)).setImageResource(0x7f0201fa);
                    ((ImageView)findViewById(0x7f0901ef)).setImageResource(0x7f0201f7);
                    setSendEnabled(true);
                }
                stop();
            }

            
            {
                this$0 = CameraReport.this;
                super();
            }
        });
        findViewById(0x7f0901ef).setOnClickListener(new android.view.View.OnClickListener() {

            final CameraReport this$0;

            public void onClick(View view)
            {
                if (selected == 2)
                {
                    selected = -1;
                    String s7 = nativeManager.getLanguageString(DisplayStrings.DS_CAMERA);
                    ((TextView)findViewById(0x7f090034)).setText(s7);
                    ((ImageView)findViewById(0x7f0901ef)).setImageResource(0x7f0201f7);
                    setSendEnabled(false);
                } else
                {
                    selected = 2;
                    String s6 = nativeManager.getLanguageString(DisplayStrings.DS_FAKE);
                    ((TextView)findViewById(0x7f090034)).setText(s6);
                    ((ImageView)findViewById(0x7f0901e7)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f0901eb)).setImageResource(0x7f0201f7);
                    ((ImageView)findViewById(0x7f0901ef)).setImageResource(0x7f0201fa);
                    setSendEnabled(true);
                }
                stop();
            }

            
            {
                this$0 = CameraReport.this;
                super();
            }
        });
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }



}
