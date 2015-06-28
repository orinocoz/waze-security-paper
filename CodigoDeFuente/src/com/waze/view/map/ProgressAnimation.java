// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.map;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;

public class ProgressAnimation extends RelativeLayout
{

    private LayoutInflater inflater;

    public ProgressAnimation(Context context)
    {
        super(context);
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        inflater.inflate(0x7f0300bb, this);
    }

    public ProgressAnimation(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        inflater.inflate(0x7f0300bb, this);
    }

    public void start()
    {
        android.view.animation.Animation animation = AnimationUtils.loadAnimation(getContext(), 0x7f04000e);
        findViewById(0x7f090557).startAnimation(animation);
    }

    public void stop()
    {
        findViewById(0x7f090557).clearAnimation();
    }
}
