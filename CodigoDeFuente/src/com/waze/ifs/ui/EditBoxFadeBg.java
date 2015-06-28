// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.EditText;
import android.widget.FrameLayout;

public class EditBoxFadeBg extends FrameLayout
{
    class MyEditText extends EditText
    {

        final EditBoxFadeBg this$0;

        protected void onFocusChanged(boolean flag, int i, Rect rect)
        {
            super.onFocusChanged(flag, i, rect);
            mHasFocus = flag;
            animateSwitch();
        }

        public MyEditText(Context context, AttributeSet attributeset)
        {
            this$0 = EditBoxFadeBg.this;
            super(context, attributeset);
        }
    }


    private static final float ALPHA_OFF = 0.35F;
    private static final float ALPHA_ON = 1F;
    private static final int BASIC_SWITCH_DURATION = 200;
    private View mBg;
    private MyEditText mEdit;
    private boolean mHasFocus;

    public EditBoxFadeBg(Context context, AttributeSet attributeset)
    {
        super(context);
        mHasFocus = false;
        mEdit = new MyEditText(context, attributeset);
        mBg = new View(context);
        addView(mBg, -1, -1);
        addView(mEdit, -1, -1);
        mBg.setBackgroundDrawable(mEdit.getBackground());
        mEdit.setBackgroundDrawable(null);
        mEdit.setGravity(19);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.35F, 0.35F);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        mBg.startAnimation(alphaanimation);
    }

    private void animateSwitch()
    {
        mBg.setVisibility(0);
        AlphaAnimation alphaanimation;
        if (mHasFocus)
        {
            alphaanimation = new AlphaAnimation(0.35F, 1.0F);
            mEdit.setGravity(16);
        } else
        {
            alphaanimation = new AlphaAnimation(1.0F, 0.35F);
            mEdit.setGravity(19);
        }
        alphaanimation.setDuration(200L);
        alphaanimation.setFillAfter(true);
        mBg.startAnimation(alphaanimation);
    }

    public void setText(String s)
    {
        mEdit.setText(s);
    }


}
