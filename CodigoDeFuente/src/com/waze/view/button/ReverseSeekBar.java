// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.button;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;

public class ReverseSeekBar extends SeekBar
{

    public ReverseSeekBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void onDraw(Canvas canvas)
    {
        canvas.scale(-1F, 1.0F, (float)getWidth() / 2.0F, (float)getHeight() / 2.0F);
        super.onDraw(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.setLocation((float)getWidth() - motionevent.getX(), motionevent.getY());
        return super.onTouchEvent(motionevent);
    }
}
