// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.AutoResizeTextView;

public class ThankYouDialog extends Dialog
{

    private static final int ANIM_CIRCLE_DELAY = 200;
    private static final int ANIM_CIRCLE_DUR = 150;
    private static final int ANIM_DOGE_DELAY = 800;
    private static final int ANIM_DOGE_DUR = 250;
    private static final int ANIM_ONES_DELAY = 500;
    private static final int ANIM_ONES_DUR = 150;
    private static final int ANIM_POINTS_DELAY = 650;
    private static final int ANIM_POINTS_DUR = 150;
    private static final int ANIM_TENS_DELAY = 350;
    private static final int ANIM_TENS_DUR = 150;
    int mEarnedPoints;

    public ThankYouDialog(Context context, int i, boolean flag, android.view.View.OnClickListener onclicklistener, android.view.View.OnClickListener onclicklistener1, DisplayStrings displaystrings, DisplayStrings displaystrings1, 
            DisplayStrings displaystrings2, DisplayStrings displaystrings3, boolean flag1)
    {
        super(context, 0x7f060061);
        mEarnedPoints = i;
        setContentView(0x7f0300b3);
        Window window = getWindow();
        window.setLayout(-2, -2);
        window.setGravity(17);
        NativeManager nativemanager = NativeManager.getInstance();
        View view;
        View view1;
        String s;
        if (i > 0)
        {
            ((TextView)findViewById(0x7f090531)).setText(nativemanager.getLanguageString(DisplayStrings.DS_YOU_EARNED));
            ((TextView)findViewById(0x7f090534)).setText((new StringBuilder()).append(mEarnedPoints % 10).toString());
            ((TextView)findViewById(0x7f090533)).setText((new StringBuilder()).append(mEarnedPoints / 10).toString());
            animatePoints();
        } else
        {
            findViewById(0x7f090531).setVisibility(8);
            findViewById(0x7f090532).setVisibility(8);
        }
        view = findViewById(0x7f090537);
        if (flag)
        {
            AnimationSet animationset = new AnimationSet(true);
            animationset.addAnimation(new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F));
            animationset.addAnimation(new RotateAnimation(-45F, 0.0F, 1, 0.5F, 1, 0.5F));
            animationset.setDuration(250L);
            animationset.setFillBefore(true);
            animationset.setStartOffset(800L);
            view.startAnimation(animationset);
        } else
        {
            view.setVisibility(8);
        }
        view1 = findViewById(0x7f090538);
        if (flag)
        {
            view1.setOnClickListener(onclicklistener1);
        } else
        {
            view1.setVisibility(8);
        }
        findViewById(0x7f09053b).setOnClickListener(onclicklistener);
        if (flag)
        {
            ((TextView)findViewById(0x7f090539)).setText(nativemanager.getLanguageString(displaystrings2));
            ((TextView)findViewById(0x7f09053b)).setText(nativemanager.getLanguageString(displaystrings3));
            ((TextView)findViewById(0x7f09053a)).setText("+30");
        } else
        {
            ((TextView)findViewById(0x7f09053b)).setText(nativemanager.getLanguageString(displaystrings3));
        }
        s = "";
        if (displaystrings != null)
        {
            s = (new StringBuilder(String.valueOf(s))).append(nativemanager.getLanguageString(displaystrings)).toString();
            if (displaystrings1 != null)
            {
                s = (new StringBuilder(String.valueOf(s))).append('\n').toString();
            }
        }
        if (displaystrings1 != null)
        {
            s = (new StringBuilder(String.valueOf(s))).append(nativemanager.getLanguageString(displaystrings1)).toString();
        }
        ((TextView)findViewById(0x7f090536)).setText(s);
        if (flag1)
        {
            ((TextView)findViewById(0x7f09053c)).setText(nativemanager.getLanguageString(DisplayStrings.DS_PENDING_COMMUNITY_REVIEW));
        } else
        {
            findViewById(0x7f09053c).setVisibility(8);
        }
        ((AutoResizeTextView)findViewById(0x7f090535)).setText(nativemanager.getLanguageString(DisplayStrings.DS_POINTS).toUpperCase());
    }

    private void animatePoints()
    {
        View view = findViewById(0x7f090532);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(150L);
        scaleanimation.setFillBefore(true);
        scaleanimation.setStartOffset(200L);
        view.startAnimation(scaleanimation);
        View view1 = findViewById(0x7f090533);
        ScaleAnimation scaleanimation1 = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation1.setDuration(150L);
        scaleanimation1.setFillBefore(true);
        scaleanimation1.setStartOffset(350L);
        view1.startAnimation(scaleanimation1);
        View view2 = findViewById(0x7f090534);
        ScaleAnimation scaleanimation2 = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation2.setDuration(150L);
        scaleanimation2.setFillBefore(true);
        scaleanimation2.setStartOffset(500L);
        view2.startAnimation(scaleanimation2);
        View view3 = findViewById(0x7f090535);
        ScaleAnimation scaleanimation3 = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation3.setDuration(150L);
        scaleanimation3.setFillBefore(true);
        scaleanimation3.setStartOffset(650L);
        view3.startAnimation(scaleanimation3);
    }

    public void onBackPressed()
    {
        findViewById(0x7f09053b).performClick();
    }
}
