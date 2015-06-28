// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.navbar.NavBar;
import com.waze.settings.SettingsCheckboxView;
import com.waze.strings.DisplayStrings;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class UpdateGasPopup extends PopUp
{

    private static UpdateGasPopup mInstance = null;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;
    private static boolean mTimerSet = false;
    private SettingsCheckboxView NeverShowAgain;
    private long callback;

    private UpdateGasPopup(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mLayoutManager = layoutmanager;
        init();
    }

    private void OnUpdatePrices()
    {
        NativeManager.Post(new Runnable() {

            final UpdateGasPopup this$0;

            public void run()
            {
            }

            
            {
                this$0 = UpdateGasPopup.this;
                super();
            }
        });
        hide();
    }

    public static UpdateGasPopup getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new UpdateGasPopup(context, layoutmanager);
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03012d, this);
        setUpButtonsTxt();
    }

    private void setTitle(String s)
    {
        ((TextView)findViewById(0x7f09019b)).setText(s);
    }

    public void dismiss()
    {
        mIsShown = false;
        mTimerSet = false;
        mLayoutManager.dismiss(mInstance);
    }

    public void hide()
    {
        ((TimerView)findViewById(0x7f09019c)).stop();
        dismiss();
    }

    public void onBackPressed()
    {
        hide();
    }

    public void setCloseTime(int i)
    {
        if (!mTimerSet)
        {
            ((TimerView)findViewById(0x7f09019c)).setWhiteColor();
            ((TimerView)findViewById(0x7f09019c)).setTime(i);
            ((TimerView)findViewById(0x7f09019c)).start();
            mTimerSet = true;
            float f = getResources().getDisplayMetrics().density;
            View view = findViewById(0x7f09019d);
            android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
            layoutparams.width = (int)(30F * f);
            view.setLayoutParams(layoutparams);
        }
    }

    public void setUpButtonsTxt()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_UPDATE_PRICES);
        ((TextView)findViewById(0x7f090773)).setText(s);
    }

    public void show(final long cb, final long lcontext)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        callback = cb;
        findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdateGasPopup this$0;
            private final long val$cb;
            private final long val$lcontext;

            public void onClick(View view)
            {
                hide();
                NativeManager.getInstance().NativeManagerCallback(4, cb, lcontext);
            }

            
            {
                this$0 = UpdateGasPopup.this;
                cb = l;
                lcontext = l1;
                super();
            }
        });
        ((TimerView)findViewById(0x7f09019c)).reset();
        findViewById(0x7f090772).setOnClickListener(new android.view.View.OnClickListener() {

            final UpdateGasPopup this$0;
            private final long val$cb;
            private final long val$lcontext;

            public void onClick(View view)
            {
                OnUpdatePrices();
                NativeManager.getInstance().NativeManagerCallback(3, cb, lcontext);
            }

            
            {
                this$0 = UpdateGasPopup.this;
                cb = l;
                lcontext = l1;
                super();
            }
        });
        setTitle(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_GAS_PRICES));
        ((TextView)findViewById(0x7f090771)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ARE_YOU_AT_A_GAS_STATION));
        NeverShowAgain = (SettingsCheckboxView)findViewById(0x7f090774);
        NeverShowAgain.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NEVER_ASK_ME_AGAIN));
        NeverShowAgain.setValue(false);
        NeverShowAgain.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final UpdateGasPopup this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                NativeManager nativemanager = NativeManager.getInstance();
                boolean flag1;
                if (flag)
                {
                    flag1 = false;
                } else
                {
                    flag1 = true;
                }
                nativemanager.SetShowGasPricePopupAgain(flag1);
            }

            
            {
                this$0 = UpdateGasPopup.this;
                super();
            }
        });
        RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f090194);
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
        NavBar navbar = NativeManager.getInstance().getNavBarManager().getNavBar();
        int i = 0;
        if (navbar != null)
        {
            i = navbar.getNavBarHeight();
        }
        layoutparams.setMargins(0, i, 0, 0);
        relativelayout.setLayoutParams(layoutparams);
        mIsShown = true;
        mLayoutManager.addView(mInstance);
    }


}
