// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import org.achartengine.model.MultipleCategorySeries;
import org.achartengine.renderer.DefaultRenderer;
import org.achartengine.renderer.SimpleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            AbstractChart

public class DoughnutChart extends AbstractChart
{

    private static final int SHAPE_WIDTH = 10;
    private MultipleCategorySeries mDataset;
    private DefaultRenderer mRenderer;
    private int mStep;

    public DoughnutChart(MultipleCategorySeries multiplecategoryseries, DefaultRenderer defaultrenderer)
    {
        mDataset = multiplecategoryseries;
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
        int l2;
        double d;
        int i3;
        int j3;
        int k3;
        float f;
        float f1;
        String as[];
        int l3;
        float f2;
        int i4;
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
        mStep = 7;
        k2 = mDataset.getCategoriesCount();
        l2 = Math.min(Math.abs(i2 - k1), Math.abs(j2 - l1));
        d = 0.20000000000000001D / (double)k2;
        i3 = (int)(0.34999999999999998D * (double)l2);
        j3 = (k1 + i2) / 2;
        k3 = (j2 + l1) / 2;
        f = 0.9F * (float)i3;
        f1 = 1.1F * (float)i3;
        as = new String[k2];
        l3 = 0;
        f2 = f;
        i4 = i3;
        while (l3 < k2) 
        {
            int j4 = mDataset.getItemCount(l3);
            String as1[] = new String[j4];
            int k4 = 0;
            double d1;
            double d5;
            for (d1 = 0.0D; k4 < j4; d1 = d5)
            {
                d5 = d1 + mDataset.getValues(l3)[k4];
                as1[k4] = mDataset.getTitles(l3)[k4];
                k4++;
            }

            float f3 = 0.0F;
            RectF rectf = new RectF(j3 - i4, k3 - i4, j3 + i4, k3 + i4);
            float f4 = 0.0F;
            float f5 = 0.0F;
            float f6 = 1.0F;
            int l4 = 0;
            while (l4 < j4) 
            {
                paint.setColor(mRenderer.getSeriesRendererAt(l4).getColor());
                float f8 = (float)(360D * ((double)(float)mDataset.getValues(l3)[l4] / d1));
                canvas.drawArc(rectf, f3, f8, true, paint);
                int i5;
                float f7;
                int j5;
                float f9;
                float f10;
                if (mRenderer.isShowLabels())
                {
                    paint.setColor(mRenderer.getLabelsColor());
                    double d2 = Math.toRadians(90F - (f3 + f8 / 2.0F));
                    double d3 = Math.sin(d2);
                    double d4 = Math.cos(d2);
                    int k5 = Math.round((float)j3 + (float)(d3 * (double)f2));
                    int l5 = Math.round((float)k3 + (float)(d4 * (double)f2));
                    int i6 = Math.round((float)j3 + (float)(d3 * (double)f1));
                    int j6 = Math.round((float)k3 + (float)(d4 * (double)f1));
                    float f11;
                    int k6;
                    int l6;
                    int i7;
                    if (Math.sqrt(((float)i6 - f4) * ((float)i6 - f4) + ((float)j6 - f5) * ((float)j6 - f5)) <= (double)20F)
                    {
                        float f12 = (float)(1.1000000000000001D * (double)f6);
                        int j7 = Math.round((float)j3 + (float)(d3 * (double)(f1 * f12)));
                        j6 = Math.round((float)k3 + (float)(d4 * (double)(f1 * f12)));
                        k6 = j7;
                        f6 = f12;
                    } else
                    {
                        k6 = i6;
                        f6 = 1.0F;
                    }
                    canvas.drawLine(k5, l5, k6, j6, paint);
                    l6 = 10;
                    paint.setTextAlign(android.graphics.Paint.Align.LEFT);
                    if (k5 > k6)
                    {
                        l6 = -l6;
                        paint.setTextAlign(android.graphics.Paint.Align.RIGHT);
                    }
                    i7 = l6;
                    canvas.drawLine(k6, j6, k6 + i7, j6, paint);
                    canvas.drawText(mDataset.getTitles(l3)[l4], k6 + i7, j6 + 5, paint);
                    f10 = k6;
                    f9 = j6;
                } else
                {
                    f9 = f5;
                    f10 = f4;
                }
                f11 = f8 + f3;
                l4++;
                f5 = f9;
                f4 = f10;
                f3 = f11;
            }
            i5 = (int)((double)i4 - d * (double)l2);
            f7 = (float)((double)f2 - (d * (double)l2 - 2D));
            if (mRenderer.getBackgroundColor() != 0)
            {
                paint.setColor(mRenderer.getBackgroundColor());
            } else
            {
                paint.setColor(-1);
            }
            paint.setStyle(android.graphics.Paint.Style.FILL);
            canvas.drawArc(new RectF(j3 - i5, k3 - i5, j3 + i5, k3 + i5), 0.0F, 360F, true, paint);
            j5 = i5 - 1;
            as[l3] = mDataset.getCategory(l3);
            l3++;
            f2 = f7;
            i4 = j5;
        }
        drawLegend(canvas, mRenderer, as, k1, i2, j, k, l, j1, paint);
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, Paint paint)
    {
        mStep = -1 + mStep;
        canvas.drawCircle((10F + f) - (float)mStep, f1, mStep, paint);
    }

    public int getLegendShapeWidth()
    {
        return 10;
    }
}
