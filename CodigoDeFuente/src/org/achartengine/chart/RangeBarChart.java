// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            BarChart

public class RangeBarChart extends BarChart
{

    public RangeBarChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer, BarChart.Type type)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer, type);
    }

    protected void drawChartValuesText(Canvas canvas, XYSeries xyseries, Paint paint, float af[], int i)
    {
        int j = mDataset.getSeriesCount();
        float f = getHalfDiffX(af, af.length, j);
        for (int k = 0; k < af.length; k += 4)
        {
            float f1 = af[k];
            if (mType == BarChart.Type.DEFAULT)
            {
                f1 += f * (float)(i * 2) - f * ((float)j - 1.5F);
            }
            drawText(canvas, getLabel(xyseries.getY(1 + k / 2)), f1, af[k + 3] - 3F, paint, 0.0F);
            drawText(canvas, getLabel(xyseries.getY(k / 2)), f1, 7.5F + af[k + 1], paint, 0.0F);
        }

    }

    public void drawSeries(Canvas canvas, Paint paint, float af[], SimpleSeriesRenderer simpleseriesrenderer, float f, int i)
    {
        int j = mDataset.getSeriesCount();
        int k = af.length;
        paint.setColor(simpleseriesrenderer.getColor());
        paint.setStyle(android.graphics.Paint.Style.FILL);
        float f1 = getHalfDiffX(af, k, j);
        int l = 0;
        while (l < k) 
        {
            float f2 = af[l];
            float f3 = af[l + 1];
            float f4 = af[l + 2];
            float f5 = af[l + 3];
            if (mType == BarChart.Type.STACKED)
            {
                canvas.drawRect(f2 - f1, f5, f4 + f1, f3, paint);
            } else
            {
                float f6 = (f2 - f1 * (float)j) + f1 * (float)(i * 2);
                canvas.drawRect(f6, f5, f6 + 2.0F * f1, f3, paint);
            }
            l += 4;
        }
    }

    protected float getCoeficient()
    {
        return 0.5F;
    }
}
