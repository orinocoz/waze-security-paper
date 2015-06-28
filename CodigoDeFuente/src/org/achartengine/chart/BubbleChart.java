// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYValueSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            XYChart

public class BubbleChart extends XYChart
{

    private static final int MAX_BUBBLE_SIZE = 20;
    private static final int MIN_BUBBLE_SIZE = 2;
    private static final int SHAPE_WIDTH = 10;

    public BubbleChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
    }

    private void drawCircle(Canvas canvas, Paint paint, float f, float f1, float f2)
    {
        canvas.drawCircle(f, f1, f2, paint);
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, Paint paint)
    {
        paint.setStyle(android.graphics.Paint.Style.FILL);
        drawCircle(canvas, paint, f + 10F, f1, 3F);
    }

    public void drawSeries(Canvas canvas, Paint paint, float af[], SimpleSeriesRenderer simpleseriesrenderer, float f, int i)
    {
        paint.setColor(((XYSeriesRenderer)simpleseriesrenderer).getColor());
        paint.setStyle(android.graphics.Paint.Style.FILL);
        int j = af.length;
        XYValueSeries xyvalueseries = (XYValueSeries)mDataset.getSeriesAt(i);
        double d = 20D / xyvalueseries.getMaxValue();
        for (int k = 0; k < j; k += 2)
        {
            double d1 = 2D + d * xyvalueseries.getValue(k / 2);
            drawCircle(canvas, paint, af[k], af[k + 1], (float)d1);
        }

    }

    public int getLegendShapeWidth()
    {
        return 10;
    }
}
