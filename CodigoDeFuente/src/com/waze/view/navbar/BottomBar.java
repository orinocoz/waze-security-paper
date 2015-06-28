// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.navbar;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.view.anim.AxisFlipper;

public class BottomBar extends RelativeLayout
{

    private final int FRIENDS_FADED_ALPHA = 118;
    private final int FRIENDS_NORMAL_ALPHA = 255;
    private String LOG_TAG;
    private final float UNITS_FACTOR = 0.8F;
    private final String UNITS_SPACE = " ";
    private final float UNITS_SPACE_FACTOR = 0.6F;
    private boolean bIsShown;
    private boolean bIsVisible;
    private TextView distanceView;
    private TextView etaView;
    private TextView followersView;
    private boolean nightMode;
    private View rootView;
    private TextView timeView;
    private View waypointView;

    public BottomBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        bIsShown = false;
        bIsVisible = false;
        nightMode = false;
        LOG_TAG = "BottomBar";
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030026, this);
        rootView = findViewById(0x7f0901c6);
        waypointView = findViewById(0x7f0901c7);
        etaView = (TextView)findViewById(0x7f0901c8);
        followersView = (TextView)findViewById(0x7f0901c9);
        timeView = (TextView)findViewById(0x7f0901ca);
        distanceView = (TextView)findViewById(0x7f0901cb);
        setVisibility(8);
    }

    private void _append_textsize_span(SpannableStringBuilder spannablestringbuilder, String s, float f)
    {
        spannablestringbuilder.append(s);
        spannablestringbuilder.setSpan(new RelativeSizeSpan(f), spannablestringbuilder.length() - s.length(), spannablestringbuilder.length(), 33);
    }

    public void SetVisible(boolean flag)
    {
        bIsVisible = flag;
        if (bIsVisible)
        {
            setVisibility(0);
            return;
        } else
        {
            setVisibility(8);
            return;
        }
    }

    public void hide(boolean flag)
    {
label0:
        {
            Logger.d_(LOG_TAG, (new StringBuilder("Hide request. Visible: ")).append(isVisible()).toString());
            if (isVisible())
            {
                if (!flag)
                {
                    break label0;
                }
                bIsVisible = false;
                AxisFlipper axisflipper = new AxisFlipper(0.0D, 90D, 0.0D, 0.0D, 0.0D, 0.0D, 0.5D, 0.5D);
                axisflipper.setDuration(500L);
                axisflipper.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                    final BottomBar this$0;

                    public void onAnimationEnd(Animation animation)
                    {
                        setVisibility(8);
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                this$0 = BottomBar.this;
                super();
            }
                });
                startAnimation(axisflipper);
            }
            return;
        }
        setVisibility(8);
        bIsVisible = false;
    }

    public void initLang(boolean flag)
    {
    }

    public boolean isVisible()
    {
        return bIsVisible;
    }

    public void setDistance(String s, String s1)
    {
        if (s == null)
        {
            return;
        } else
        {
            distanceView.setVisibility(0);
            SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
            spannablestringbuilder.append(s);
            _append_textsize_span(spannablestringbuilder, " ", 0.6F);
            _append_textsize_span(spannablestringbuilder, s1, 0.8F);
            distanceView.setText(spannablestringbuilder);
            return;
        }
    }

    public void setETA(String s)
    {
        if (s == null)
        {
            return;
        }
        float f = AppService.getAppResources().getDimensionPixelSize(0x7f0b0024);
        float f1 = AppService.getAppResources().getDimensionPixelSize(0x7f0b0025);
        float f2 = AppService.getAppResources().getDimensionPixelOffset(0x7f0b0022);
        float f3 = AppService.getAppResources().getDimensionPixelOffset(0x7f0b0023);
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)etaView.getLayoutParams();
        if (s.contains(" "))
        {
            String as[] = s.split(" ");
            marginlayoutparams.topMargin = (int)f3;
            etaView.setTextSize(0, f1);
            SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
            spannablestringbuilder.append(as[0]);
            _append_textsize_span(spannablestringbuilder, (new StringBuilder(" ")).append(as[1]).toString(), 0.8F);
            etaView.setText(spannablestringbuilder);
        } else
        {
            marginlayoutparams.topMargin = (int)f2;
            etaView.setTextSize(0, f);
            etaView.setText(s);
        }
        etaView.setVisibility(0);
    }

    public void setFollowers(int i, int j)
    {
        if (j < 0)
        {
            followersView.setVisibility(4);
            return;
        }
        followersView.setVisibility(0);
        if (j == 0)
        {
            followersView.setText("");
            followersView.setBackgroundResource(0x7f020141);
            return;
        }
        if (j <= 99)
        {
            followersView.setText((new StringBuilder()).append(j).toString());
            followersView.setBackgroundResource(0x7f020140);
            return;
        } else
        {
            followersView.setText("99");
            followersView.setBackgroundResource(0x7f020140);
            return;
        }
    }

    public void setMode(boolean flag)
    {
        if (nightMode != flag)
        {
            nightMode = flag;
            if (flag)
            {
                rootView.setBackgroundResource(0x7f0203f7);
            } else
            {
                rootView.setBackgroundResource(0x7f0203f6);
            }
            rootView.setPadding(0, 0, 0, 0);
        }
    }

    public void setTime(String s, String s1)
    {
        if (s == null)
        {
            return;
        } else
        {
            timeView.setVisibility(0);
            SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
            spannablestringbuilder.append(s);
            _append_textsize_span(spannablestringbuilder, " ", 0.6F);
            spannablestringbuilder.append(s1);
            timeView.setText(spannablestringbuilder);
            return;
        }
    }

    public void setToShown()
    {
        bIsShown = true;
    }

    public void setWaypointVisibility(boolean flag)
    {
        if (waypointView == null)
        {
            return;
        }
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        waypointView.setVisibility(i);
    }

    public void show()
    {
        boolean flag = NativeManager.getInstance().isNavigatingNTV();
        Logger.d_(LOG_TAG, (new StringBuilder("Show request. Visible: ")).append(isVisible()).append(". Navigating: ").append(flag).toString());
        if (!isVisible() && flag)
        {
            AxisFlipper axisflipper = new AxisFlipper(90D, 0.0D, 0.0D, 0.0D, 0.0D, 0.0D, 0.5D, 0.5D);
            axisflipper.setDuration(500L);
            axisflipper.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final BottomBar this$0;

                public void onAnimationEnd(Animation animation)
                {
                    setVisibility(0);
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$0 = BottomBar.this;
                super();
            }
            });
            bIsShown = true;
            startAnimation(axisflipper);
            bIsVisible = true;
        }
    }

    public boolean unhide()
    {
        boolean flag = NativeManager.getInstance().isNavigatingNTV();
        Logger.d_(LOG_TAG, (new StringBuilder("Unhide request. Visible: ")).append(isVisible()).append(". Navigating: ").append(flag).toString());
        if (!isVisible() && flag && bIsShown)
        {
            AxisFlipper axisflipper = new AxisFlipper(90D, 0.0D, 0.0D, 0.0D, 0.0D, 0.0D, 0.5D, 0.5D);
            axisflipper.setDuration(250L);
            startAnimation(axisflipper);
            setVisibility(0);
            bIsVisible = true;
            return true;
        } else
        {
            return false;
        }
    }
}
