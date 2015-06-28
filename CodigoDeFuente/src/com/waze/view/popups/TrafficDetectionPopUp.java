// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.navbar.NavBar;
import com.waze.strings.DisplayStrings;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class TrafficDetectionPopUp extends PopUp
{

    private static TrafficDetectionPopUp mInstance = null;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;
    private final int TRAFFIC_VALUE_NO = 0;
    private final int TRAFFIC_VALUE_NO_ANSWER = 2;
    private final int TRAFFIC_VALUE_YES = 1;
    private boolean isClosureEnabled;
    private boolean isFoursquareEnabled;
    private boolean isRandomUser;

    private TrafficDetectionPopUp(Context context, LayoutManager layoutmanager, boolean flag, boolean flag1, boolean flag2)
    {
        super(context, layoutmanager);
        mLayoutManager = layoutmanager;
        isRandomUser = flag;
        isFoursquareEnabled = flag1;
        isClosureEnabled = flag2;
        init();
    }

    public static TrafficDetectionPopUp getInstance(Context context, LayoutManager layoutmanager, boolean flag, boolean flag1, boolean flag2)
    {
        if (mInstance == null)
        {
            mInstance = new TrafficDetectionPopUp(context, layoutmanager, flag, flag1, flag2);
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030128, this);
        setUpButtonsTxt();
        setUpTitle();
        setUpforRTL();
        setAdditionalText();
        findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final TrafficDetectionPopUp this$0;

            public void onClick(View view)
            {
                onClose();
            }

            
            {
                this$0 = TrafficDetectionPopUp.this;
                super();
            }
        });
        findViewById(0x7f090755).setOnClickListener(new android.view.View.OnClickListener() {

            final TrafficDetectionPopUp this$0;

            public void onClick(View view)
            {
                onYes();
            }

            
            {
                this$0 = TrafficDetectionPopUp.this;
                super();
            }
        });
        findViewById(0x7f090753).setOnClickListener(new android.view.View.OnClickListener() {

            final TrafficDetectionPopUp this$0;

            public void onClick(View view)
            {
                onNo();
            }

            
            {
                this$0 = TrafficDetectionPopUp.this;
                super();
            }
        });
    }

    private void onClose()
    {
        NativeManager.Post(new Runnable() {

            final TrafficDetectionPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().RealtimeReportTrafficNTV(2);
            }

            
            {
                this$0 = TrafficDetectionPopUp.this;
                super();
            }
        });
        hide();
    }

    private void onNo()
    {
        NativeManager.Post(new Runnable() {

            final TrafficDetectionPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().RealtimeReportTrafficNTV(0);
            }

            
            {
                this$0 = TrafficDetectionPopUp.this;
                super();
            }
        });
        hide();
    }

    private void onYes()
    {
        NativeManager.Post(new Runnable() {

            final TrafficDetectionPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().RealtimeReportTrafficNTV(1);
            }

            
            {
                this$0 = TrafficDetectionPopUp.this;
                super();
            }
        });
        hide();
        mLayoutManager.showTrafficJamReport(isRandomUser, isFoursquareEnabled, isClosureEnabled);
    }

    private void setAdditionalText()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_WESRE_DETECTING_A_SLOW_DOWN);
        ((TextView)findViewById(0x7f090750)).setText(s);
        String s1 = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_ARE_YOU_IN_TRAFFICQ);
        ((TextView)findViewById(0x7f090751)).setText(s1);
    }

    private void setCLoseTimer(int i)
    {
        ((TimerView)findViewById(0x7f09019c)).reset();
        ((TimerView)findViewById(0x7f09019c)).setWhiteColor();
        ((TimerView)findViewById(0x7f09019c)).setTime(i);
        ((TimerView)findViewById(0x7f09019c)).start();
    }

    private void setUpButtonsTxt()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_YES);
        ((TextView)findViewById(0x7f090756)).setText(s);
        String s1 = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NO);
        ((TextView)findViewById(0x7f090754)).setText(s1);
    }

    private void setUpTitle()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_TRAFFICQ);
        ((TextView)findViewById(0x7f09074f)).setText(s);
    }

    private void setUpforRTL()
    {
        if (AppService.getNativeManager().getLanguageRtl())
        {
            ((TextView)findViewById(0x7f090750)).setGravity(5);
            ((TextView)findViewById(0x7f090751)).setGravity(5);
        }
    }

    private void stopCloseTimer()
    {
        ((TimerView)findViewById(0x7f09019c)).stop();
    }

    public void hide()
    {
        mIsShown = false;
        stopCloseTimer();
        mLayoutManager.dismiss(this);
    }

    public void onBackPressed()
    {
        hide();
    }

    public void show()
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        if (NativeManager.getInstance().isNavigatingNTV())
        {
            RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f09074c);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
            NavBar navbar = NativeManager.getInstance().getNavBarManager().getNavBar();
            int i = 0;
            if (navbar != null)
            {
                i = navbar.getNavBarHeight();
            }
            layoutparams.setMargins(0, i, 0, 0);
            relativelayout.setLayoutParams(layoutparams);
        }
        mIsShown = true;
        mLayoutManager.addView(this);
        setCLoseTimer(15);
    }




}
