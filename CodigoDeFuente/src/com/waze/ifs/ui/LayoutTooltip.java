// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.OvershootInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.PopupWindow;

public class LayoutTooltip
{

    protected Context mContext;
    private int mDX;
    private int mDY;
    protected float mDensity;
    private boolean mOnLeft;
    private boolean mOnTop;
    protected boolean mPreferLeft;
    protected boolean mPreferTop;
    private View mTipBg;
    protected View mView;
    protected PopupWindow mWindow;
    private int mXPos;
    private int mYPos;

    public LayoutTooltip(Context context, int i)
    {
        mPreferLeft = true;
        mPreferTop = true;
        mDX = 0;
        mDY = 0;
        mContext = context;
        mDensity = mContext.getResources().getDisplayMetrics().density;
        mView = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(i, null);
        mWindow = new PopupWindow(context);
        mWindow.setContentView(mView);
        mWindow.setWidth(-2);
        mWindow.setHeight(-2);
        mWindow.setTouchable(false);
        mWindow.setFocusable(false);
        mWindow.setOutsideTouchable(false);
        mWindow.setBackgroundDrawable(null);
        mWindow.setContentView(mView);
    }

    private void setUpWindow(View view)
    {
        int ai[] = new int[2];
        view.getLocationInWindow(ai);
        int i = ai[1];
        int j = i + view.getHeight();
        int k = ai[0] + view.getWidth() / 2;
        mView.measure(-2, -2);
        int l = mView.getMeasuredHeight();
        int i1 = mView.getMeasuredWidth();
        int j1 = mContext.getResources().getDisplayMetrics().widthPixels;
        int k1 = mContext.getResources().getDisplayMetrics().heightPixels;
        int l1 = (i - l) + (int)(5F * mDensity) + mDY;
        int i2 = (j - (int)(5F * mDensity)) + mDY;
        int j2;
        int i3;
        int l3;
        if (mPreferTop)
        {
            int k2;
            View view1;
            int l2;
            float f;
            int j3;
            int k3;
            float f1;
            boolean flag3;
            if (l1 > 0)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            mOnTop = flag3;
        } else
        {
            boolean flag;
            if (i2 + l > k1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mOnTop = flag;
        }
        if (mOnTop)
        {
            mYPos = l1;
        } else
        {
            mYPos = i2;
        }
        j2 = (k - (int)(30F * mDensity)) + mDX;
        k2 = (k - i1) + (int)(30F * mDensity) + mDX;
        if (mPreferLeft)
        {
            boolean flag2;
            if (k2 > 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            mOnLeft = flag2;
        } else
        {
            boolean flag1;
            if (j2 + i1 > j1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            mOnLeft = flag1;
        }
        if (mOnLeft)
        {
            mXPos = k2;
        } else
        {
            mXPos = j2;
        }
        mTipBg = ((ViewGroup)mView).getChildAt(0);
        if (mOnTop)
        {
            if (mOnLeft)
            {
                mTipBg.setBackgroundResource(0x7f020404);
            } else
            {
                mTipBg.setBackgroundResource(0x7f020403);
            }
        } else
        if (mOnLeft)
        {
            mTipBg.setBackgroundResource(0x7f0203fe);
        } else
        {
            mTipBg.setBackgroundResource(0x7f0203fd);
        }
        view1 = mTipBg;
        l2 = (int)(15F * mDensity);
        f = mDensity;
        if (mOnTop)
        {
            i3 = 10;
        } else
        {
            i3 = 20;
        }
        j3 = (int)(f * (float)i3);
        k3 = (int)(15F * mDensity);
        f1 = mDensity;
        if (mOnTop)
        {
            l3 = 20;
        } else
        {
            l3 = 10;
        }
        view1.setPadding(l2, j3, k3, (int)(f1 * (float)l3));
    }

    public void dismiss(boolean flag)
    {
        if (!flag)
        {
            mWindow.dismiss();
            return;
        } else
        {
            AnimationSet animationset = new AnimationSet(false);
            AlphaAnimation alphaanimation = new AlphaAnimation(0.8F, 0.0F);
            alphaanimation.setDuration(100L);
            alphaanimation.setStartOffset(50L);
            alphaanimation.setFillBefore(true);
            alphaanimation.setFillAfter(true);
            animationset.addAnimation(alphaanimation);
            mTipBg.startAnimation(animationset);
            animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final LayoutTooltip this$0;

                public void onAnimationEnd(Animation animation)
                {
                    mView.post(new Runnable() {

                        final _cls1 this$1;

                        public void run()
                        {
                            mWindow.dismiss();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }


            
            {
                this$0 = LayoutTooltip.this;
                super();
            }
            });
            return;
        }
    }

    public View getView()
    {
        return mView;
    }

    public boolean isShowing()
    {
        return mWindow.isShowing();
    }

    public void move(View view)
    {
        if (view == null)
        {
            return;
        } else
        {
            setUpWindow(view);
            mWindow.update(mXPos, mYPos, -1, -1);
            return;
        }
    }

    public void setDelta(int i, int j)
    {
        mDX = i;
        mDY = j;
    }

    public void show(View view)
    {
        if (view == null)
        {
            return;
        } else
        {
            setUpWindow(view);
            mWindow.showAtLocation(view, 0, mXPos, mYPos);
            AnimationSet animationset = new AnimationSet(false);
            TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.8F, 1, 0.0F);
            translateanimation.setDuration(150L);
            translateanimation.setInterpolator(new OvershootInterpolator());
            animationset.addAnimation(translateanimation);
            AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 0.8F);
            alphaanimation.setDuration(100L);
            alphaanimation.setFillBefore(true);
            alphaanimation.setFillAfter(true);
            animationset.addAnimation(alphaanimation);
            mTipBg.startAnimation(animationset);
            return;
        }
    }
}
