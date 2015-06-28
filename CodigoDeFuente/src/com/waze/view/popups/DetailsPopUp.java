// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MapViewWrapper;
import com.waze.NativeManager;
import com.waze.ResManager;

public class DetailsPopUp extends RelativeLayout
{

    private static DetailsPopUp mInstance = null;
    private static boolean mIsShown = false;
    private static int mOffsetX;

    private DetailsPopUp(Context context)
    {
        super(context);
        init();
    }

    public static DetailsPopUp getInstance(Context context)
    {
        if (mInstance == null)
        {
            mInstance = new DetailsPopUp(context);
        }
        return mInstance;
    }

    public static boolean hasInstance()
    {
        return mInstance != null;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030044, this);
        findViewById(0x7f09023c).setOnClickListener(new android.view.View.OnClickListener() {

            final DetailsPopUp this$0;

            public void onClick(View view)
            {
                onMoreAction();
            }

            
            {
                this$0 = DetailsPopUp.this;
                super();
            }
        });
    }

    private void onMoreAction()
    {
        NativeManager.Post(new Runnable() {

            final DetailsPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().wazeUiDetailsPopupNextNTV();
            }

            
            {
                this$0 = DetailsPopUp.this;
                super();
            }
        });
        hide();
    }

    private void setBgImage(int i)
    {
        Display display = AppService.getDisplay();
        float f = getResources().getDisplayMetrics().density;
        if ((float)i < 100F * f)
        {
            updateBgImage(0x7f020120);
            mOffsetX = (int)(71F * f);
            return;
        }
        if (i > display.getWidth() - (int)(85F * f))
        {
            updateBgImage(0x7f020122);
            mOffsetX = (int)(-66F * f);
            return;
        } else
        {
            updateBgImage(0x7f020121);
            mOffsetX = 0;
            return;
        }
    }

    private void setIcon(String s)
    {
        ImageView imageview = (ImageView)findViewById(0x7f090239);
        if (s == null || s.length() == 0)
        {
            imageview.setVisibility(8);
            return;
        } else
        {
            imageview.setVisibility(0);
            imageview.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(s))).append(".bin").toString()));
            return;
        }
    }

    private void setMoreActionIcon(boolean flag)
    {
        View view = findViewById(0x7f09023c);
        if (flag)
        {
            view.setVisibility(0);
            return;
        } else
        {
            view.setVisibility(8);
            return;
        }
    }

    private void setMsgText(String s)
    {
        ((TextView)findViewById(0x7f09023b)).setText(s);
    }

    private void setSpecialText(String s)
    {
        ((TextView)findViewById(0x7f09023e)).setText(s);
    }

    private void setTitleText(String s)
    {
        ((TextView)findViewById(0x7f0901bc)).setText(s);
    }

    private void updateBgImage(int i)
    {
        View view = findViewById(0x7f090238);
        view.setBackgroundResource(i);
        view.setPadding(0, 0, 0, 0);
    }

    private void updatePosition(int i, int j)
    {
        RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f090237);
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
        int k = AppService.getDisplay().getWidth();
        int l = relativelayout.getWidth();
        int i1 = relativelayout.getHeight();
        float f = getResources().getDisplayMetrics().density;
        if (l == 0)
        {
            l = (int)(208F * f);
        }
        if (i1 == 0)
        {
            i1 = (int)(80F * f);
        }
        if (i < k - l / 2)
        {
            layoutparams.setMargins((i - l / 2) + mOffsetX, j - i1, 0, 0);
        } else
        {
            layoutparams.setMargins((i - l / 2) + mOffsetX, j - i1, k - l / 2 - mOffsetX, 0);
        }
        relativelayout.setLayoutParams(layoutparams);
        setBgImage(i);
    }

    public void closeNow()
    {
        mInstance.hide();
    }

    public void hide()
    {
        if (mIsShown)
        {
            mIsShown = false;
            MapViewWrapper mapviewwrapper = AppService.getActiveMapViewWrapper();
            if (mapviewwrapper != null)
            {
                mapviewwrapper.removeView(this);
                NativeManager.Post(new Runnable() {

                    final DetailsPopUp this$0;

                    public void run()
                    {
                        AppService.getNativeManager().wazeUiDetailsPopupClosedNTV();
                    }

            
            {
                this$0 = DetailsPopUp.this;
                super();
            }
                });
                return;
            }
        }
    }

    public boolean isShown()
    {
        return mIsShown;
    }

    public void show(int i, int j, String s, String s1, String s2, boolean flag, String s3)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        MapViewWrapper mapviewwrapper;
        if (s3 != null)
        {
            findViewById(0x7f09023d).setVisibility(0);
            setSpecialText(s3);
        } else
        {
            findViewById(0x7f09023d).setVisibility(8);
        }
        setTitleText(s);
        setMsgText(s1);
        setIcon(s2);
        setMoreActionIcon(flag);
        mIsShown = true;
        mOffsetX = 0;
        setBgImage(i);
        mapviewwrapper = AppService.getActiveMapViewWrapper();
        if (mapviewwrapper != null)
        {
            mapviewwrapper.addView(this);
            updatePosition(i, j);
        }
    }

    public void update(int i, int j)
    {
        if (mIsShown)
        {
            updatePosition(i, j);
        }
    }


}
