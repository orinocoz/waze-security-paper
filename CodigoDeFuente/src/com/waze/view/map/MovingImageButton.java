// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.map;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;

public class MovingImageButton extends ImageButton
{

    public MovingImageButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void start()
    {
        startAnimation(AnimationUtils.loadAnimation(getContext(), 0x7f040007));
    }

    public void stop()
    {
        clearAnimation();
    }
}
