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
//            XYChart, PointStyle

public class ScatterChart extends XYChart
{

    private static final int SHAPE_WIDTH = 10;
    private static final float SIZE = 3F;
    private float size;

    public ScatterChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
        size = 3F;
        size = xymultipleseriesrenderer.getPointSize();
    }

    private void drawCircle(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawCircle(f, f1, size, paint);
    }

    private void drawDiamond(Canvas canvas, Paint paint, float af[], float f, float f1)
    {
        af[0] = f;
        af[1] = f1 - size;
        af[2] = f - size;
        af[3] = f1;
        af[4] = f;
        af[5] = f1 + size;
        af[6] = f + size;
        af[7] = f1;
        drawPath(canvas, af, paint, true);
    }

    private void drawSquare(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawRect(f - size, f1 - size, f + size, f1 + size, paint);
    }

    private void drawTriangle(Canvas canvas, Paint paint, float af[], float f, float f1)
    {
        af[0] = f;
        af[1] = f1 - size - size / 2.0F;
        af[2] = f - size;
        af[3] = f1 + size;
        af[4] = f + size;
        af[5] = af[3];
        drawPath(canvas, af, paint, true);
    }

    private void drawX(Canvas canvas, Paint paint, float f, float f1)
    {
        canvas.drawLine(f - size, f1 - size, f + size, f1 + size, paint);
        canvas.drawLine(f + size, f1 - size, f - size, f1 + size, paint);
    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, Paint paint)
    {
        static class _cls1
        {

            static final int $SwitchMap$org$achartengine$chart$PointStyle[];

            static 
            {
                $SwitchMap$org$achartengine$chart$PointStyle = new int[PointStyle.values().length];
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.X.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.CIRCLE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.TRIANGLE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.SQUARE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.DIAMOND.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$org$achartengine$chart$PointStyle[PointStyle.POINT.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        if (((XYSeriesRenderer)simpleseriesrenderer).isFillPoints())
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
        } else
        {
            paint.setStyle(android.graphics.Paint.Style.STROKE);
        }
        switch (_cls1..SwitchMap.org.achartengine.chart.PointStyle[((XYSeriesRenderer)simpleseriesrenderer).getPointStyle().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            drawX(canvas, paint, f + 10F, f1);
            return;

        case 2: // '\002'
            drawCircle(canvas, paint, f + 10F, f1);
            return;

        case 3: // '\003'
            drawTriangle(canvas, paint, new float[6], f + 10F, f1);
            return;

        case 4: // '\004'
            drawSquare(canvas, paint, f + 10F, f1);
            return;

        case 5: // '\005'
            drawDiamond(canvas, paint, new float[8], f + 10F, f1);
            return;

        case 6: // '\006'
            canvas.drawPoint(f + 10F, f1, paint);
            break;
        }
    }

    public void drawSeries(Canvas canvas, Paint paint, float af[], SimpleSeriesRenderer simpleseriesrenderer, float f, int i)
    {
        int j;
        int l;
        XYSeriesRenderer xyseriesrenderer = (XYSeriesRenderer)simpleseriesrenderer;
        paint.setColor(xyseriesrenderer.getColor());
        int k;
        if (xyseriesrenderer.isFillPoints())
        {
            paint.setStyle(android.graphics.Paint.Style.FILL);
        } else
        {
            paint.setStyle(android.graphics.Paint.Style.STROKE);
        }
        j = af.length;
        k = _cls1..SwitchMap.org.achartengine.chart.PointStyle[xyseriesrenderer.getPointStyle().ordinal()];
        l = 0;
        k;
        JVM INSTR tableswitch 1 6: default 92
    //                   1 103
    //                   2 132
    //                   3 161
    //                   4 201
    //                   5 230
    //                   6 270;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return;
_L2:
        while (l < j) 
        {
            drawX(canvas, paint, af[l], af[l + 1]);
            l += 2;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        while (l < j) 
        {
            drawCircle(canvas, paint, af[l], af[l + 1]);
            l += 2;
        }
        if (true) goto _L1; else goto _L4
_L4:
        float af2[] = new float[6];
        int j1 = 0;
        while (j1 < j) 
        {
            drawTriangle(canvas, paint, af2, af[j1], af[j1 + 1]);
            j1 += 2;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        while (l < j) 
        {
            drawSquare(canvas, paint, af[l], af[l + 1]);
            l += 2;
        }
        if (true) goto _L1; else goto _L6
_L6:
        float af1[] = new float[8];
        int i1 = 0;
        while (i1 < j) 
        {
            drawDiamond(canvas, paint, af1, af[i1], af[i1 + 1]);
            i1 += 2;
        }
        if (true) goto _L1; else goto _L7
_L7:
        canvas.drawPoints(af, paint);
        return;
    }

    public int getLegendShapeWidth()
    {
        return 10;
    }
}
