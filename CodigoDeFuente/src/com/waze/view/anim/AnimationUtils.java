// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.waze.AppService;
import com.waze.CPUProfiler;
import com.waze.MapView;
import com.waze.animation.easing.AnimationEasingManager;
import com.waze.animation.easing.Cubic;

public class AnimationUtils
{
    static class StartShape
    {

        int bottom;
        int height;
        int top;
        int width;

        StartShape(Context context)
        {
            DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
            width = displaymetrics.widthPixels / 2;
            top = displaymetrics.heightPixels;
            height = 10 * (int)displaymetrics.density;
            bottom = top + height;
        }
    }


    static final long NAV_RES_DURATION_CLOSE = 250L;
    static final long NAV_RES_DURATION_OPEN = 150L;
    private static final int TOOLTIP_ANIM_DURATION = 500;

    public AnimationUtils()
    {
    }

    public static void SearchBarBackAnimation(View view)
    {
        AnimationSet animationset = new AnimationSet(true);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -5F, 1, -2F);
        translateanimation.setDuration(150L);
        animationset.setInterpolator(new AccelerateInterpolator());
        animationset.addAnimation(translateanimation);
        view.setDrawingCacheEnabled(true);
        view.startAnimation(animationset);
    }

    public static void closeAnimateAlpha(View view, int i, android.view.animation.Animation.AnimationListener animationlistener)
    {
        AnimationSet animationset = new AnimationSet(true);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(i);
        animationset.addAnimation(alphaanimation);
        animationset.setAnimationListener(animationlistener);
        view.startAnimation(animationset);
    }

    public static void closeAnimateMenu(final View view, final android.view.animation.Animation.AnimationListener listener)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 0.9F, 1.0F, 1.1F);
        scaleanimation.setDuration(100L);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -0.1F);
        translateanimation.setDuration(100L);
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            private final android.view.animation.Animation.AnimationListener val$listener;
            private final View val$view;

            public void onAnimationEnd(Animation animation)
            {
                AnimationSet animationset1 = new AnimationSet(true);
                ScaleAnimation scaleanimation1 = new ScaleAnimation(0.9F, 0.0F, 1.1F, 0.0F);
                scaleanimation1.setDuration(200);
                animationset1.addAnimation(scaleanimation1);
                TranslateAnimation translateanimation1 = new TranslateAnimation(1, 0.0F, 1, 0.1F, 1, -0.1F, 1, 1.0F);
                translateanimation1.setDuration(200);
                animationset1.addAnimation(translateanimation1);
                animationset1.setAnimationListener(listener);
                view.startAnimation(animationset1);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                listener = animationlistener;
                view = view1;
                super();
            }
        });
        view.startAnimation(animationset);
    }

    public static void closeAnimateReport(final View view, final android.view.animation.Animation.AnimationListener listener)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 0.9F, 1.0F, 1.1F);
        scaleanimation.setDuration(100L);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.1F, 1, 0.0F, 1, -0.1F);
        translateanimation.setDuration(100L);
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            private final android.view.animation.Animation.AnimationListener val$listener;
            private final View val$view;

            public void onAnimationEnd(Animation animation)
            {
                AnimationSet animationset1 = new AnimationSet(true);
                ScaleAnimation scaleanimation1 = new ScaleAnimation(0.9F, 0.0F, 1.1F, 0.0F);
                scaleanimation1.setDuration(200);
                animationset1.addAnimation(scaleanimation1);
                TranslateAnimation translateanimation1 = new TranslateAnimation(1, 0.1F, 1, 0.9F, 1, -0.1F, 1, 1.0F);
                translateanimation1.setDuration(200);
                animationset1.addAnimation(translateanimation1);
                animationset1.setAnimationListener(listener);
                view.startAnimation(animationset1);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                listener = animationlistener;
                view = view1;
                super();
            }
        });
        view.startAnimation(animationset);
    }

    public static void closeAnimateToPoint(View view, float f, float f1, int i, android.view.animation.Animation.AnimationListener animationlistener)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F);
        scaleanimation.setDuration(i);
        animationset.addAnimation(scaleanimation);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.2F);
        alphaanimation.setDuration(i);
        animationset.addAnimation(alphaanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(0, 0.0F, 0, f, 0, 0.0F, 0, f1);
        translateanimation.setDuration(i);
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(animationlistener);
        view.startAnimation(animationset);
    }

    public static void closeNavResultsToRectangle(View view, android.view.animation.Animation.AnimationListener animationlistener)
    {
        if (!CPUProfiler.shouldAnimate())
        {
            if (animationlistener != null)
            {
                animationlistener.onAnimationEnd(null);
            }
            return;
        }
        AnimationSet animationset = new AnimationSet(true);
        StartShape startshape = new StartShape(view.getContext());
        int i = view.getWidth();
        int j = view.getHeight();
        animationset.addAnimation(new ScaleAnimation(1.0F, (float)startshape.width / (float)i, 1.0F, (float)startshape.height / (float)j, 1, 0.5F, 1, 0.0F));
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        animationset.addAnimation(new TranslateAnimation(0, 0.0F, 0, 0.0F, 0, 0.0F, 0, startshape.top - ai[1]));
        animationset.addAnimation(new AlphaAnimation(1.0F, 0.0F));
        animationset.setDuration(250L);
        animationset.setInterpolator(new AnticipateInterpolator());
        if (animationlistener != null)
        {
            animationset.setAnimationListener(animationlistener);
        }
        view.startAnimation(animationset);
    }

    public static void flashView(View view)
    {
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 1.3F, 1.0F, 1.3F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(80L);
        scaleanimation.setRepeatCount(1);
        scaleanimation.setRepeatMode(2);
        scaleanimation.setInterpolator(new AccelerateInterpolator());
        ScaleAnimation scaleanimation1 = new ScaleAnimation(1.0F, 1.4F, 1.0F, 1.4F, 1, 0.5F, 1, 0.5F);
        scaleanimation1.setDuration(80L);
        scaleanimation.setRepeatCount(1);
        scaleanimation.setRepeatMode(2);
        scaleanimation1.setInterpolator(new AccelerateInterpolator(1.0F));
        setNextAnimation(view, scaleanimation, scaleanimation1);
        ScaleAnimation scaleanimation2 = new ScaleAnimation(1.4F, 1.0F, 1.4F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation2.setDuration(320L);
        scaleanimation2.setInterpolator(new DecelerateInterpolator());
        setNextAnimation(view, scaleanimation1, scaleanimation2);
        view.startAnimation(scaleanimation);
    }

    public static void openAnimateAlert(View view, android.view.animation.Animation.AnimationListener animationlistener)
    {
        AnimationSet animationset = new AnimationSet(true);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -2F);
        translateanimation.setDuration(150L);
        animationset.setInterpolator(new AccelerateInterpolator());
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(animationlistener);
        view.setDrawingCacheEnabled(true);
        view.startAnimation(animationset);
    }

    public static void openAnimateAlert2(View view, android.view.animation.Animation.AnimationListener animationlistener)
    {
        AnimationSet animationset = new AnimationSet(true);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -2F, 1, 0.0F);
        translateanimation.setDuration(400L);
        animationset.setInterpolator(new DecelerateInterpolator());
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(animationlistener);
        view.setDrawingCacheEnabled(true);
        view.startAnimation(animationset);
    }

    public static void openAnimateFromPoint(View view, float f, float f1, int i)
    {
        openAnimateFromPoint(view, f, f1, i, null);
    }

    public static void openAnimateFromPoint(View view, float f, float f1, int i, android.view.animation.Animation.AnimationListener animationlistener)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F);
        scaleanimation.setDuration(i);
        animationset.addAnimation(scaleanimation);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.2F, 1.0F);
        alphaanimation.setDuration(i);
        animationset.addAnimation(alphaanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(0, f, 0, 0.0F, 0, f1, 0, 0.0F);
        translateanimation.setDuration(i);
        animationset.addAnimation(translateanimation);
        if (animationlistener != null)
        {
            animationset.setAnimationListener(animationlistener);
        }
        view.setDrawingCacheEnabled(true);
        view.startAnimation(animationset);
    }

    public static void openAnimateMenu(final View view, final android.view.animation.Animation.AnimationListener listener)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 0.95F, 0.0F, 1.03F);
        scaleanimation.setDuration(100L);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.1F, 1, 0.0F, 1, 1.0F, 1, -0.03F);
        translateanimation.setDuration(100L);
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            private final android.view.animation.Animation.AnimationListener val$listener;
            private final View val$view;

            public void onAnimationEnd(Animation animation)
            {
                AnimationSet animationset1 = new AnimationSet(true);
                ScaleAnimation scaleanimation1 = new ScaleAnimation(0.95F, 1.02F, 1.03F, 0.97F);
                scaleanimation1.setDuration(100L);
                animationset1.addAnimation(scaleanimation1);
                TranslateAnimation translateanimation1 = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -0.03F, 1, 0.03F);
                translateanimation1.setDuration(100L);
                animationset1.addAnimation(translateanimation1);
                animationset1.setAnimationListener(view. new android.view.animation.Animation.AnimationListener() {

                    final _cls3 this$1;
                    private final android.view.animation.Animation.AnimationListener val$listener;
                    private final View val$view;

                    public void onAnimationEnd(Animation animation)
                    {
                        AnimationSet animationset = new AnimationSet(true);
                        ScaleAnimation scaleanimation = new ScaleAnimation(1.02F, 1.0F, 0.97F, 1.0F);
                        scaleanimation.setDuration(100L);
                        animationset.addAnimation(scaleanimation);
                        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.03F, 1, 0.0F);
                        translateanimation.setDuration(100L);
                        animationset.addAnimation(translateanimation);
                        if (listener != null)
                        {
                            animationset.setAnimationListener(listener);
                        }
                        view.startAnimation(animationset);
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                this$1 = final__pcls3;
                listener = animationlistener;
                view = View.this;
                super();
            }
                });
                view.startAnimation(animationset1);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                view = view1;
                listener = animationlistener;
                super();
            }
        });
        view.setDrawingCacheEnabled(true);
        view.startAnimation(animationset);
    }

    public static void openAnimateReport(final View view, final android.view.animation.Animation.AnimationListener listener)
    {
        AnimationSet animationset = new AnimationSet(true);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 0.95F, 0.0F, 1.03F);
        scaleanimation.setDuration(100L);
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.9F, 1, 0.05F, 1, 1.0F, 1, -0.03F);
        translateanimation.setDuration(100L);
        animationset.addAnimation(translateanimation);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            private final android.view.animation.Animation.AnimationListener val$listener;
            private final View val$view;

            public void onAnimationEnd(Animation animation)
            {
                AnimationSet animationset1 = new AnimationSet(true);
                ScaleAnimation scaleanimation1 = new ScaleAnimation(0.95F, 1.02F, 1.03F, 0.97F);
                scaleanimation1.setDuration(100L);
                animationset1.addAnimation(scaleanimation1);
                TranslateAnimation translateanimation1 = new TranslateAnimation(1, 0.05F, 1, -0.02F, 1, -0.03F, 1, 0.03F);
                translateanimation1.setDuration(100L);
                animationset1.addAnimation(translateanimation1);
                animationset1.setAnimationListener(view. new android.view.animation.Animation.AnimationListener() {

                    final _cls4 this$1;
                    private final android.view.animation.Animation.AnimationListener val$listener;
                    private final View val$view;

                    public void onAnimationEnd(Animation animation)
                    {
                        AnimationSet animationset = new AnimationSet(true);
                        ScaleAnimation scaleanimation = new ScaleAnimation(1.02F, 1.0F, 0.97F, 1.0F);
                        scaleanimation.setDuration(100L);
                        animationset.addAnimation(scaleanimation);
                        TranslateAnimation translateanimation = new TranslateAnimation(1, -0.02F, 1, 0.0F, 1, 0.03F, 1, 0.0F);
                        translateanimation.setDuration(100L);
                        animationset.addAnimation(translateanimation);
                        if (listener != null)
                        {
                            animationset.setAnimationListener(listener);
                        }
                        view.startAnimation(animationset);
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                this$1 = final__pcls4;
                listener = animationlistener;
                view = View.this;
                super();
            }
                });
                view.startAnimation(animationset1);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                view = view1;
                listener = animationlistener;
                super();
            }
        });
        view.setDrawingCacheEnabled(true);
        view.startAnimation(animationset);
    }

    public static void openNavResultsFromRectangle(View view, android.view.animation.Animation.AnimationListener animationlistener)
    {
        if (!CPUProfiler.shouldAnimate())
        {
            if (animationlistener != null)
            {
                animationlistener.onAnimationEnd(null);
            }
            return;
        }
        AnimationSet animationset = new AnimationSet(false);
        StartShape startshape = new StartShape(view.getContext());
        int i = view.getWidth();
        int j = view.getHeight();
        ScaleAnimation scaleanimation = new ScaleAnimation((float)startshape.width / (float)i, 1.0F, (float)startshape.height / (float)j, 1.0F, 1, 0.5F, 1, 0.0F);
        scaleanimation.setDuration(150L);
        scaleanimation.setFillBefore(true);
        scaleanimation.setInterpolator(AnimationEasingManager.getInterpolator(com/waze/animation/easing/Cubic, com.waze.animation.easing.AnimationEasingManager.EaseType.EaseOut));
        animationset.addAnimation(scaleanimation);
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        TranslateAnimation translateanimation = new TranslateAnimation(0, 0.0F, 0, 0.0F, 0, startshape.top - ai[1], 0, 0.0F);
        translateanimation.setDuration(150L);
        translateanimation.setInterpolator(AnimationEasingManager.getInterpolator(com/waze/animation/easing/Cubic, com.waze.animation.easing.AnimationEasingManager.EaseType.EaseOut));
        animationset.addAnimation(translateanimation);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(50L);
        alphaanimation.setInterpolator(new LinearInterpolator());
        animationset.addAnimation(alphaanimation);
        if (animationlistener != null)
        {
            animationset.setAnimationListener(animationlistener);
        }
        view.startAnimation(animationset);
    }

    public static void openNavigateScreen(View view, android.view.animation.Animation.AnimationListener animationlistener, boolean flag)
    {
        Animation animation;
        if (flag)
        {
            animation = android.view.animation.AnimationUtils.loadAnimation(AppService.getAppContext(), 0x7f040016);
        } else
        {
            animation = android.view.animation.AnimationUtils.loadAnimation(AppService.getAppContext(), 0x7f040015);
        }
        animation.setInterpolator(new AccelerateInterpolator());
        animation.setAnimationListener(animationlistener);
        animation.setFillAfter(true);
        view.setDrawingCacheEnabled(true);
        view.startAnimation(animation);
    }

    public static void openNavigateScreenWithFadeIn(View view)
    {
        Animation animation = android.view.animation.AnimationUtils.loadAnimation(AppService.getAppContext(), 0x7f040002);
        animation.setInterpolator(new AccelerateInterpolator());
        view.startAnimation(animation);
    }

    public static void overshootCustomPopView(View view)
    {
        Animation animation = android.view.animation.AnimationUtils.loadAnimation(AppService.getAppContext(), 0x7f04000a);
        animation.setFillAfter(true);
        view.startAnimation(animation);
    }

    public static void overshootNativePopView(View view)
    {
        view.startAnimation(android.view.animation.AnimationUtils.loadAnimation(AppService.getAppContext(), 0x7f04000b));
    }

    private static void setNextAnimation(final View v, Animation animation, final Animation next)
    {
        animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            private final Animation val$next;
            private final View val$v;

            public void onAnimationEnd(Animation animation1)
            {
                v.startAnimation(next);
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
            }

            
            {
                v = view;
                next = animation;
                super();
            }
        });
    }

    private static void shakeTooltip(View view)
    {
        if (MapView.gpuSupported() == MapView.GPU_NOT_SUPPORTED)
        {
            return;
        } else
        {
            TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 2, 0.0F, 1, -0.05F);
            translateanimation.setDuration(1500L);
            translateanimation.setRepeatCount(9);
            translateanimation.setRepeatMode(2);
            translateanimation.setInterpolator(new DecelerateInterpolator());
            translateanimation.setFillAfter(true);
            view.startAnimation(translateanimation);
            return;
        }
    }

    public static void slideTooltip(final View toolTipLayout)
    {
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.5F, 1, 0.0F);
        translateanimation.setDuration(500L);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.2F, 1.0F);
        alphaanimation.setDuration(500L);
        final TranslateAnimation textTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 2, 0.1F, 1, 0.0F);
        textTranslateAnimation.setDuration(500L);
        AnimationSet animationset = new AnimationSet(true);
        animationset.addAnimation(translateanimation);
        animationset.addAnimation(alphaanimation);
        animationset.setInterpolator(new DecelerateInterpolator());
        animationset.setDuration(500L);
        toolTipLayout.startAnimation(animationset);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            private final TranslateAnimation val$textTranslateAnimation;
            private final View val$toolTipLayout;

            public void onAnimationEnd(Animation animation)
            {
                AnimationUtils.shakeTooltip(toolTipLayout);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                AppService.Post(textTranslateAnimation. new Runnable() {

                    final _cls5 this$1;
                    private final TranslateAnimation val$textTranslateAnimation;
                    private final View val$toolTipLayout;

                    public void run()
                    {
                        toolTipLayout.findViewById(0x7f09072b).startAnimation(textTranslateAnimation);
                    }

            
            {
                this$1 = final__pcls5;
                toolTipLayout = view;
                textTranslateAnimation = TranslateAnimation.this;
                super();
            }
                }, 50L);
            }

            
            {
                toolTipLayout = view;
                textTranslateAnimation = translateanimation;
                super();
            }
        });
    }

    public static void stretchViewHorizontally(View view, int i)
    {
        AnimationSet animationset = new AnimationSet(false);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.0F, 1.0F, 1.0F);
        scaleanimation.setDuration(i);
        animationset.addAnimation(scaleanimation);
        view.startAnimation(animationset);
    }

}
