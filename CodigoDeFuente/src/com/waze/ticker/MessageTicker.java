// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ticker;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.view.timer.TimerView;

public class MessageTicker
{

    private static boolean mIsShown = false;
    private View mView;

    public MessageTicker(View view)
    {
        mView = view;
    }

    private void animateIn()
    {
        mView.setVisibility(0);
        mIsShown = true;
    }

    private void animateOut()
    {
        mIsShown = false;
        removeAutoHideTimer();
        mView.setVisibility(8);
        onMessageTickerClose();
    }

    private void onMessageTickerClose()
    {
        NativeManager.Post(new Runnable() {

            final MessageTicker this$0;

            public void run()
            {
                AppService.getNativeManager().TickerClosedNTV();
            }

            
            {
                this$0 = MessageTicker.this;
                super();
            }
        });
    }

    private void removeAutoHideTimer()
    {
        ((TimerView)mView.findViewById(0x7f0903fa)).stop();
    }

    private void setAutoHideTimer(int i)
    {
        ((TimerView)mView.findViewById(0x7f0903fa)).reset();
        ((TimerView)mView.findViewById(0x7f0903fa)).setTime(i);
        ((TimerView)mView.findViewById(0x7f0903fa)).start();
    }

    private void setIcon(String s)
    {
        ImageView imageview = (ImageView)mView.findViewById(0x7f090239);
        if (s == null || s.length() == 0)
        {
            imageview.setImageDrawable(null);
            return;
        } else
        {
            imageview.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(s))).append(".bin").toString()));
            return;
        }
    }

    private void setText(String s)
    {
        if (s == null)
        {
            return;
        } else
        {
            ((TextView)mView.findViewById(0x7f090020)).setText(s);
            return;
        }
    }

    public void show(String s, String s1, String s2, int i)
    {
        if (mIsShown)
        {
            animateOut();
        }
        setIcon(s2);
        setText(s1);
        setAutoHideTimer(i);
        mIsShown = true;
        mView.findViewById(0x7f0903f9).setOnClickListener(new android.view.View.OnClickListener() {

            final MessageTicker this$0;

            public void onClick(View view)
            {
                animateOut();
            }

            
            {
                this$0 = MessageTicker.this;
                super();
            }
        });
        animateIn();
    }


}
