// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class TipPopUp extends PopUp
{

    private static TipPopUp mInstance = null;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;

    private TipPopUp(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mLayoutManager = layoutmanager;
        init();
    }

    public static TipPopUp getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new TipPopUp(context, layoutmanager);
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03011e, this);
        setUpButtonsTxt();
        setUpforRTL();
        findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final TipPopUp this$0;

            public void onClick(View view)
            {
                onClose();
            }

            
            {
                this$0 = TipPopUp.this;
                super();
            }
        });
    }

    private void onClose()
    {
        hide();
    }

    private void setLongTipText(String s)
    {
        ((TextView)findViewById(0x7f090732)).setText(s);
    }

    private void setLongTitleText(String s)
    {
        ((TextView)findViewById(0x7f09072e)).setText(s);
    }

    private void setRightTipText(String s)
    {
        ((TextView)findViewById(0x7f090739)).setText(s);
    }

    private void setRightTitleText(String s)
    {
        ((TextView)findViewById(0x7f090735)).setText(s);
    }

    private void setTipText(String s)
    {
        ((TextView)findViewById(0x7f09072b)).setText(s);
    }

    private void setTitleText(String s)
    {
        ((TextView)findViewById(0x7f09072a)).setText(s);
    }

    private void setUpButtonsTxt()
    {
    }

    private void setUpforRTL()
    {
        if (AppService.getNativeManager().getLanguageRtl())
        {
            ((TextView)findViewById(0x7f09072b)).setGravity(5);
            ((TextView)findViewById(0x7f09072a)).setGravity(5);
        }
    }

    public void hide()
    {
        mLayoutManager.dismiss(this);
        mIsShown = false;
    }

    public void onBackPressed()
    {
        hide();
    }

    public void show(String s, String s1, boolean flag, String s2)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        if (flag)
        {
            findViewById(0x7f090728).setVisibility(8);
            findViewById(0x7f090733).setVisibility(0);
            setRightTitleText(s);
            setRightTipText(s1);
            ImageView imageview = (ImageView)findViewById(0x7f090734);
            if (s2 != null && s2.length() > 0)
            {
                imageview.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(s2))).append(".bin").toString()));
            } else
            {
                imageview.setImageDrawable(null);
            }
            findViewById(0x7f090736).setOnClickListener(new android.view.View.OnClickListener() {

                final TipPopUp this$0;

                public void onClick(View view)
                {
                    onClose();
                }

            
            {
                this$0 = TipPopUp.this;
                super();
            }
            });
            ((TimerView)findViewById(0x7f090737)).reset();
            ((TimerView)findViewById(0x7f090737)).setWhiteColor();
            ((TimerView)findViewById(0x7f090737)).setTime(15);
            ((TimerView)findViewById(0x7f090737)).start();
        } else
        if (s != null && s.length() > 6)
        {
            findViewById(0x7f090728).setVisibility(8);
            findViewById(0x7f090733).setVisibility(8);
            findViewById(0x7f09072d).setVisibility(0);
            setLongTitleText(s);
            setLongTipText(s1);
            findViewById(0x7f09072f).setOnClickListener(new android.view.View.OnClickListener() {

                final TipPopUp this$0;

                public void onClick(View view)
                {
                    onClose();
                }

            
            {
                this$0 = TipPopUp.this;
                super();
            }
            });
            ((TimerView)findViewById(0x7f090730)).reset();
            ((TimerView)findViewById(0x7f090730)).setWhiteColor();
            ((TimerView)findViewById(0x7f090730)).setTime(15);
            ((TimerView)findViewById(0x7f090730)).start();
        } else
        {
            setTitleText(s);
            setTipText(s1);
        }
        mIsShown = true;
        mLayoutManager.addView(this);
        bringToFront();
        if (flag)
        {
            AnimationUtils.openAnimateFromPoint(mInstance, AppService.getDisplay().getWidth(), AppService.getDisplay().getHeight(), 300);
            return;
        } else
        {
            AnimationUtils.openAnimateFromPoint(mInstance, 0.0F, AppService.getDisplay().getHeight(), 300);
            return;
        }
    }


}
