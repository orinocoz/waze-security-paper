// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.ResManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navbar.NavBar;
import com.waze.strings.DisplayStrings;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class AlerterPopUp extends PopUp
{

    private static Context mContext = null;
    private static AlerterPopUp mInstance = null;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;
    private static boolean mTimerSet = false;

    private AlerterPopUp(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mContext = context;
        mLayoutManager = layoutmanager;
        init();
    }

    public static boolean IsAlerterShown()
    {
        return mIsShown;
    }

    private static float convertDpToPixels(float f, Context context)
    {
        return f * context.getResources().getDisplayMetrics().density;
    }

    public static AlerterPopUp getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new AlerterPopUp(context, layoutmanager);
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03001b, this);
        setUpButtonsTxt();
    }

    private void onNothThere()
    {
        NativeManager.Post(new Runnable() {

            final AlerterPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().AlerterNotThereNTV();
            }

            
            {
                this$0 = AlerterPopUp.this;
                super();
            }
        });
        hide();
    }

    private void onThumbsUp()
    {
        NativeManager.Post(new Runnable() {

            final AlerterPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().AlerterThumbsUpNTV();
            }

            
            {
                this$0 = AlerterPopUp.this;
                super();
            }
        });
        hide();
    }

    private void setIcon(String s)
    {
        ImageView imageview = (ImageView)findViewById(0x7f090196);
        if (s != null)
        {
            imageview.setImageResource(ResManager.GetDrawableId(s.toLowerCase()));
        }
    }

    private void setTitle(String s)
    {
        TextView textview = (TextView)findViewById(0x7f09019b);
        if (s == null)
        {
            textview.setText("");
            return;
        } else
        {
            textview.setText(s);
            return;
        }
    }

    public void dismiss()
    {
        mIsShown = false;
        mTimerSet = false;
        mLayoutManager.RefreshBar(MyWazeNativeManager.getInstance().getNumberOfFriendsOnline(), MyWazeNativeManager.getInstance().getNumberOfFriendsPending());
        mLayoutManager.dismiss(mInstance);
        NativeManager.Post(new Runnable() {

            final AlerterPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().AlerterClosedNTV();
            }

            
            {
                this$0 = AlerterPopUp.this;
                super();
            }
        });
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
            ((TimerView)findViewById(0x7f09019c)).setGrayColor();
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
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NOT_THERE);
        ((TextView)findViewById(0x7f090199)).setText(s);
    }

    public void show(String s, String s1, String s2, String s3, boolean flag, boolean flag1)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        setTitle(s3);
        setIcon(s2);
        View view;
        RelativeLayout relativelayout;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        NavBar navbar;
        int i;
        if (s1 != null)
        {
            findViewById(0x7f090180).setVisibility(0);
            ((TextView)findViewById(0x7f090180)).setText(NativeManager.getInstance().getLanguageString(s1));
        } else
        {
            findViewById(0x7f090180).setVisibility(8);
        }
        findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final AlerterPopUp this$0;

            public void onClick(View view1)
            {
                hide();
            }

            
            {
                this$0 = AlerterPopUp.this;
                super();
            }
        });
        ((TimerView)findViewById(0x7f09019c)).reset();
        if (flag)
        {
            findViewById(0x7f090198).setEnabled(true);
            findViewById(0x7f090198).setOnClickListener(new android.view.View.OnClickListener() {

                final AlerterPopUp this$0;

                public void onClick(View view1)
                {
                    onNothThere();
                }

            
            {
                this$0 = AlerterPopUp.this;
                super();
            }
            });
        } else
        {
            findViewById(0x7f090198).setEnabled(false);
        }
        view = findViewById(0x7f090188);
        if (flag1)
        {
            findViewById(0x7f090198).setBackgroundResource(0x7f02002c);
            findViewById(0x7f090198).setPadding(0, 0, 0, 0);
            view.setVisibility(0);
            findViewById(0x7f090197).setVisibility(0);
            findViewById(0x7f090188).setOnClickListener(new android.view.View.OnClickListener() {

                final AlerterPopUp this$0;

                public void onClick(View view1)
                {
                    onThumbsUp();
                    hide();
                }

            
            {
                this$0 = AlerterPopUp.this;
                super();
            }
            });
        } else
        {
            view.setVisibility(8);
            findViewById(0x7f090197).setVisibility(8);
            findViewById(0x7f090198).setBackgroundResource(0x7f0202bb);
            findViewById(0x7f090198).setPadding(0, 0, 0, 0);
        }
        relativelayout = (RelativeLayout)findViewById(0x7f090194);
        layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
        navbar = NativeManager.getInstance().getNavBarManager().getNavBar();
        i = 0;
        if (navbar != null)
        {
            i = navbar.getNavBarHeight();
        }
        layoutparams.setMargins(0, i + 10, 0, 0);
        relativelayout.setLayoutParams(layoutparams);
        mIsShown = true;
        mLayoutManager.addView(mInstance);
        AnimationUtils.openAnimateFromPoint(mInstance, 200F, 400F, 300);
    }

    public void update(String s, String s1, String s2)
    {
        setTitle(s2);
        setIcon(s1);
    }



}
