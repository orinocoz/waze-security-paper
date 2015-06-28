// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.waze.settings:
//            SwitchCheckedCallback

public class SettingsSwitchView extends RelativeLayout
{
    private static final class SwitchModes extends Enum
    {

        public static final SwitchModes CHECKED;
        private static final SwitchModes ENUM$VALUES[];
        public static final SwitchModes UNCHECKED;

        public static SwitchModes valueOf(String s)
        {
            return (SwitchModes)Enum.valueOf(com/waze/settings/SettingsSwitchView$SwitchModes, s);
        }

        public static SwitchModes[] values()
        {
            SwitchModes aswitchmodes[] = ENUM$VALUES;
            int i = aswitchmodes.length;
            SwitchModes aswitchmodes1[] = new SwitchModes[i];
            System.arraycopy(aswitchmodes, 0, aswitchmodes1, 0, i);
            return aswitchmodes1;
        }

        static 
        {
            CHECKED = new SwitchModes("CHECKED", 0);
            UNCHECKED = new SwitchModes("UNCHECKED", 1);
            SwitchModes aswitchmodes[] = new SwitchModes[2];
            aswitchmodes[0] = CHECKED;
            aswitchmodes[1] = UNCHECKED;
            ENUM$VALUES = aswitchmodes;
        }

        private SwitchModes(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes[];
    private static final int BASIC_SWITCH_DURATION = 100;
    private static final int BG_RETURN_FROM_STRETCH_DURATION = 250;
    private static final int BG_STRETCH_DURATION = 120;
    private static final int BOX_RETURN_FROM_STRETCH_DURATION = 280;
    private static final int BOX_STRETCH_DURATION = 90;
    private LayoutInflater inflater;
    private ImageView mSwitchBg;
    private RelativeLayout mSwitchHandle;
    private SwitchModes mSwitchMode;
    private ImageView mSwitchV;
    private TextView mTextView;

    static int[] $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()
    {
        int ai[] = $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[SwitchModes.values().length];
        try
        {
            ai1[SwitchModes.CHECKED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[SwitchModes.UNCHECKED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes = ai1;
        return ai1;
    }

    public SettingsSwitchView(Context context)
    {
        super(context);
        inflater = LayoutInflater.from(context);
        inflater.inflate(0x7f0300f8, this);
        initMemebers();
    }

    public SettingsSwitchView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        inflater = LayoutInflater.from(context);
        inflater.inflate(0x7f0300f8, this);
        initMemebers();
    }

    private void animateSwitch(SwitchModes switchmodes)
    {
        fadeSwitchV(switchmodes);
        slideBox(switchmodes);
        changeBgAlpha(switchmodes);
    }

    private void changeBgAlpha(final SwitchModes mode)
    {
        android.view.animation.Animation.AnimationListener animationlistener = new android.view.animation.Animation.AnimationListener() {

            final SettingsSwitchView this$0;
            private final SwitchModes val$mode;

            public void onAnimationEnd(Animation animation)
            {
                changeBgAlphaSecondPhase(mode);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = SettingsSwitchView.this;
                mode = switchmodes;
                super();
            }
        };
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[mode.ordinal()];
        JVM INSTR tableswitch 1 1: default 36
    //                   1 73;
           goto _L1 _L2
_L1:
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.8F);
_L4:
        alphaanimation.setDuration(50L);
        alphaanimation.setFillAfter(true);
        alphaanimation.setAnimationListener(animationlistener);
        mSwitchBg.startAnimation(alphaanimation);
        return;
_L2:
        alphaanimation = new AlphaAnimation(1.0F, 0.5F);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void changeBgAlphaSecondPhase(final SwitchModes mode)
    {
        android.view.animation.Animation.AnimationListener animationlistener = new android.view.animation.Animation.AnimationListener() {

            final SettingsSwitchView this$0;
            private final SwitchModes val$mode;

            public void onAnimationEnd(Animation animation)
            {
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                toggleBgImage(mode);
            }

            
            {
                this$0 = SettingsSwitchView.this;
                mode = switchmodes;
                super();
            }
        };
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[mode.ordinal()];
        JVM INSTR tableswitch 1 1: default 36
    //                   1 73;
           goto _L1 _L2
_L1:
        AlphaAnimation alphaanimation = new AlphaAnimation(0.8F, 1.0F);
_L4:
        alphaanimation.setDuration(50L);
        alphaanimation.setFillAfter(true);
        alphaanimation.setAnimationListener(animationlistener);
        mSwitchBg.startAnimation(alphaanimation);
        return;
_L2:
        alphaanimation = new AlphaAnimation(0.2F, 1.0F);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void fadeSwitchV(SwitchModes switchmodes)
    {
        mSwitchV.setVisibility(0);
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[switchmodes.ordinal()];
        JVM INSTR tableswitch 1 1: default 36
    //                   1 67;
           goto _L1 _L2
_L1:
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
_L4:
        alphaanimation.setDuration(100L);
        alphaanimation.setFillAfter(true);
        mSwitchV.startAnimation(alphaanimation);
        return;
_L2:
        alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void initMemebers()
    {
        mSwitchBg = (ImageView)findViewById(0x7f090671);
        mSwitchHandle = (RelativeLayout)findViewById(0x7f090672);
        mSwitchV = (ImageView)findViewById(0x7f090673);
        mTextView = (TextView)findViewById(0x7f090670);
    }

    private void moveBoxToStretch(final SwitchModes mode)
    {
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[mode.ordinal()];
        JVM INSTR tableswitch 1 1: default 28
    //                   1 179;
           goto _L1 _L2
_L1:
        ScaleAnimation scaleanimation;
        TranslateAnimation translateanimation;
        ScaleAnimation scaleanimation1;
        scaleanimation = new ScaleAnimation(1.0F, 1.07F, 1.0F, 1.0F, 1, 0.9F, 1, 0.5F);
        translateanimation = new TranslateAnimation(1, -0.4F, 1, -0.47F, 1, 0.0F, 1, 0.0F);
        scaleanimation1 = new ScaleAnimation(1.04F, 1.05F, 1.04F, 1.05F, 1, 0.5F, 1, 0.5F);
_L4:
        android.view.animation.Animation.AnimationListener animationlistener = new android.view.animation.Animation.AnimationListener() {

            final SettingsSwitchView this$0;
            private final SwitchModes val$mode;

            public void onAnimationEnd(Animation animation)
            {
                returnBoxAfterStretchMove(mode);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = SettingsSwitchView.this;
                mode = switchmodes;
                super();
            }
        };
        scaleanimation.setDuration(120L);
        scaleanimation.setFillAfter(true);
        mSwitchBg.setAnimation(scaleanimation);
        AnimationSet animationset = new AnimationSet(true);
        scaleanimation1.setDuration(90L);
        translateanimation.setDuration(90L);
        translateanimation.setAnimationListener(animationlistener);
        animationset.setFillAfter(true);
        animationset.addAnimation(translateanimation);
        animationset.addAnimation(scaleanimation1);
        mSwitchHandle.setAnimation(animationset);
        return;
_L2:
        scaleanimation = new ScaleAnimation(1.0F, 1.07F, 1.0F, 1.0F, 1, 0.1F, 1, 0.5F);
        translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.06F, 1, 0.0F, 1, 0.0F);
        scaleanimation1 = new ScaleAnimation(1.04F, 1.05F, 1.04F, 1.05F, 1, 0.5F, 1, 0.5F);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void returnBoxAfterStretchMove(SwitchModes switchmodes)
    {
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[switchmodes.ordinal()];
        JVM INSTR tableswitch 1 1: default 28
    //                   1 160;
           goto _L1 _L2
_L1:
        ScaleAnimation scaleanimation;
        TranslateAnimation translateanimation;
        ScaleAnimation scaleanimation1;
        scaleanimation = new ScaleAnimation(1.07F, 1.0F, 1.0F, 1.0F, 1, 0.9F, 1, 0.5F);
        translateanimation = new TranslateAnimation(1, -0.47F, 1, -0.4F, 1, 0.0F, 1, 0.0F);
        scaleanimation1 = new ScaleAnimation(1.05F, 1.0F, 1.05F, 1.0F, 1, 0.5F, 1, 0.5F);
_L4:
        scaleanimation.setDuration(250L);
        scaleanimation.setFillAfter(true);
        mSwitchBg.setAnimation(scaleanimation);
        AnimationSet animationset = new AnimationSet(true);
        scaleanimation1.setDuration(280L);
        translateanimation.setDuration(280L);
        animationset.addAnimation(translateanimation);
        animationset.addAnimation(scaleanimation1);
        animationset.setFillAfter(true);
        mSwitchHandle.setAnimation(animationset);
        return;
_L2:
        scaleanimation = new ScaleAnimation(1.07F, 1.0F, 1.0F, 1.0F, 1, 0.1F, 1, 0.5F);
        translateanimation = new TranslateAnimation(1, 0.06F, 1, -0.05F, 1, 0.0F, 1, 0.0F);
        scaleanimation1 = new ScaleAnimation(1.05F, 1.0F, 1.05F, 1.0F, 1, 0.5F, 1, 0.5F);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void setSwitch(SwitchModes switchmodes)
    {
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[switchmodes.ordinal()];
        JVM INSTR tableswitch 1 1: default 28
    //                   1 90;
           goto _L1 _L2
_L1:
        TranslateAnimation translateanimation;
        translateanimation = new TranslateAnimation(1, -0.4F, 1, -0.4F, 1, 0.0F, 1, 0.0F);
        mSwitchV.setVisibility(8);
        mSwitchBg.setImageDrawable(getResources().getDrawable(0x7f0203d3));
_L4:
        translateanimation.setDuration(1L);
        translateanimation.setFillAfter(true);
        mSwitchHandle.startAnimation(translateanimation);
        return;
_L2:
        translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
        mSwitchV.setVisibility(0);
        mSwitchBg.setImageDrawable(getResources().getDrawable(0x7f0203d4));
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void slideBox(final SwitchModes mode)
    {
        android.view.animation.Animation.AnimationListener animationlistener = new android.view.animation.Animation.AnimationListener() {

            final SettingsSwitchView this$0;
            private final SwitchModes val$mode;

            public void onAnimationEnd(Animation animation)
            {
                moveBoxToStretch(mode);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = SettingsSwitchView.this;
                mode = switchmodes;
                super();
            }
        };
        $SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[mode.ordinal()];
        JVM INSTR tableswitch 1 1: default 36
    //                   1 134;
           goto _L1 _L2
_L1:
        TranslateAnimation translateanimation;
        ScaleAnimation scaleanimation;
        translateanimation = new TranslateAnimation(1, 0.0F, 1, -0.4F, 1, 0.0F, 1, 0.0F);
        scaleanimation = new ScaleAnimation(1.02F, 1.0F, 0.8F, 1.04F, 1, 0.5F, 1, 0.5F);
_L4:
        AnimationSet animationset = new AnimationSet(true);
        translateanimation.setDuration(100L);
        translateanimation.setAnimationListener(animationlistener);
        scaleanimation.setDuration(100L);
        animationset.addAnimation(scaleanimation);
        animationset.addAnimation(translateanimation);
        animationset.setFillAfter(true);
        mSwitchHandle.startAnimation(animationset);
        return;
_L2:
        translateanimation = new TranslateAnimation(1, -0.4F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
        scaleanimation = new ScaleAnimation(1.02F, 1.0F, 0.8F, 1.04F, 1, 0.5F, 1, 0.5F);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void toggleBgImage(SwitchModes switchmodes)
    {
        switch ($SWITCH_TABLE$com$waze$settings$SettingsSwitchView$SwitchModes()[switchmodes.ordinal()])
        {
        default:
            mSwitchBg.setImageDrawable(getResources().getDrawable(0x7f0203d3));
            return;

        case 1: // '\001'
            mSwitchBg.setImageDrawable(getResources().getDrawable(0x7f0203d4));
            break;
        }
    }

    public boolean isChecked()
    {
        return mSwitchMode == SwitchModes.CHECKED;
    }

    public void setOnChecked(final SwitchCheckedCallback listener)
    {
        mSwitchBg.setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsSwitchView this$0;
            private final SwitchCheckedCallback val$listener;

            public void onClick(View view)
            {
                SettingsSwitchView settingsswitchview = SettingsSwitchView.this;
                SwitchModes switchmodes;
                if (isChecked())
                {
                    switchmodes = SwitchModes.UNCHECKED;
                } else
                {
                    switchmodes = SwitchModes.CHECKED;
                }
                settingsswitchview.mSwitchMode = switchmodes;
                animateSwitch(mSwitchMode);
                listener.OnCallback(isChecked());
            }

            
            {
                this$0 = SettingsSwitchView.this;
                listener = switchcheckedcallback;
                super();
            }
        });
    }

    public void setText(String s)
    {
        mTextView.setText(s);
    }

    public void setTypeface(Typeface typeface, int i)
    {
        mTextView.setTypeface(typeface, i);
    }

    public void setValue(boolean flag)
    {
        SwitchModes switchmodes;
        if (flag)
        {
            switchmodes = SwitchModes.CHECKED;
        } else
        {
            switchmodes = SwitchModes.UNCHECKED;
        }
        mSwitchMode = switchmodes;
        setSwitch(mSwitchMode);
    }







}
