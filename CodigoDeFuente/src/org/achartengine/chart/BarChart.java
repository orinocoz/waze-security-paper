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
//            XYChart

public class BarChart extends XYChart
{
    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type DEFAULT;
        public static final Type STACKED;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(org/achartengine/chart/BarChart$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            DEFAULT = new Type("DEFAULT", 0);
            STACKED = new Type("STACKED", 1);
            Type atype[] = new Type[2];
            atype[0] = DEFAULT;
            atype[1] = STACKED;
            $VALUES = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int SHAPE_WIDTH = 12;
    protected Type mType;

    public BarChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer, Type type)
    {
        super(xymultipleseriesdataset, xymultipleseriesrenderer);
        mType = Type.DEFAULT;
        mType = type;
    }

    protected void drawChartValuesText(Canvas canvas, XYSeries xyseries, Paint paint, float af[], int i)
    {
        int j = mDataset.getSeriesCount();
        float f = getHalfDiffX(af, af.length, j);
        for (int k = 0; k < af.length; k += 2)
        {
            float f1 = af[k];
            if (mType == Type.DEFAULT)
            {
                f1 += f * (float)(i * 2) - f * ((float)j - 1.5F);
            }
            drawText(canvas, getLabel(xyseries.getY(k / 2)), f1, af[k + 1] - 3.5F, paint, 0.0F);
        }

    }

    public void drawLegendShape(Canvas canvas, SimpleSeriesRenderer simpleseriesrenderer, float f, float f1, Paint paint)
    {
        canvas.drawRect(f, f1 - 6F, f + 12F, f1 + 6F, paint);
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
            if (mType == Type.STACKED)
            {
                canvas.drawRect(f2 - f1, f3, f2 + f1, f, paint);
            } else
            {
                float f4 = (f2 - f1 * (float)j) + f1 * (float)(i * 2);
                canvas.drawRect(f4, f3, f4 + 2.0F * f1, f, paint);
            }
            l += 2;
        }
    }

    protected float getCoeficient()
    {
        return 1.0F;
    }

    public double getDefaultMinimum()
    {
        return 0.0D;
    }

    protected float getHalfDiffX(float af[], int i, int j)
    {
        float f = (af[i - 2] - af[0]) / (float)i;
        if (f == 0.0F)
        {
            f = 10F;
        }
        if (mType != Type.STACKED)
        {
            f /= j;
        }
        return (float)((double)f / ((double)getCoeficient() * (1.0D + mRenderer.getBarsSpacing())));
    }

    public int getLegendShapeWidth()
    {
        return 12;
    }
}
