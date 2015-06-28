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
import com.waze.navigate.DriveToNativeManager;
import com.waze.roadrecording.RoadRecordingPopUp;
import com.waze.rtalerts.RTAlertsNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportMenu, MapIssueReport

public class ReportMenu2 extends RelativeLayout
{

    ReportMenu mReportMenu;

    public ReportMenu2(Context context, final ReportMenu reportMenu)
    {
        super(context);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f0300ca, this);
        NativeManager nativemanager = AppService.getNativeManager();
        String s = nativemanager.getLanguageString(DisplayStrings.DS_MAP_ISSUE);
        ((TextView)findViewById(0x7f090581)).setText(s);
        String s1 = nativemanager.getLanguageString(DisplayStrings.DS_PAVE);
        ((TextView)findViewById(0x7f090583)).setText(s1);
        String s2 = nativemanager.getLanguageString(DisplayStrings.DS_GAS_PRICES);
        ((TextView)findViewById(0x7f090585)).setText(s2);
        String s3 = nativemanager.getLanguageString(DisplayStrings.DS_CHECK_IN);
        ((TextView)findViewById(0x7f090588)).setText(s3);
        findViewById(0x7f090580).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu2 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                reportMenu.hideBottomNotification(false);
                reportMenu.setReportForm(new MapIssueReport(getContext(), reportMenu));
                reportMenu.flipView();
            }

            
            {
                this$0 = ReportMenu2.this;
                reportMenu = reportmenu;
                super();
            }
        });
        findViewById(0x7f090582).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu2 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                reportMenu.hideBottomNotification(false);
                RoadRecordingPopUp roadrecordingpopup = new RoadRecordingPopUp(getContext(), reportMenu);
                reportMenu.dismiss();
                roadrecordingpopup.open();
                reportMenu.setRoadRecording(roadrecordingpopup);
            }

            
            {
                this$0 = ReportMenu2.this;
                reportMenu = reportmenu;
                super();
            }
        });
        findViewById(0x7f090584).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu2 this$0;
            private final ReportMenu val$reportMenu;

            public void onClick(View view)
            {
                DriveToNativeManager.getInstance().searchNearbyStations();
                reportMenu.dismiss();
            }

            
            {
                this$0 = ReportMenu2.this;
                reportMenu = reportmenu;
                super();
            }
        });
        if (!nativemanager.isGasUpdateable())
        {
            findViewById(0x7f090584).setVisibility(4);
            findViewById(0x7f090582).setVisibility(0);
        } else
        {
            findViewById(0x7f090584).setVisibility(0);
            findViewById(0x7f090582).setVisibility(4);
        }
        if (MyWazeNativeManager.getInstance().FoursquareEnabledNTV())
        {
            findViewById(0x7f090586).setOnClickListener(new android.view.View.OnClickListener() {

                final ReportMenu2 this$0;
                private final ReportMenu val$reportMenu;

                public void onClick(View view)
                {
                    reportMenu.hideBottomNotification(false);
                    MyWazeNativeManager.getInstance().foursquareCheckin();
                    reportMenu.dismiss();
                }

            
            {
                this$0 = ReportMenu2.this;
                reportMenu = reportmenu;
                super();
            }
            });
            return;
        } else
        {
            String s4 = nativemanager.getLanguageString(DisplayStrings.DS_BAD_ROUTE);
            ((TextView)findViewById(0x7f090588)).setText(s4);
            ((ImageView)findViewById(0x7f090587)).setImageResource(0x7f0201d6);
            findViewById(0x7f090586).setOnClickListener(new android.view.View.OnClickListener() {

                final ReportMenu2 this$0;
                private final ReportMenu val$reportMenu;

                public void onClick(View view)
                {
                    reportMenu.hideBottomNotification(false);
                    RTAlertsNativeManager.getInstance().reportBadRoute();
                    reportMenu.dismiss();
                }

            
            {
                this$0 = ReportMenu2.this;
                reportMenu = reportmenu;
                super();
            }
            });
            return;
        }
    }
}
