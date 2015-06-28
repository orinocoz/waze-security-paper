// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import org.achartengine.model.CategorySeries;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            AbstractChart

public class PieChart extends AbstractChart
{

    private static final int SHAPE_WIDTH = 10;
    private CategorySeries mDataset;
    private DefaultRenderer mRenderer;

    public PieChart(CategorySeries categoryseries, DefaultRenderer defaultrenderer)
    {
        mDataset = categoryseries;
        mRenderer = defaultrenderer;
    }

    public void draw(Canvas canvas, int i, int j, int k, int l, Paint paint)
    {
        paint.setAntiAlias(mRenderer.isAntialiasing());
        paint.setStyle(android.graphics.Paint.Style.FILL);
        paint.setTextSize(mRenderer.getLabelsTextSize());
        int i1 = mRenderer.getLegendHeight();
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        String as[];
        int l2;
        double d;
        float f;
        int i3;
        int j3;
        int k3;
        float f1;
        float f2;
        float f3;
        float f4;
        float f5;
        RectF rectf;
        int l3;
        if (mRenderer.isShowLegend() && i1 == 0)
        {
            j1 = l / 5;
        } else
        {
            j1 = i1;
        }
        k1 = i + 15;
        l1 = j + 5;
        i2 = -5 + (i + k);
        j2 = (j + l) - j1;
        drawBackground(mRenderer, canvas, i, j, k, l, paint, false, 0);
        k2 = mDataset.getItemCount();
        as = new String[k2];
        l2 = 0;
        double d4;
        for (d = 0.0D; l2 < k2; d = d4)
        {
            d4 = d + mDataset.getValue(l2);
            as[l2] = mDataset.getCategory(l2);
            l2++;
        }

        f = 0.0F;
        i3 = (int)(0.34999999999999998D * (double)Math.min(Math.abs(i2 - k1), Math.abs(j2 - l1)));
        j3 = (k1 + i2) / 2;
        k3 = (j2 + l1) / 2;
        f1 = 0.9F * (float)i3;
        f2 = 1.1F * (float)i3;
        f3 = 0.0F;
        f4 = 0.0F;
        f5 = 1.0F;
        rectf = new RectF(j3 - i3, k3 - i3, j3 + i3, i3 + k3);
        l3 = 0;
        while (l3 < k2) 
        {
            paint.setColor(mRenderer.getSeriesRendererAt(l3).getColor());
            float f6 = (float)(360D * ((double)(float)mDataset.getValue(l3) / d));
            canvas.drawArc(rectf, f, f6, true, paint);
            float f7;
            float f8;
            if (mRenderer.isShowLabels())
            {
                paint.setColor(mRenderer.getLabelsColor());
                double d1 = Math.toRadians(90F - (f + f6 / 2.0F));
                double d2 = Math.sin(d1);
                double d3 = Math.cos(d1);
                int i4 = Math.round((float)j3 + (float)(d2 * (double)f1));
                int j4 = Math.round((float)k3 + (float)(d3 * (double)f1));
                int k4 = Math.round((float)j3 + (float)(d2 * (double)f2));
                int l4 = Math.round((float)k3 + (float)(d3 * (double)f2));
                float f9;
                int i5;
                int j5;
                int k5;
                if (Math.sqrt(((float)k4 - f3) * ((float)k4 - f3) + ((float)l4 - f4) * ((float)l4 - f4)) <= (double)20F)
                {
                    float f10 = (float)(1.1000000000000001D * (double)f5);
                    int l5 = Math.round((float)j3 + (float)(d2 * (double)(f2 * f10)));
                    l4 = Math.round((float)k3 + (float)(d3 * (double)(f2 * f10)));
                    i5 = l5;
                    f5 = f10;
                } else
                {
                    i5 = k4;
                    f5 = 1.0F;
                }
                canvas.drawLine(i4, j4, i5, l4, paint);
                j5 = 10;
                paint.setTextAlign(android.graphics.Paint.Align.LEFT);
                if (i4 > i5)
                {
                    j5 = -j5;
                    paint.setTextAlign(android.graphics.Paint.Align.RIGHT);
                }
                k5 = j5;
                canvas.drawLine(i5, l4, i5 + k5, l4, paint);
                canvas.drawText(mDataset.getCategory(l3), i5 + k5, l4 + 5, paint);
                f8 = i5;
                f7 = l4;
            } else
            {
                f7 = f4;
                f8 = f3;
            }
            f9 = f6 + f;
            l3++;
            f4 = f7;
            f3 = f8;
            f = f9;
        }
        drawLegend(canvas, mRenderer, as, k1, i2, j, k, l, j1, paint);
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, Paint paint)
    {
        canvas.drawRect(f, f1 - 5F, f + 10F, f1 + 5F, paint);
    }

    public int getLegendShapeWidth()
    {
        return 10;
    }
}
