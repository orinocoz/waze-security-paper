// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import com.waze.analytics.Analytics;
import com.waze.animation.easing.AnimationEasingManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.TinyTooltip;

// Referenced classes of package com.waze.share:
//            ShareUtility

private static final class ed
    implements android.view.k
{

    boolean _isSelected;
    private final ActivityBase ctx;
    private final FrameLayout frame;
    private final Object friend;
    private final String name;
    private final ed ofs;

    private void setSelected(View view)
    {
        if (_isSelected)
        {
            frame.findViewById(7003).setVisibility(0);
            frame.setAlpha(1.0F);
            return;
        } else
        {
            frame.findViewById(7003).setVisibility(4);
            frame.setAlpha(0.5F);
            return;
        }
    }

    public void onClick(final View v)
    {
        View view = frame.findViewById(7003);
        if (ofs != null)
        {
            ed ed = ofs;
            Object obj = friend;
            boolean flag1;
            if (_isSelected)
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            if (!ed.onFriendSelected(obj, flag1))
            {
                return;
            }
        }
        if (android.os.lected.onFriendSelected < 19)
        {
            ShareUtility.access$0(false);
        }
        boolean flag;
        if (_isSelected)
        {
            view.setVisibility(0);
            AnimationSet animationset2 = new AnimationSet(true);
            Analytics.log("SHARE_TOGGLE_CLICK", "VAUE", "OFF");
            animationset2.addAnimation(new AlphaAnimation(1.0F, 0.0F));
            animationset2.addAnimation(new ScaleAnimation(1.0F, 0.5F, 1.0F, 0.5F, 1, 0.8F, 1, 0.2F));
            animationset2.setDuration(150L);
            animationset2.setFillAfter(true);
            view.startAnimation(animationset2);
            AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.5F);
            alphaanimation1.setDuration(200L);
            alphaanimation1.setFillAfter(false);
            alphaanimation1.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final ShareUtility.OnShareClick this$1;
                private final View val$v;

                public void onAnimationEnd(Animation animation)
                {
                    v.clearAnimation();
                    v.setAlpha(0.5F);
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$1 = ShareUtility.OnShareClick.this;
                v = view;
                super();
            }
            });
            v.setAlpha(1.0F);
            v.startAnimation(alphaanimation1);
        } else
        {
            view.setVisibility(0);
            AnimationSet animationset = new AnimationSet(true);
            Analytics.log("SHARE_TOGGLE_CLICK", "VAUE", "ON");
            animationset.addAnimation(new AlphaAnimation(0.0F, 1.0F));
            animationset.addAnimation(new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 1, 0.8F, 1, 0.2F));
            animationset.setDuration(300L);
            animationset.setFillAfter(true);
            animationset.setInterpolator(AnimationEasingManager.getElasticInterpolator(com.waze.animation.easing.eType.EaseOut, 0.0D, 0.0D));
            view.startAnimation(animationset);
            AnimationSet animationset1 = new AnimationSet(false);
            AlphaAnimation alphaanimation = new AlphaAnimation(0.5F, 1.0F);
            alphaanimation.setDuration(200L);
            alphaanimation.setFillAfter(true);
            animationset1.addAnimation(alphaanimation);
            ScaleAnimation scaleanimation = new ScaleAnimation(0.9F, 1.0F, 0.9F, 1.0F, 1, 0.5F, 1, 0.5F);
            scaleanimation.setDuration(400L);
            scaleanimation.setFillAfter(false);
            scaleanimation.setInterpolator(AnimationEasingManager.getElasticInterpolator(com.waze.animation.easing.eType.EaseOut, 0.0D, 0.0D));
            animationset1.addAnimation(scaleanimation);
            v.setAlpha(1.0F);
            v.startAnimation(animationset1);
            if (ShareUtility.access$1())
            {
                final TinyTooltip tip = new TinyTooltip(ctx, ShareUtility.getShortened(name));
                tip.show(v);
                final Runnable action = new Runnable() {

                    final ShareUtility.OnShareClick this$1;
                    private final TinyTooltip val$tip;

                    public void run()
                    {
                        if (tip != null && tip.isShowing())
                        {
                            tip.dismiss(true);
                        }
                    }

            
            {
                this$1 = ShareUtility.OnShareClick.this;
                tip = tinytooltip;
                super();
            }
                };
                v.postDelayed(action, 1000L);
                v.addOnAttachStateChangeListener(new android.view.View.OnAttachStateChangeListener() {

                    final ShareUtility.OnShareClick this$1;
                    private final Runnable val$action;

                    public void onViewAttachedToWindow(View view1)
                    {
                    }

                    public void onViewDetachedFromWindow(View view1)
                    {
                        view1.removeCallbacks(action);
                    }

            
            {
                this$1 = ShareUtility.OnShareClick.this;
                action = runnable;
                super();
            }
                });
            }
        }
        if (_isSelected)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        _isSelected = flag;
    }

    private ed(ActivityBase activitybase, FrameLayout framelayout, Object obj, boolean flag, ed ed, String s)
    {
        _isSelected = false;
        ctx = activitybase;
        frame = framelayout;
        friend = obj;
        ofs = ed;
        name = s;
        _isSelected = flag;
        setSelected(framelayout);
    }

    ed(ActivityBase activitybase, FrameLayout framelayout, Object obj, boolean flag, ed ed, String s, ed ed1)
    {
        this(activitybase, framelayout, obj, flag, ed, s);
    }
}
