// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.LayoutManager;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class EtaUpdatePopUp extends PopUp
{

    private static Context mContext = null;
    private static EtaUpdatePopUp mInstance = null;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;

    private EtaUpdatePopUp(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mContext = context;
        mLayoutManager = layoutmanager;
        init();
    }

    public static EtaUpdatePopUp getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new EtaUpdatePopUp(context, layoutmanager);
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030050, this);
        findViewById(0x7f090297).setOnClickListener(new android.view.View.OnClickListener() {

            final EtaUpdatePopUp this$0;

            public void onClick(View view)
            {
                onClose();
            }

            
            {
                this$0 = EtaUpdatePopUp.this;
                super();
            }
        });
    }

    private void onClose()
    {
        hide();
    }

    private void setCloseTimer(int i)
    {
        ((TimerView)findViewById(0x7f090298)).reset();
        ((TimerView)findViewById(0x7f090298)).setWhiteColor();
        ((TimerView)findViewById(0x7f090298)).setTime(i);
        ((TimerView)findViewById(0x7f090298)).start();
    }

    private void setText(String s, String s1)
    {
        ((TextView)findViewById(0x7f09029b)).setText(s);
        ((TextView)findViewById(0x7f09029c)).setText(s1);
    }

    private void setUpBackground(int i)
    {
        RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f090294);
        ImageView imageview = (ImageView)findViewById(0x7f09029a);
        if (i == 0)
        {
            relativelayout.setBackgroundResource(0x7f020045);
            imageview.setImageResource(0x7f02013c);
            return;
        }
        if (i == 1)
        {
            relativelayout.setBackgroundResource(0x7f020046);
            imageview.setImageResource(0x7f02013d);
            return;
        } else
        {
            relativelayout.setBackgroundResource(0x7f020044);
            imageview.setImageResource(0x7f02013b);
            return;
        }
    }

    private void setUpTitle(String s)
    {
        ((TextView)findViewById(0x7f090296)).setText(s);
    }

    private void stopCloseTimer()
    {
        ((TimerView)findViewById(0x7f090298)).stop();
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

    public void show(int i, String s, String s1, String s2, int j)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        setUpTitle(s);
        setUpBackground(i);
        setText(s1, s2);
        mIsShown = true;
        mLayoutManager.addView(this);
        setCloseTimer(j);
        postDelayed(new Runnable() {

            final EtaUpdatePopUp this$0;

            public void run()
            {
                findViewById(0x7f090296).requestLayout();
                findViewById(0x7f090296).invalidate();
            }

            
            {
                this$0 = EtaUpdatePopUp.this;
                super();
            }
        }, 1L);
    }


}
