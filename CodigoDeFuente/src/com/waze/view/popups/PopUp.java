// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;
import com.waze.LayoutManager;

public abstract class PopUp extends RelativeLayout
{

    public static int ANIMATION_DURATION = 300;
    private Context mContext;
    private int mTimer;

    public PopUp(Context context, LayoutManager layoutmanager)
    {
        super(context);
        mContext = null;
        mTimer = 0;
        mContext = context;
    }

    public int GetHeight()
    {
        return (int)(mContext.getResources().getDisplayMetrics().density * (float)185);
    }

    public int GetTimer()
    {
        return mTimer;
    }

    public abstract void hide();

    public abstract void onBackPressed();

    public void setPopUpTimer(int i)
    {
        mTimer = i;
    }

}
