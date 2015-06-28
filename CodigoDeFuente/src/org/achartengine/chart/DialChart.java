// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.achartengine.model.CategorySeries;
import org.achartengine.renderer.DialRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            AbstractChart

public class DialChart extends AbstractChart
{

    private static final int NEEDLE_RADIUS = 10;
    private static final int SHAPE_WIDTH = 10;
    private CategorySeries mDataset;
    private DialRenderer mRenderer;

    public DialChart(CategorySeries categoryseries, DialRenderer dialrenderer)
    {
        mDataset = categoryseries;
        mRenderer = dialrenderer;
    }

    private void drawNeedle(Canvas canvas, double d, int i, int j, double d1, 
            boolean flag, Paint paint)
    {
        double d2 = Math.toRadians(90D);
        int k = (int)(10D * Math.sin(d - d2));
        int l = (int)(10D * Math.cos(d - d2));
        int i1 = (int)(d1 * Math.sin(d));
        int j1 = (int)(d1 * Math.cos(d));
        int k1 = i + i1;
        int l1 = j + j1;
        float af[];
        if (flag)
        {
            int i2 = i + (int)(0.84999999999999998D * d1 * Math.sin(d));
            int j2 = j + (int)(0.84999999999999998D * d1 * Math.cos(d));
            float af1[] = new float[6];
            af1[0] = i2 - k;
            af1[1] = j2 - l;
            af1[2] = k1;
            af1[3] = l1;
            af1[4] = i2 + k;
            af1[5] = l + j2;
            float f = paint.getStrokeWidth();
            paint.setStrokeWidth(5F);
            canvas.drawLine(i, j, k1, l1, paint);
            paint.setStrokeWidth(f);
            af = af1;
        } else
        {
            af = new float[6];
            af[0] = i - k;
            af[1] = j - l;
            af[2] = k1;
            af[3] = l1;
            af[4] = k + i;
            af[5] = l + j;
        }
        drawPath(canvas, af, paint, true);
    }

    private void drawTicks(Canvas canvas, double d, double d1, double d2, 
            double d3, int i, int j, double d4, double d5, double d6, Paint paint, boolean flag)
    {
        for (double d7 = d; d7 <= d1; d7 += d6)
        {
            double d8 = getAngleForValue(d7, d2, d3, d, d1);
            double d9 = Math.sin(d8);
            double d10 = Math.cos(d8);
            int k = Math.round((float)i + (float)(d5 * d9));
            int l = Math.round((float)j + (float)(d5 * d10));
            int i1 = Math.round((float)i + (float)(d9 * d4));
            int j1 = Math.round((float)j + (float)(d10 * d4));
            canvas.drawLine(k, l, i1, j1, paint);
            if (!flag)
            {
                continue;
            }
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            if (k <= i1)
            {
                paint.setTextAlign(android.graphics.Paint.Align.RIGHT);
            }
            String s = (new StringBuilder()).append(d7).append("").toString();
            if (Math.round(d7) == (long)d7)
            {
                s = (new StringBuilder()).append((long)d7).append("").toString();
            }
            canvas.drawText(s, k, l, paint);
        }

    }

    private double getAngleForValue(double d, double d1, double d2, double d3, double d4)
    {
        double d5 = d2 - d1;
        double d6 = d4 - d3;
        return Math.toRadians(d1 + (d5 * (d - d3)) / d6);
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
        double d;
        String as[];
        int i3;
        int j3;
        int k3;
        float f;
        float f1;
        double d1;
        double d2;
        double d3;
        double d4;
        double d7;
        double d8;
        double d9;
        int j4;
        int k4;
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
        d = 0.0D;
        as = new String[k2];
        for (int l2 = 0; l2 < k2; l2++)
        {
            d += mDataset.getValue(l2);
            as[l2] = mDataset.getCategory(l2);
        }

        i3 = (int)(0.34999999999999998D * (double)Math.min(Math.abs(i2 - k1), Math.abs(j2 - l1)));
        j3 = (k1 + i2) / 2;
        k3 = (j2 + l1) / 2;
        f = 0.9F * (float)i3;
        f1 = 1.1F * (float)i3;
        d1 = mRenderer.getMinValue();
        d2 = mRenderer.getMaxValue();
        d3 = mRenderer.getAngleMin();
        d4 = mRenderer.getAngleMax();
        if (!mRenderer.isMinValueSet() || !mRenderer.isMaxValueSet())
        {
            int l3 = mRenderer.getSeriesRendererCount();
            double d5 = d1;
            double d6 = d2;
            for (int i4 = 0; i4 < l3; i4++)
            {
                double d11 = mDataset.getValue(i4);
                if (!mRenderer.isMinValueSet())
                {
                    d5 = Math.min(d5, d11);
                }
                if (!mRenderer.isMaxValueSet())
                {
                    d6 = Math.max(d6, d11);
                }
            }

            d2 = d6;
            d1 = d5;
        }
        if (d1 == d2)
        {
            d1 *= 0.5D;
            d2 *= 1.5D;
        }
        paint.setColor(mRenderer.getLabelsColor());
        d7 = mRenderer.getMinorTicksSpacing();
        d8 = mRenderer.getMajorTicksSpacing();
        if (d7 == 1.7976931348623157E+308D)
        {
            d7 = (d2 - d1) / 30D;
        }
        if (d8 == 1.7976931348623157E+308D)
        {
            d9 = (d2 - d1) / 10D;
        } else
        {
            d9 = d8;
        }
        drawTicks(canvas, d1, d2, d3, d4, j3, k3, f1, i3, d7, paint, false);
        drawTicks(canvas, d1, d2, d3, d4, j3, k3, f1, f, d9, paint, true);
        j4 = mRenderer.getSeriesRendererCount();
        k4 = 0;
        while (k4 < j4) 
        {
            double d10 = getAngleForValue(mDataset.getValue(k4), d3, d4, d1, d2);
            paint.setColor(mRenderer.getSeriesRendererAt(k4).getColor());
            boolean flag;
            if (mRenderer.getVisualTypeForIndex(k4) == org.achartengine.renderer.DialRenderer.Type.ARROW)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            drawNeedle(canvas, d10, j3, k3, f, flag, paint);
            k4++;
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
