// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import java.io.Serializable;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public abstract class AbstractChart
    implements Serializable
{

    public AbstractChart()
    {
    }

    private boolean getExceed(float f, DefaultRenderer defaultrenderer, int i, int j)
    {
        boolean flag;
        if (f > (float)i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (isVertical(defaultrenderer))
        {
            return f > (float)j;
        } else
        {
            return flag;
        }
    }

    private boolean isVertical(DefaultRenderer defaultrenderer)
    {
        return (defaultrenderer instanceof XYMultipleSeriesRenderer) && ((XYMultipleSeriesRenderer)defaultrenderer).getOrientation() == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL;
    }

    public abstract void draw(Canvas canvas, int i, int j, int k, int l, Paint paint);

    protected void drawBackground(DefaultRenderer defaultrenderer, Canvas canvas, int i, int j, int k, int l, Paint paint, 
            boolean flag, int i1)
    {
        if (defaultrenderer.isApplyBackgroundColor() || flag)
        {
            if (flag)
            {
                paint.setColor(i1);
            } else
            {
                paint.setColor(defaultrenderer.getBackgroundColor());
            }
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawRect(i, j, i + k, j + l, paint);
        }
    }

    protected void drawLegend(Canvas canvas, DefaultRenderer defaultrenderer, String as[], int i, int j, int k, int l, 
            int i1, int j1, Paint paint)
    {
        if (defaultrenderer.isShowLegend())
        {
            float f = i;
            float f1 = 32 + ((k + i1) - j1);
            float f2 = getLegendShapeWidth();
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.setTextSize(defaultrenderer.getLegendTextSize());
            int k1 = Math.min(as.length, defaultrenderer.getSeriesRendererCount());
            int l1 = 0;
            while (l1 < k1) 
            {
                String s = as[l1];
                float af[];
                float f3;
                int i2;
                if (as.length == defaultrenderer.getSeriesRendererCount())
                {
                    paint.setColor(defaultrenderer.getSeriesRendererAt(l1).getColor());
                } else
                {
                    paint.setColor(0xffcccccc);
                }
                af = new float[s.length()];
                paint.getTextWidths(s, af);
                f3 = 0.0F;
                i2 = af.length;
                for (int j2 = 0; j2 < i2; j2++)
                {
                    f3 += af[j2];
                }

                float f4 = f3 + (10F + f2);
                float f5 = f + f4;
                if (l1 > 0 && getExceed(f5, defaultrenderer, j, l))
                {
                    f = i;
                    f1 += defaultrenderer.getLegendTextSize();
                    f5 = f + f4;
                }
                String s1;
                if (getExceed(f5, defaultrenderer, j, l))
                {
                    float f6 = (float)j - f - f2 - 10F;
                    if (isVertical(defaultrenderer))
                    {
                        f6 = (float)l - f - f2 - 10F;
                    }
                    int k2 = paint.breakText(s, true, f6, af);
                    s1 = (new StringBuilder()).append(s.substring(0, k2)).append("...").toString();
                } else
                {
                    s1 = s;
                }
                drawLegendShape(canvas, defaultrenderer.getSeriesRendererAt(l1), f, f1, paint);
                canvas.drawText(s1, 5F + (f + f2), 5F + f1, paint);
                f += f4;
                l1++;
            }
        }
    }

    public abstract void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, Paint paint);

    protected void drawPath(Canvas canvas, float af[], Paint paint, boolean flag)
    {
        Path path = new Path();
        path.moveTo(af[0], af[1]);
        for (int i = 2; i < af.length; i += 2)
        {
            path.lineTo(af[i], af[i + 1]);
        }

        if (flag)
        {
            path.lineTo(af[0], af[1]);
        }
        canvas.drawPath(path, paint);
    }

    public abstract int getLegendShapeWidth();
}
