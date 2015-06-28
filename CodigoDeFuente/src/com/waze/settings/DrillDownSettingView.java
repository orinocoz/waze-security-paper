// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class DrillDownSettingView extends RelativeLayout
{

    private LayoutInflater inflater;

    public DrillDownSettingView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        Drawable drawable = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.SettingsDrillDown).getDrawable(0);
        inflater = LayoutInflater.from(context);
        inflater.inflate(0x7f0300e7, this);
        if (drawable != null)
        {
            ((ImageView)findViewById(0x7f09062c)).setImageDrawable(drawable);
            return;
        } else
        {
            ((ImageView)findViewById(0x7f09062c)).setVisibility(8);
            return;
        }
    }

    public void displayMore(boolean flag)
    {
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        int i = getContext().getResources().getColor(0x7f08002a);
        ((TextView)findViewById(0x7f09062d)).setTextColor(i);
    }

    public void setIcon(int i)
    {
        ((ImageView)findViewById(0x7f09062c)).setImageResource(i);
    }

    public void setIcon(Drawable drawable)
    {
        ((ImageView)findViewById(0x7f09062c)).setImageDrawable(drawable);
    }

    public void setText(String s)
    {
        ((TextView)findViewById(0x7f09062d)).setText(s);
    }

    public void setTextColor(int i)
    {
        ((TextView)findViewById(0x7f09062d)).setTextColor(i);
    }
}
