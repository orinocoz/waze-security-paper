// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class PointsView extends RelativeLayout
{

    private static final int BASIC_SWITCH_DURATION = 200;
    private LayoutInflater inflater;
    private View mBg;
    private View mCheck;
    private View mMust;
    private boolean mPointsOn;
    private TextView mPointsTextView;
    private boolean mShowPoints;
    private boolean mValid;
    private boolean mWasValid;

    public PointsView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mShowPoints = true;
        mPointsOn = true;
        mValid = false;
        mWasValid = true;
        inflater = LayoutInflater.from(context);
        inflater.inflate(0x7f0300b4, this);
        initMemebers();
    }

    private void animateSwitch(boolean flag)
    {
        View view = null;
        View view1 = null;
        boolean flag1;
        Object obj;
        Object obj1;
        ScaleAnimation scaleanimation;
        if (mValid)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (!mWasValid && mValid)
        {
            obj = mMust;
        } else
        if (!flag && mPointsOn)
        {
            obj = mCheck;
            boolean flag5 = mShowPoints;
            view1 = null;
            if (!flag5)
            {
                view1 = mBg;
            }
        } else
        {
            boolean flag2 = mShowPoints;
            obj = null;
            view1 = null;
            if (flag2)
            {
                obj = mPointsTextView;
                view1 = null;
            }
        }
        if (!mValid && mWasValid)
        {
            obj1 = mMust;
        } else
        if (!mPointsOn && flag)
        {
            obj1 = mCheck;
            boolean flag4 = mShowPoints;
            view = null;
            if (!flag4)
            {
                view = mBg;
            }
        } else
        {
            boolean flag3 = mShowPoints;
            obj1 = null;
            view = null;
            if (flag3)
            {
                obj1 = mPointsTextView;
                view = null;
            }
        }
        mMust.setVisibility(8);
        mCheck.setVisibility(8);
        mPointsTextView.setVisibility(8);
        if (obj1 != null)
        {
            ((View) (obj1)).setVisibility(0);
            ((View) (obj1)).startAnimation(makeAnimation(true, flag1));
        }
        if (view != null)
        {
            view.setVisibility(0);
            view.startAnimation(makeAnimation(true, flag1));
        }
        if (obj != null)
        {
            ((View) (obj)).setVisibility(0);
            ((View) (obj)).startAnimation(makeAnimation(false, flag1));
        }
        if (view1 != null)
        {
            view1.setVisibility(0);
            view1.startAnimation(makeAnimation(false, flag1));
        }
        mWasValid = mValid;
        mPointsOn = flag;
        scaleanimation = new ScaleAnimation(1.0F, 1.2F, 1.0F, 1.2F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        scaleanimation.setRepeatCount(1);
        scaleanimation.setRepeatMode(2);
        scaleanimation.setDuration(100L);
        startAnimation(scaleanimation);
    }

    private void initMemebers()
    {
        mBg = findViewById(0x7f09053d);
        mCheck = findViewById(0x7f09053f);
        mMust = findViewById(0x7f090540);
        mPointsTextView = (TextView)findViewById(0x7f09053e);
    }

    private Animation makeAnimation(boolean flag, boolean flag1)
    {
        AnimationSet animationset = new AnimationSet(true);
        animationset.setInterpolator(new AccelerateDecelerateInterpolator());
        animationset.setDuration(200L);
        animationset.setFillAfter(true);
        AlphaAnimation alphaanimation;
        int i;
        int j;
        if (flag)
        {
            alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        } else
        {
            alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        }
        animationset.addAnimation(alphaanimation);
        if (flag)
        {
            i = 0;
            if (flag1)
            {
                j = -180;
            } else
            {
                j = 180;
                i = 0;
            }
        } else
        if (flag1)
        {
            i = 180;
            j = 0;
        } else
        {
            i = -180;
            j = 0;
        }
        animationset.addAnimation(new RotateAnimation(j, i, 1, 0.5F, 1, 0.5F));
        return animationset;
    }

    public boolean isOn()
    {
        return mPointsOn;
    }

    public boolean isValid()
    {
        return mValid;
    }

    public void setIsOn(boolean flag, boolean flag1, boolean flag2)
    {
        byte byte0 = 4;
        byte byte1 = 8;
        if (flag2)
        {
            if (mPointsOn != flag || mWasValid != mValid)
            {
                animateSwitch(flag);
            }
            return;
        }
        mPointsOn = flag;
        if (!mValid)
        {
            View view2 = mMust;
            View view;
            View view1;
            byte byte3;
            if (mPointsOn)
            {
                byte3 = byte0;
            } else
            {
                byte3 = 0;
            }
            view2.setVisibility(byte3);
            mPointsTextView.setVisibility(byte1);
        } else
        {
            if (mShowPoints)
            {
                TextView textview = mPointsTextView;
                byte byte2;
                if (mPointsOn)
                {
                    byte2 = byte1;
                } else
                {
                    byte2 = 0;
                }
                textview.setVisibility(byte2);
            }
            mMust.setVisibility(byte1);
        }
        view = mCheck;
        if (mPointsOn)
        {
            byte1 = 0;
        }
        view.setVisibility(byte1);
        view1 = mBg;
        if (mPointsOn || mShowPoints)
        {
            byte0 = 0;
        }
        view1.setVisibility(byte0);
    }

    public void setPoints(int i)
    {
        setPoints(i, false);
    }

    public void setPoints(int i, boolean flag)
    {
        if (!flag && i > 0)
        {
            mPointsTextView.setText((new StringBuilder("+")).append(i).toString());
            return;
        } else
        {
            mShowPoints = false;
            mPointsTextView.setVisibility(8);
            return;
        }
    }

    public void setValid(boolean flag)
    {
        mValid = flag;
    }
}
