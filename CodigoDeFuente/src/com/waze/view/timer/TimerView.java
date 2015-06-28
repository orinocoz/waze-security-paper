// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.timer;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Date;

// Referenced classes of package com.waze.view.timer:
//            TimerCircle

public class TimerView extends RelativeLayout
{

    private static final int TIMER_TICK = 125;
    protected boolean expired;
    private Handler handler;
    private LayoutInflater inflater;
    protected boolean shouldStop;
    private Date startTime;
    private int time;
    private TimerCircle timerCircle;
    private TextView timerText;
    private Runnable updateTimeTask;

    public TimerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        handler = new Handler();
        time = -1;
        shouldStop = false;
        expired = false;
        updateTimeTask = new Runnable() {

            final TimerView this$0;

            public void run()
            {
                long l = System.currentTimeMillis();
                float f = 1.0F - (float)(l - startTime.getTime()) / (1000F * (float)time);
                if (f < 0.0F)
                {
                    f = 0.0F;
                }
                int i = (int)((long)time - (l - startTime.getTime()) / 1000L);
                if (i <= 0)
                {
                    setVisibility(8);
                }
                timerText.setText((new StringBuilder()).append(i).toString());
                timerCircle.setRatio(f);
                timerCircle.invalidate();
                if (!shouldStop)
                {
                    if (f > 0.0F)
                    {
                        handler.postDelayed(this, 125L);
                        return;
                    } else
                    {
                        expired = true;
                        ((View)getParent()).performClick();
                        return;
                    }
                } else
                {
                    setVisibility(8);
                    return;
                }
            }

            
            {
                this$0 = TimerView.this;
                super();
            }
        };
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.TimerView);
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        inflater.inflate(0x7f03011c, this);
        timerCircle = (TimerCircle)findViewById(0x7f090725);
        timerText = (TextView)findViewById(0x7f090724);
        time = typedarray.getInt(0, -1);
        if (time <= 0 || shouldStop)
        {
            setVisibility(8);
        }
        timerText.setText((new StringBuilder()).append(time).toString());
        timerCircle.invalidate();
    }

    public boolean hasExpired()
    {
        return expired;
    }

    public void reset()
    {
        shouldStop = false;
    }

    public void setGrayColor()
    {
        timerText = (TextView)findViewById(0x7f090724);
        timerText.setTextColor(getContext().getResources().getColor(0x7f08003d));
    }

    public void setTime(int i)
    {
        time = i;
        if (time > 0 && !shouldStop)
        {
            setVisibility(0);
        }
    }

    public void setWhiteColor()
    {
        timerText = (TextView)findViewById(0x7f090724);
        timerText.setTextColor(-1);
        ((ImageView)findViewById(0x7f090723)).setImageResource(0x7f0203fb);
    }

    public void start()
    {
        startTime = new Date();
        handler.postDelayed(updateTimeTask, 0L);
    }

    public void stop()
    {
        shouldStop = true;
        setVisibility(8);
    }





}
