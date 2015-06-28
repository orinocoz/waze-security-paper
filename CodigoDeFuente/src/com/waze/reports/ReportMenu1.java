// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportMenu, TrafficJamReport, PoliceReport, AccidentReport, 
//            HazardReport, ChitchatReport, CameraReport

public class ReportMenu1 extends RelativeLayout
{

    private MyWazeNativeManager myWazeNativeManager;
    private NativeManager nativeManager;

    public ReportMenu1(Context context, final ReportMenu reportMenu)
    {
        super(context);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f0300c9, this);
        myWazeNativeManager = MyWazeNativeManager.getInstance();
        nativeManager = AppService.getNativeManager();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_JAM);
        ((TextView)findViewById(0x7f090573)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
        ((TextView)findViewById(0x7f090576)).setText(s1);
        if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() == 0)
        {
            ((ImageView)findViewById(0x7f090575)).setImageResource(0x7f020329);
        }
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_ACCIDENT);
        ((TextView)findViewById(0x7f090578)).setText(s2);
        String s3 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
        ((TextView)findViewById(0x7f09057a)).setText(s3);
        String s4 = nativeManager.getLanguageString(DisplayStrings.DS_CAMERA);
        ((TextView)findViewById(0x7f09057d)).setText(s4);
        if (!NativeManager.getInstance().isEnforcementAlertsEnabledNTV())
        {
            ((ImageView)findViewById(0x7f09057c)).setImageResource(0x7f0203c4);
        }
        String s5 = nativeManager.getLanguageString(DisplayStrings.DS_CHIT_CHAT);
        ((TextView)findViewById(0x7f09057f)).setText(s5);
        findViewById(0x7f090572).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu1 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                reportMenu.hideBottomNotification(false);
                reportMenu.setReportForm(new TrafficJamReport(getContext(), reportMenu));
                reportMenu.flipView();
            }

            
            {
                this$0 = ReportMenu1.this;
                reportMenu = reportmenu;
                super();
            }
        });
        findViewById(0x7f090574).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu1 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                reportMenu.hideBottomNotification(false);
                reportMenu.setReportForm(new PoliceReport(getContext(), reportMenu));
                reportMenu.flipView();
            }

            
            {
                this$0 = ReportMenu1.this;
                reportMenu = reportmenu;
                super();
            }
        });
        findViewById(0x7f090577).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu1 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                reportMenu.hideBottomNotification(false);
                reportMenu.setReportForm(new AccidentReport(getContext(), reportMenu));
                reportMenu.flipView();
            }

            
            {
                this$0 = ReportMenu1.this;
                reportMenu = reportmenu;
                super();
            }
        });
        findViewById(0x7f090579).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu1 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                reportMenu.hideBottomNotification(false);
                reportMenu.setReportForm(new HazardReport(getContext(), reportMenu));
                reportMenu.flipView();
            }

            
            {
                this$0 = ReportMenu1.this;
                reportMenu = reportmenu;
                super();
            }
        });
        findViewById(0x7f09057e).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu1 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                if (!myWazeNativeManager.isRandomUserNTV())
                {
                    reportMenu.hideBottomNotification(false);
                    reportMenu.setReportForm(new ChitchatReport(getContext(), reportMenu));
                    reportMenu.flipView();
                    return;
                } else
                {
                    nativeManager.randomUserMsg();
                    return;
                }
            }

            
            {
                this$0 = ReportMenu1.this;
                reportMenu = reportmenu;
                super();
            }
        });
        findViewById(0x7f09057b).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu1 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                reportMenu.hideBottomNotification(false);
                reportMenu.setReportForm(new CameraReport(getContext(), reportMenu));
                reportMenu.flipView();
            }

            
            {
                this$0 = ReportMenu1.this;
                reportMenu = reportmenu;
                super();
            }
        });
    }


}
