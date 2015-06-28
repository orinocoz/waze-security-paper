// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.MapView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.reports:
//            ReportMenu, ReportForm, RoadClosureReport

public final class ClosureMap extends ActivityBase
{

    protected static final long MORE_ANIMATION_TICK = 20L;
    protected static final int MORE_OFFSET = -100;
    private static LayoutManager layout_manager;
    private static ReportMenu reportmenu;
    private static boolean sServerRequest = false;
    private static int selectedPin = -1;
    private DriveToNativeManager driveToNativeManager;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final ClosureMap this$0;

        public void event()
        {
            driveToNativeManager.setRoadClosureMap();
            if (ClosureMap.sServerRequest)
            {
                nativeManager.StartClosureObject(false, 0, ClosureMap.sServerRequest);
                return;
            } else
            {
                nativeManager.StartClosureObject(false, -1, ClosureMap.sServerRequest);
                return;
            }
        }

            
            {
                this$0 = ClosureMap.this;
                super();
            }
    };
    private final RunnableExecutor mNativeCanvasReadyEventReopen = new RunnableExecutor() {

        final ClosureMap this$0;

        public void event()
        {
            driveToNativeManager.setRoadClosureMap();
            nativeManager.StartClosureObject(true, ClosureMap.selectedPin, false);
        }

            
            {
                this$0 = ClosureMap.this;
                super();
            }
    };
    private MapView mapView;
    private NativeManager nativeManager;

    public ClosureMap()
    {
    }

    public static void SetLayoutMgr(LayoutManager layoutmanager)
    {
        layout_manager = layoutmanager;
    }

    public static void SetReportMenu(ReportMenu reportmenu1)
    {
        reportmenu = reportmenu1;
    }

    public static void launch(final Context context, final ReportMenu reportMenu, final LayoutManager layoutManager, final boolean bIsServerRequest)
    {
        NativeManager.Post(new RunnableUICallback() {

            private boolean hasClosureData;
            private final boolean val$bIsServerRequest;
            private final Context val$context;
            private final LayoutManager val$layoutManager;
            private final ReportMenu val$reportMenu;

            public void callback()
            {
                if (hasClosureData)
                {
                    ClosureMap.reportmenu = reportMenu;
                    ClosureMap.layout_manager = layoutManager;
                    ClosureMap.sServerRequest = bIsServerRequest;
                    Intent intent = new Intent(context, com/waze/reports/ClosureMap);
                    AppService.getMainActivity().startActivityForResult(intent, 1);
                }
            }

            public void event()
            {
                hasClosureData = NativeManager.getInstance().HasClosureDataNTV();
            }

            
            {
                reportMenu = reportmenu1;
                layoutManager = layoutmanager;
                bIsServerRequest = flag;
                context = context1;
                super();
            }
        });
    }

    private void setUpActivity()
    {
        setContentView(0x7f03002f);
        ((TextView)findViewById(0x7f090034)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CLOSURE));
        findViewById(0x7f090207).setOnClickListener(new android.view.View.OnClickListener() {

            final ClosureMap this$0;

            public void onClick(View view)
            {
                ClosureMap.layout_manager.setClosureRunning(false);
                ReportForm.SetIsLaneActive(false);
                ClosureMap.reportmenu.setReportForm(new RoadClosureReport(ClosureMap.reportmenu.getContext(), ClosureMap.reportmenu));
                ClosureMap.reportmenu.flipView();
                ClosureMap.layout_manager.openDelayedReportAfterClosure();
                setResult(-1);
                finish();
            }

            
            {
                this$0 = ClosureMap.this;
                super();
            }
        });
        findViewById(0x7f090033).setOnClickListener(new android.view.View.OnClickListener() {

            final ClosureMap this$0;

            public void onClick(View view)
            {
                ClosureMap.layout_manager.setClosureRunning(false);
                ClosureMap.layout_manager.removeDelayedReportButton();
                setResult(-1);
                finish();
            }

            
            {
                this$0 = ClosureMap.this;
                super();
            }
        });
        findViewById(0x7f090204).setOnClickListener(new android.view.View.OnClickListener() {

            final ClosureMap this$0;

            public void onClick(View view)
            {
                setResult(-1);
                finish();
                stop();
                ClosureMap.reportmenu.setDelayedReport();
            }

            
            {
                this$0 = ClosureMap.this;
                super();
            }
        });
        mapView = (MapView)findViewById(0x7f090202);
        if (!layout_manager.IsClosureRunning())
        {
            mapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
            selectedPin = -1;
        } else
        {
            mapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEventReopen);
        }
        if (sServerRequest)
        {
            ((TextView)findViewById(0x7f090208)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CONFIRM));
            ((TextView)findViewById(0x7f090203)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CONFIRM_THE_LOCATION_OF));
        } else
        {
            ((TextView)findViewById(0x7f090208)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NEXT));
            ((TextView)findViewById(0x7f090203)).setText(nativeManager.getLanguageString(DisplayStrings.DS_TAP_ON_AN_ARROW));
        }
        ((TextView)findViewById(0x7f090205)).setText(nativeManager.getLanguageString(DisplayStrings.DS_LATER_CAPITAL));
        EnableNextButton(selectedPin);
        layout_manager.SetClosureMap(this);
        if (!layout_manager.IsClosureRunning())
        {
            start();
        }
        layout_manager.setClosureRunning(true);
    }

    public void EnableNextButton(int i)
    {
        stop();
        if (i >= 0)
        {
            findViewById(0x7f090207).setBackgroundResource(0x7f020095);
            findViewById(0x7f090207).setEnabled(true);
            ((TextView)findViewById(0x7f090208)).setTextColor(0xff000000);
            findViewById(0x7f090207).setPadding(0, 0, 0, 0);
        } else
        {
            findViewById(0x7f090207).setBackgroundResource(0x7f020087);
            findViewById(0x7f090207).setEnabled(false);
            ((TextView)findViewById(0x7f090208)).setTextColor(0xffcccccc);
            findViewById(0x7f090207).setPadding(0, 0, 0, 0);
        }
        selectedPin = i;
    }

    public void increaseMapClicked(View view)
    {
        mapView.setHandleTouch(false);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        mapView.onPause();
        nativeManager.ClearClosureObject();
        driveToNativeManager.unsetRoadClosureView();
        setUpActivity();
        mapView.onResume();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        driveToNativeManager = DriveToNativeManager.getInstance();
        nativeManager = AppService.getNativeManager();
        String s;
        if (sServerRequest)
        {
            s = "TRUE";
        } else
        {
            s = "FALSE";
        }
        Analytics.log("ROAD_CLOSURE_DETECTED_POPUP_SHOWN", "FROM_SERVER", s);
        setUpActivity();
    }

    public void onPause()
    {
        super.onPause();
        mapView.onPause();
        stop();
        nativeManager.ClearClosureObject();
        driveToNativeManager.unsetRoadClosureView();
    }

    public void onResume()
    {
        super.onResume();
        mapView.onResume();
    }

    public void start()
    {
        TimerView timerview = (TimerView)findViewById(0x7f090206);
        if (timerview != null)
        {
            timerview.start();
            timerview.setVisibility(0);
        }
    }

    public void stop()
    {
        TimerView timerview = (TimerView)findViewById(0x7f090206);
        if (timerview != null)
        {
            timerview.stop();
            timerview.setVisibility(8);
        }
    }










}
