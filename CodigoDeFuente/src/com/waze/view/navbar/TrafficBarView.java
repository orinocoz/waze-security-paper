// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.navbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.share.ShareNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.view.navbar:
//            TrafficBarColoredJamView

public class TrafficBarView extends RelativeLayout
    implements android.view.View.OnClickListener
{

    private View mBg;
    private int mCurPercent;
    private int mCurTime;
    private Runnable mDisapearRunnable;
    private View mDriver;
    private TrafficBarColoredJamView mJam;
    private View mTip;
    private boolean mTipIsAnimating;
    private boolean mTipIsShowing;
    private TextView mTipTime;
    private TextView mTipTitle;

    public TrafficBarView(Context context)
    {
        super(context);
        mTipIsShowing = true;
        mTipIsAnimating = false;
        mCurPercent = 0;
        mCurTime = 0;
        initMembers(context);
    }

    public TrafficBarView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mTipIsShowing = true;
        mTipIsAnimating = false;
        mCurPercent = 0;
        mCurTime = 0;
        initMembers(context);
    }

    public TrafficBarView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mTipIsShowing = true;
        mTipIsAnimating = false;
        mCurPercent = 0;
        mCurTime = 0;
        initMembers(context);
    }

    private void disappearifyTheTip()
    {
        mTipIsAnimating = true;
        mTipIsShowing = false;
        if (mDisapearRunnable != null)
        {
            removeCallbacks(mDisapearRunnable);
        }
        AnimationSet animationset = new AnimationSet(true);
        animationset.setDuration(200L);
        animationset.setFillBefore(true);
        animationset.setInterpolator(new AccelerateInterpolator());
        animationset.addAnimation(new AlphaAnimation(1.0F, 0.0F));
        animationset.addAnimation(new RotateAnimation(0.0F, 80F, 1, 0.0F, 1, 0.5F));
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final TrafficBarView this$0;

            public void onAnimationEnd(Animation animation)
            {
                mTipIsAnimating = false;
                mTip.setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = TrafficBarView.this;
                super();
            }
        });
        mTip.startAnimation(animationset);
    }

    private void initMembers(Context context)
    {
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030127, this);
        mBg = findViewById(0x7f090746);
        mJam = (TrafficBarColoredJamView)findViewById(0x7f090747);
        mDriver = findViewById(0x7f090748);
        mTip = findViewById(0x7f090749);
        mTipTitle = (TextView)findViewById(0x7f09074a);
        mTipTime = (TextView)findViewById(0x7f09074b);
        mBg.setOnClickListener(this);
        mTip.setOnClickListener(this);
        initTip();
    }

    private void initTip()
    {
        mTip.measure(-2, -2);
        mDriver.measure(-2, -2);
        int i = mTip.getMeasuredHeight();
        int j = mDriver.getMeasuredHeight() / 2 - i / 2;
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)mTip.getLayoutParams();
        layoutparams.setMargins(0, 0, 0, j);
        mTip.setLayoutParams(layoutparams);
        mTip.setVisibility(0);
    }

    public void appearifyTheTip(final int timeout)
    {
        if (mDisapearRunnable == null)
        {
            mDisapearRunnable = new Runnable() {

                final TrafficBarView this$0;

                public void run()
                {
                    disappearifyTheTip();
                }

            
            {
                this$0 = TrafficBarView.this;
                super();
            }
            };
        }
        if (mTipIsShowing)
        {
            removeCallbacks(mDisapearRunnable);
            if (timeout > 0)
            {
                postDelayed(mDisapearRunnable, timeout);
            }
            return;
        } else
        {
            mTipIsAnimating = true;
            mTip.setVisibility(0);
            mTip.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final TrafficBarView this$0;
                private final int val$timeout;

                public void onGlobalLayout()
                {
                    mTip.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    AnimationSet animationset = new AnimationSet(true);
                    animationset.setDuration(200L);
                    animationset.setFillBefore(true);
                    animationset.setInterpolator(new DecelerateInterpolator());
                    animationset.addAnimation(new AlphaAnimation(0.0F, 1.0F));
                    animationset.addAnimation(new RotateAnimation(80F, 0.0F, 1, 0.0F, 1, 0.5F));
                    animationset.setAnimationListener(timeout. new android.view.animation.Animation.AnimationListener() {

                        final _cls2 this$1;
                        private final int val$timeout;

                        public void onAnimationEnd(Animation animation)
                        {
                            mTipIsAnimating = false;
                            mTipIsShowing = true;
                            if (timeout > 0)
                            {
                                postDelayed(mDisapearRunnable, timeout);
                            }
                        }

                        public void onAnimationRepeat(Animation animation)
                        {
                        }

                        public void onAnimationStart(Animation animation)
                        {
                        }

            
            {
                this$1 = final__pcls2;
                timeout = I.this;
                super();
            }
                    });
                    mTip.startAnimation(animationset);
                }


            
            {
                this$0 = TrafficBarView.this;
                timeout = i;
                super();
            }
            });
            return;
        }
    }

    public boolean canShow()
    {
        return mCurPercent > -100 && mCurPercent < 100 && mCurTime > 0;
    }

    public void onClick(View view)
    {
        Analytics.log("JAM_CROSS_TIME_CLICKED", "TIME_TO_CROSS|ETA", (new StringBuilder(String.valueOf(mCurTime))).append("|").append(ShareNativeManager.getInstance().getEtaNTV()).toString());
        if (mTipIsAnimating)
        {
            return;
        }
        if (mTipIsShowing)
        {
            disappearifyTheTip();
            return;
        } else
        {
            appearifyTheTip(0);
            return;
        }
    }

    public void reset()
    {
        mTipIsShowing = true;
        mTipIsAnimating = false;
        mCurPercent = 0;
        mCurTime = 0;
        mTip.setVisibility(0);
        mTip.clearAnimation();
    }

    public void setDayMode(boolean flag)
    {
        if (flag)
        {
            mBg.setBackgroundResource(0x7f02041d);
            mTip.setBackgroundResource(0x7f020420);
            mJam.setBackgroundResource(0x7f020422);
            mTipTitle.setTextColor(0xff939393);
            mTipTime.setTextColor(0xff636363);
            return;
        } else
        {
            mBg.setBackgroundResource(0x7f02041f);
            mTip.setBackgroundResource(0x7f020421);
            mJam.setBackgroundResource(0x7f020423);
            mTipTitle.setTextColor(0xff8abacf);
            mTipTime.setTextColor(-1);
            return;
        }
    }

    public void setTime(int i, int j, int ai[], int ai1[])
    {
        mCurPercent = i;
        mCurTime = j;
        if (!canShow())
        {
            return;
        }
        if (!isInEditMode())
        {
            NativeManager nativemanager = NativeManager.getInstance();
            mTipTitle.setText(nativemanager.getLanguageString(DisplayStrings.DS_TRAFFIC_BAR_TITLE));
            TextView textview = mTipTime;
            String s = nativemanager.getLanguageString(DisplayStrings.DS_TRAFFIC_BAR_TIME);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(1 + j / 60);
            textview.setText(String.format(s, aobj));
        }
        int k = mDriver.getHeight();
        int l;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (mCurPercent >= 0)
        {
            l = (mJam.getHeight() * mCurPercent) / 100 - k / 2;
        } else
        {
            l = (mJam.getHeight() * mCurPercent) / 1000 - k / 2;
        }
        layoutparams = (android.widget.RelativeLayout.LayoutParams)mDriver.getLayoutParams();
        layoutparams.setMargins(0, 0, 0, l);
        mDriver.setLayoutParams(layoutparams);
        mJam.setColors(ai, ai1, i);
    }





}
