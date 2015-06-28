// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.timer;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

public class TimerCircle extends View
{

    private static final int PADDING = 3;
    private int diameter;
    private int height;
    private RectF innerCircle;
    private RectF outerCircle;
    private Paint paint;
    private final Path path = new Path();
    private float ratio;
    private int width;

    public TimerCircle(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        ratio = 1.0F;
        paint = new Paint();
        paint.setColor(0xff37b7d3);
        paint.setAntiAlias(true);
        setRatio(0.9999F);
    }

    private void drawArc(Canvas canvas, Paint paint1)
    {
        path.reset();
        float f = -360F * ratio;
        path.arcTo(outerCircle, 270F, -f);
        path.arcTo(innerCircle, 270F - f, f);
        path.close();
        canvas.drawPath(path, paint1);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (getWidth() != width || getHeight() != height)
        {
            width = getWidth();
            height = getHeight();
            diameter = -6 + Math.min(width, height);
            int i = diameter / 9;
            int j = (width - diameter) / 2;
            int k = (height - diameter) / 2;
            int l = k + diameter;
            int i1 = j + diameter;
            outerCircle = new RectF(j, k, i1, l);
            int j1 = diameter - i * 2;
            innerCircle = new RectF(j + i, k + i, j1 + (j + i), j1 + (k + i));
        }
        drawArc(canvas, paint);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.getSize(j);
        setMeasuredDimension(k * 1, l * 1);
    }

    public void setRatio(float f)
    {
        ratio = f;
    }
}
