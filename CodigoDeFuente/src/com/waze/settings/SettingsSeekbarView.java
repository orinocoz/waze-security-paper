// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

public class SettingsSeekbarView extends LinearLayout
{
    public static abstract class OnSeekBarChangeListenerBasic
        implements android.widget.SeekBar.OnSeekBarChangeListener
    {

        public abstract void onProgressChanged(SeekBar seekbar, int i);

        public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
        {
            onProgressChanged(seekbar, i);
        }

        public void onStartTrackingTouch(SeekBar seekbar)
        {
        }

        public void onStopTrackingTouch(SeekBar seekbar)
        {
        }

        public OnSeekBarChangeListenerBasic()
        {
        }
    }


    public static final int MAX_VALUE = 100;
    private LayoutInflater mInflater;
    private SeekBar mSeekBar;
    private TextView mTextView;

    public SettingsSeekbarView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mInflater = LayoutInflater.from(context);
        mInflater.inflate(0x7f0300f4, this);
        mTextView = (TextView)findViewById(0x7f09065f);
        mSeekBar = (SeekBar)findViewById(0x7f090660);
        mSeekBar.setMax(100);
    }

    public int getProgress()
    {
        return mSeekBar.getProgress();
    }

    public void setOnSeekBarChangeListener(android.widget.SeekBar.OnSeekBarChangeListener onseekbarchangelistener)
    {
        mSeekBar.setOnSeekBarChangeListener(onseekbarchangelistener);
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListenerBasic onseekbarchangelistenerbasic)
    {
        mSeekBar.setOnSeekBarChangeListener(onseekbarchangelistenerbasic);
    }

    public void setProgress(int i)
    {
        mSeekBar.setProgress(i);
    }

    public void setText(String s)
    {
        mTextView.setText(s);
    }
}
