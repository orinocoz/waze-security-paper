// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

// Referenced classes of package org.achartengine.chart:
//            XYChart, ScatterChart, PointStyle

public class LineChart extends XYChart
{

    private static final int SHAPE_WIDTH = 30;
    private ScatterChart pointsChart;

    public LineChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
        pointsChart = new ScatterChart(xymultipleseriesdataset, xymultipleseriesrenderer);
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, Paint paint)
    {
        canvas.drawLine(f, f1, f + 30F, f1, paint);
        if (isRenderPoints(simpleseriesrenderer))
        {
            pointsChart.drawLegendShape(canvas, simpleseriesrenderer, f + 5F, f1, paint);
        }
    }

    public void drawSeries(Canvas canvas, Paint paint, float af[], SimpleSeriesRenderer simpleseriesrenderer, float f, int i)
    {
        int j = af.length;
        XYSeriesRenderer xyseriesrenderer = (XYSeriesRenderer)simpleseriesrenderer;
        float f1 = paint.getStrokeWidth();
        paint.setStrokeWidth(xyseriesrenderer.getLineWidth());
        if (xyseriesrenderer.isFillBelowLine())
        {
            paint.setColor(xyseriesrenderer.getFillBelowLineColor());
            float af1[] = new float[4 + af.length];
            System.arraycopy(af, 0, af1, 0, j);
            af1[0] = 1.0F + af[0];
            af1[j] = af1[j - 2];
            af1[j + 1] = f;
            af1[j + 2] = af1[0];
            af1[j + 3] = af1[j + 1];
            paint.setStyle(android.graphics.Paint.Style.FILL);
            drawPath(canvas, af1, paint, true);
        }
        paint.setColor(simpleseriesrenderer.getColor());
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        drawPath(canvas, af, paint, false);
        paint.setStrokeWidth(f1);
    }

    public int getLegendShapeWidth()
    {
        return 30;
    }

    public ScatterChart getPointsChart()
    {
        return pointsChart;
    }

    public boolean isRenderPoints(SimpleSeriesRenderer simpleseriesrenderer)
    {
        return ((XYSeriesRenderer)simpleseriesrenderer).getPointStyle() != PointStyle.POINT;
    }
}
