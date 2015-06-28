// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;

public class SwipeableButton extends RelativeLayout
{
    public static interface SwipeableButtonListener
    {

        public abstract void onClick();

        public abstract void onSwipe();
    }


    private static final int NONE = 0;
    private static final int STARTED = 1;
    private static final int SWIPING = 1;
    private Runnable animateStart;
    private boolean bgDisplayed;
    private ImageView bgView;
    private Drawable buttonDrawable;
    protected Handler handler;
    private LayoutInflater inflater;
    protected int lastValidValue;
    private SwipeableButtonListener listener;
    private Runnable reduceProgress;
    private float scale;
    private SeekBar seekBar;
    protected int startStopState;
    private int state;
    private boolean swipeRight;
    private TextView textView;

    public SwipeableButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        handler = new Handler();
        listener = null;
        state = 0;
        startStopState = 0;
        bgDisplayed = false;
        animateStart = new Runnable() {

            final SwipeableButton this$0;

            public void run()
            {
                if (!bgDisplayed && startStopState == 1)
                {
                    state = 1;
                    displayBg();
                }
            }

            
            {
                this$0 = SwipeableButton.this;
                super();
            }
        };
        reduceProgress = new Runnable() {

            final SwipeableButton this$0;

            public void run()
            {
                int i = -10 + seekBar.getProgress();
                if (i <= 0)
                {
                    minimizeSize();
                    seekBar.setProgress(0);
                    boolean flag = bgDisplayed;
                    i = 0;
                    if (flag)
                    {
                        int j = startStopState;
                        i = 0;
                        if (j == 1)
                        {
                            startStopState = 0;
                            removeBg();
                        }
                    }
                } else
                {
                    handler.postDelayed(this, 10L);
                }
                seekBar.setProgress(i);
            }

            
            {
                this$0 = SwipeableButton.this;
                super();
            }
        };
        scale = getResources().getDisplayMetrics().density;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.SwipeableButton);
        swipeRight = typedarray.getBoolean(1, true);
        buttonDrawable = typedarray.getDrawable(0);
        inflater = LayoutInflater.from(context);
        inflater.inflate(0x7f030111, this);
        bgView = (ImageView)findViewById(0x7f09070b);
        if (swipeRight)
        {
            seekBar = (SeekBar)findViewById(0x7f09070e);
            textView = (TextView)findViewById(0x7f09070c);
        } else
        {
            seekBar = (SeekBar)findViewById(0x7f09070f);
            textView = (TextView)findViewById(0x7f09070d);
        }
        seekBar.setVisibility(0);
        setButtonDrawable(buttonDrawable);
        seekBar.setOnSeekBarChangeListener(new android.widget.SeekBar.OnSeekBarChangeListener() {

            final SwipeableButton this$0;

            public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
            {
                if (flag)
                {
                    boolean flag1;
                    if (lastValidValue == 0 && i == 100)
                    {
                        seekbar.setProgress(0);
                        flag1 = true;
                    } else
                    {
                        lastValidValue = i;
                        flag1 = false;
                    }
                    if (!flag1 && i > 10)
                    {
                        float f = (float)Math.max(0, 60 - i) / 60F;
                        setTextAlpha(f);
                        state = 1;
                        if (!bgDisplayed)
                        {
                            displayBg();
                            return;
                        }
                    }
                }
            }

            public void onStartTrackingTouch(SeekBar seekbar)
            {
                lastValidValue = 0;
                startStopState = 1;
                maximizeSize();
                handler.postDelayed(animateStart, 300L);
            }

            public void onStopTrackingTouch(SeekBar seekbar)
            {
                if (startStopState == 1)
                {
                    if (seekBar.getProgress() == 100)
                    {
                        handler.postDelayed(reduceProgress, 1000L);
                    } else
                    {
                        handler.postDelayed(reduceProgress, 0L);
                    }
                } else
                {
                    minimizeSize();
                }
                if (state == 0 && listener != null)
                {
                    listener.onClick();
                    startStopState = 0;
                }
                state = 0;
                if (seekBar.getProgress() == 100 && listener != null)
                {
                    listener.onSwipe();
                }
            }

            
            {
                this$0 = SwipeableButton.this;
                super();
            }
        });
    }

    private void displayBg()
    {
        bgView.setVisibility(0);
        textView.setVisibility(0);
        setTextAlpha(1.0F);
        bgDisplayed = true;
        AnimationSet animationset = new AnimationSet(true);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(300L);
        animationset.addAnimation(alphaanimation);
        animationset.setFillAfter(true);
        textView.startAnimation(animationset);
        bgView.startAnimation(animationset);
    }

    private void maximizeSize()
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)seekBar.getLayoutParams();
        layoutparams.width = (int)(250F * scale);
        seekBar.setLayoutParams(layoutparams);
    }

    private void minimizeSize()
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)seekBar.getLayoutParams();
        layoutparams.width = (int)(65F * scale);
        seekBar.setLayoutParams(layoutparams);
    }

    private void removeBg()
    {
        bgDisplayed = false;
        AnimationSet animationset = new AnimationSet(true);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(300L);
        animationset.addAnimation(alphaanimation);
        animationset.setFillAfter(true);
        textView.startAnimation(animationset);
        bgView.startAnimation(animationset);
    }

    private void setTextAlpha(float f)
    {
        textView.setTextColor(textView.getTextColors().withAlpha((int)(255F * f)));
    }

    public void setButtonDrawable(Drawable drawable)
    {
        seekBar.setThumb(drawable);
        minimizeSize();
        seekBar.setThumbOffset((int)(40F * scale));
    }

    public void setOnClickListener(SwipeableButtonListener swipeablebuttonlistener)
    {
        listener = swipeablebuttonlistener;
    }

    public void setText(String s)
    {
        textView.setText(s);
    }












}
