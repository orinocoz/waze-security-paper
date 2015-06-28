// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.chart;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.SimpleSeriesRenderer;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.util.MathHelper;

// Referenced classes of package org.achartengine.chart:
//            AbstractChart, ScatterChart

public abstract class XYChart extends AbstractChart
{

    private double calcRange[];
    private PointF mCenter;
    protected XYMultipleSeriesDataset mDataset;
    protected XYMultipleSeriesRenderer mRenderer;
    private float mScale;
    private float mTranslate;
    private Rect screenR;

    public XYChart(XYMultipleSeriesDataset xymultipleseriesdataset, XYMultipleSeriesRenderer xymultipleseriesrenderer)
    {
        calcRange = new double[4];
        mDataset = xymultipleseriesdataset;
        mRenderer = xymultipleseriesrenderer;
    }

    private void drawSeries(XYSeries xyseries, Canvas canvas, Paint paint, List list, SimpleSeriesRenderer simpleseriesrenderer, float f, int i, 
            org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation orientation)
    {
        float af[] = MathHelper.getFloats(list);
        drawSeries(canvas, paint, af, simpleseriesrenderer, f, i);
        if (isRenderPoints(simpleseriesrenderer))
        {
            ScatterChart scatterchart = getPointsChart();
            if (scatterchart != null)
            {
                scatterchart.drawSeries(canvas, paint, af, simpleseriesrenderer, 0.0F, i);
            }
        }
        paint.setTextSize(mRenderer.getChartValuesTextSize());
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        {
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        } else
        {
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
        }
        if (mRenderer.isDisplayChartValues())
        {
            drawChartValuesText(canvas, xyseries, paint, af, i);
        }
    }

    private List getValidLabels(List list)
    {
        ArrayList arraylist = new ArrayList(list);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Double double1 = (Double)iterator.next();
            if (double1.isNaN())
            {
                arraylist.remove(double1);
            }
        } while (true);
        return arraylist;
    }

    private void transform(Canvas canvas, float f, boolean flag)
    {
        if (flag)
        {
            canvas.scale(1.0F / mScale, mScale);
            canvas.translate(mTranslate, -mTranslate);
            canvas.rotate(-f, mCenter.x, mCenter.y);
            return;
        } else
        {
            canvas.rotate(f, mCenter.x, mCenter.y);
            canvas.translate(-mTranslate, mTranslate);
            canvas.scale(mScale, 1.0F / mScale);
            return;
        }
    }

    public void draw(Canvas canvas, int i, int j, int k, int l, Paint paint)
    {
        paint.setAntiAlias(mRenderer.isAntialiasing());
        int i1 = mRenderer.getLegendHeight();
        int j1;
        int ai[];
        int k1;
        int l1;
        int i2;
        int j2;
        org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation orientation;
        int k2;
        int l2;
        boolean flag;
        double d;
        double d1;
        double d2;
        double d3;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        int i3;
        String as[];
        int j3;
        if (mRenderer.isShowLegend() && i1 == 0)
        {
            j1 = l / 5;
        } else
        {
            j1 = i1;
        }
        ai = mRenderer.getMargins();
        k1 = i + ai[1];
        l1 = j + ai[0];
        i2 = (i + k) - ai[3];
        j2 = (j + l) - ai[2] - j1;
        if (screenR == null)
        {
            screenR = new Rect();
        }
        screenR.set(k1, l1, i2, j2);
        drawBackground(mRenderer, canvas, i, j, k, l, paint, false, 0);
        if (paint.getTypeface() == null || !paint.getTypeface().toString().equals(mRenderer.getTextTypefaceName()) || paint.getTypeface().getStyle() != mRenderer.getTextTypefaceStyle())
        {
            paint.setTypeface(Typeface.create(mRenderer.getTextTypefaceName(), mRenderer.getTextTypefaceStyle()));
        }
        orientation = mRenderer.getOrientation();
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
        {
            int j7 = i2 - j1;
            j2 += j1 - 20;
            k2 = j7;
        } else
        {
            k2 = i2;
        }
        l2 = orientation.getAngle();
        if (l2 == 90)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mScale = (float)l / (float)k;
        mTranslate = Math.abs(k - l) / 2;
        if (mScale < 1.0F)
        {
            mTranslate = -1F * mTranslate;
        }
        mCenter = new PointF((i + k) / 2, (j + l) / 2);
        if (flag)
        {
            transform(canvas, l2, false);
        }
        d = mRenderer.getXAxisMin();
        d1 = mRenderer.getXAxisMax();
        d2 = mRenderer.getYAxisMin();
        d3 = mRenderer.getYAxisMax();
        flag1 = mRenderer.isMinXSet();
        flag2 = mRenderer.isMaxXSet();
        flag3 = mRenderer.isMinYSet();
        flag4 = mRenderer.isMaxYSet();
        i3 = mDataset.getSeriesCount();
        as = new String[i3];
        j3 = 0;
        while (j3 < i3) 
        {
            XYSeries xyseries1 = mDataset.getSeriesAt(j3);
            as[j3] = xyseries1.getTitle();
            double d8;
            double d9;
            double d10;
            if (xyseries1.getItemCount() == 0)
            {
                d10 = d3;
                d9 = d2;
                d8 = d1;
            } else
            {
                if (!flag1)
                {
                    double d14 = xyseries1.getMinX();
                    d = Math.min(d, d14);
                    calcRange[0] = d;
                }
                double d4;
                double d5;
                boolean flag5;
                int k3;
                XYMultipleSeriesRenderer xymultipleseriesrenderer;
                int l3;
                int i4;
                int j4;
                boolean flag6;
                boolean flag7;
                int k4;
                List list;
                int l4;
                List list1;
                int i5;
                int j5;
                int k5;
                float f;
                double d6;
                float f1;
                XYMultipleSeriesRenderer xymultipleseriesrenderer1;
                int l5;
                int i6;
                int j6;
                XYSeries xyseries;
                SimpleSeriesRenderer simpleseriesrenderer;
                int k6;
                ArrayList arraylist;
                int l6;
                int i7;
                double d7;
                if (!flag2)
                {
                    double d13 = xyseries1.getMaxX();
                    d8 = Math.max(d1, d13);
                    calcRange[1] = d8;
                } else
                {
                    d8 = d1;
                }
                if (!flag3)
                {
                    double d12 = (float)xyseries1.getMinY();
                    d9 = Math.min(d2, d12);
                    calcRange[2] = d9;
                } else
                {
                    d9 = d2;
                }
                if (!flag4)
                {
                    double d11 = (float)xyseries1.getMaxY();
                    d10 = Math.max(d3, d11);
                    calcRange[3] = d10;
                } else
                {
                    d10 = d3;
                }
            }
            j3++;
            d3 = d10;
            d2 = d9;
            d1 = d8;
        }
        if (d1 - d != 0.0D)
        {
            d4 = (double)(k2 - k1) / (d1 - d);
        } else
        {
            d4 = 0.0D;
        }
        if (d3 - d2 != 0.0D)
        {
            d5 = (float)((double)(j2 - l1) / (d3 - d2));
        } else
        {
            d5 = 0.0D;
        }
        flag5 = false;
        k3 = 0;
        while (k3 < i3) 
        {
            xyseries = mDataset.getSeriesAt(k3);
            if (xyseries.getItemCount() != 0)
            {
                simpleseriesrenderer = mRenderer.getSeriesRendererAt(k3);
                k6 = 2 * xyseries.getItemCount();
                arraylist = new ArrayList();
                l6 = 0;
                while (l6 < k6) 
                {
                    i7 = l6 / 2;
                    d7 = xyseries.getY(i7);
                    if (d7 != 1.7976931348623157E+308D)
                    {
                        arraylist.add(Float.valueOf((float)((double)k1 + d4 * (xyseries.getX(i7) - d))));
                        arraylist.add(Float.valueOf((float)((double)j2 - d5 * (d7 - d2))));
                    } else
                    if (arraylist.size() > 0)
                    {
                        drawSeries(xyseries, canvas, paint, arraylist, simpleseriesrenderer, Math.min(j2, (float)((double)j2 + d5 * d2)), k3, orientation);
                        arraylist.clear();
                    }
                    l6 += 2;
                }
                if (arraylist.size() > 0)
                {
                    drawSeries(xyseries, canvas, paint, arraylist, simpleseriesrenderer, Math.min(j2, (float)((double)j2 + d5 * d2)), k3, orientation);
                }
                flag5 = true;
            }
            k3++;
        }
        drawBackground(mRenderer, canvas, i, j2, k, l - j2, paint, true, mRenderer.getMarginsColor());
        drawBackground(mRenderer, canvas, i, j, k, ai[0], paint, true, mRenderer.getMarginsColor());
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        {
            drawBackground(mRenderer, canvas, i, j, k1 - i, l - j, paint, true, mRenderer.getMarginsColor());
            xymultipleseriesrenderer1 = mRenderer;
            l5 = ai[3];
            i6 = l - j;
            j6 = mRenderer.getMarginsColor();
            drawBackground(xymultipleseriesrenderer1, canvas, k2, j, l5, i6, paint, true, j6);
        } else
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
        {
            xymultipleseriesrenderer = mRenderer;
            l3 = k - k2;
            i4 = l - j;
            j4 = mRenderer.getMarginsColor();
            drawBackground(xymultipleseriesrenderer, canvas, k2, j, l3, i4, paint, true, j4);
            drawBackground(mRenderer, canvas, i, j, k1 - i, l - j, paint, true, mRenderer.getMarginsColor());
        }
        if (mRenderer.isShowLabels() && flag5)
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        flag7 = mRenderer.isShowGrid();
        if (!flag6 && !flag7) goto _L2; else goto _L1
_L1:
        k4 = mRenderer.getXLabels();
        list = getValidLabels(MathHelper.getLabels(d, d1, k4));
        l4 = mRenderer.getYLabels();
        list1 = getValidLabels(MathHelper.getLabels(d2, d3, l4));
        if (!flag6) goto _L4; else goto _L3
_L3:
        paint.setColor(mRenderer.getLabelsColor());
        paint.setTextSize(mRenderer.getLabelsTextSize());
        paint.setTextAlign(mRenderer.getXLabelsAlign());
        if (mRenderer.getXLabelsAlign() != android.graphics.Paint.Align.LEFT) goto _L4; else goto _L5
_L5:
        i5 = (int)((float)k1 + mRenderer.getLabelsTextSize() / 4F);
_L7:
        drawXLabels(list, mRenderer.getXTextLabelLocations(), canvas, paint, i5, l1, j2, d4, d);
        paint.setTextAlign(mRenderer.getYLabelsAlign());
        j5 = list1.size();
        k5 = 0;
        while (k5 < j5) 
        {
            d6 = ((Double)list1.get(k5)).doubleValue();
            f1 = (float)((double)j2 - d5 * (d6 - d2));
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
            {
                if (flag6)
                {
                    paint.setColor(mRenderer.getLabelsColor());
                    canvas.drawLine(k1 - 4, f1, k1, f1, paint);
                    drawText(canvas, getLabel(d6), k1 - 2, f1 - 2.0F, paint, mRenderer.getYLabelsAngle());
                }
                if (flag7)
                {
                    paint.setColor(mRenderer.getGridColor());
                    canvas.drawLine(k1, f1, k2, f1, paint);
                }
            } else
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
            {
                if (flag6)
                {
                    paint.setColor(mRenderer.getLabelsColor());
                    canvas.drawLine(k2 + 4, f1, k2, f1, paint);
                    drawText(canvas, getLabel(d6), k2 + 10, f1 - 2.0F, paint, mRenderer.getYLabelsAngle());
                }
                if (flag7)
                {
                    paint.setColor(mRenderer.getGridColor());
                    canvas.drawLine(k2, f1, k1, f1, paint);
                }
            }
            k5++;
        }
        if (flag6)
        {
            paint.setColor(mRenderer.getLabelsColor());
            f = mRenderer.getAxisTitleTextSize();
            paint.setTextSize(f);
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
            {
                drawText(canvas, mRenderer.getXTitle(), i + k / 2, f + ((float)j2 + (4F * mRenderer.getLabelsTextSize()) / 3F), paint, 0.0F);
                drawText(canvas, mRenderer.getYTitle(), f + (float)i, j + l / 2, paint, -90F);
                paint.setTextSize(mRenderer.getChartTitleTextSize());
                drawText(canvas, mRenderer.getChartTitle(), i + k / 2, (float)j + mRenderer.getChartTitleTextSize(), paint, 0.0F);
            } else
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
            {
                drawText(canvas, mRenderer.getXTitle(), i + k / 2, (float)(j + l) - f, paint, -90F);
                drawText(canvas, mRenderer.getYTitle(), k2 + 20, j + l / 2, paint, 0.0F);
                paint.setTextSize(mRenderer.getChartTitleTextSize());
                drawText(canvas, mRenderer.getChartTitle(), f + (float)i, l1 + l / 2, paint, 0.0F);
            }
        }
_L2:
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
        {
            drawLegend(canvas, mRenderer, as, k1, k2, j, k, l, j1, paint);
        } else
        if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
        {
            transform(canvas, l2, true);
            drawLegend(canvas, mRenderer, as, k1, k2, j, k, l, j1, paint);
            transform(canvas, l2, false);
        }
        if (mRenderer.isShowAxes())
        {
            paint.setColor(mRenderer.getAxesColor());
            canvas.drawLine(k1, j2, k2, j2, paint);
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.HORIZONTAL)
            {
                canvas.drawLine(k1, l1, k1, j2, paint);
            } else
            if (orientation == org.achartengine.renderer.XYMultipleSeriesRenderer.Orientation.VERTICAL)
            {
                canvas.drawLine(k2, l1, k2, j2, paint);
            }
        }
        if (flag)
        {
            transform(canvas, l2, true);
        }
        return;
_L4:
        i5 = k1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected void drawChartValuesText(Canvas canvas, XYSeries xyseries, Paint paint, float af[], int i)
    {
        for (int j = 0; j < af.length; j += 2)
        {
            drawText(canvas, getLabel(xyseries.getY(j / 2)), af[j], af[j + 1] - 3.5F, paint, 0.0F);
        }

    }

    public abstract void drawSeries(Canvas canvas, Paint paint, float af[], SimpleSeriesRenderer simpleseriesrenderer, float f, int i);

    protected void drawText(Canvas canvas, String s, float f, float f1, Paint paint, float f2)
    {
        float f3 = f2 + (float)(-mRenderer.getOrientation().getAngle());
        if (f3 != 0.0F)
        {
            canvas.rotate(f3, f, f1);
        }
        canvas.drawText(s, f, f1, paint);
        if (f3 != 0.0F)
        {
            canvas.rotate(-f3, f, f1);
        }
    }

    protected void drawXLabels(List list, Double adouble[], Canvas canvas, Paint paint, int i, int j, int k, 
            double d, double d1)
    {
        int l = list.size();
        boolean flag = mRenderer.isShowLabels();
        boolean flag1 = mRenderer.isShowGrid();
        for (int i1 = 0; i1 < l; i1++)
        {
            double d2 = ((Double)list.get(i1)).doubleValue();
            float f1 = (float)((double)i + d * (d2 - d1));
            if (flag)
            {
                paint.setColor(mRenderer.getLabelsColor());
                canvas.drawLine(f1, k, f1, (float)k + mRenderer.getLabelsTextSize() / 3F, paint);
                drawText(canvas, getLabel(d2), f1, (float)k + (4F * mRenderer.getLabelsTextSize()) / 3F, paint, mRenderer.getXLabelsAngle());
            }
            if (flag1)
            {
                paint.setColor(mRenderer.getGridColor());
                canvas.drawLine(f1, k, f1, j, paint);
            }
        }

        if (flag)
        {
            paint.setColor(mRenderer.getLabelsColor());
            int j1 = adouble.length;
            for (int k1 = 0; k1 < j1; k1++)
            {
                Double double1 = adouble[k1];
                float f = (float)((double)i + d * (double1.doubleValue() - d1));
                canvas.drawLine(f, k, f, k + 4, paint);
                drawText(canvas, mRenderer.getXTextLabel(double1), f, (float)k + mRenderer.getLabelsTextSize(), paint, mRenderer.getXLabelsAngle());
            }

        }
    }

    public double[] getCalcRange()
    {
        return calcRange;
    }

    public XYMultipleSeriesDataset getDataset()
    {
        return mDataset;
    }

    public double getDefaultMinimum()
    {
        return 1.7976931348623157E+308D;
    }

    protected String getLabel(double d)
    {
        if (d == (double)Math.round(d))
        {
            return (new StringBuilder()).append(Math.round(d)).append("").toString();
        } else
        {
            return (new StringBuilder()).append(d).append("").toString();
        }
    }

    public ScatterChart getPointsChart()
    {
        return null;
    }

    public XYMultipleSeriesRenderer getRenderer()
    {
        return mRenderer;
    }

    public boolean isRenderPoints(SimpleSeriesRenderer simpleseriesrenderer)
    {
        return false;
    }

    public PointF toRealPoint(float f, float f1)
    {
        double d = mRenderer.getXAxisMin();
        double d1 = mRenderer.getXAxisMax();
        double d2 = mRenderer.getYAxisMin();
        double d3 = mRenderer.getYAxisMax();
        return new PointF((float)(d + ((double)(f - (float)screenR.left) * (d1 - d)) / (double)screenR.width()), (float)(d2 + ((double)((float)(screenR.top + screenR.height()) - f1) * (d3 - d2)) / (double)screenR.height()));
    }

    public PointF toScreenPoint(PointF pointf)
    {
        double d = mRenderer.getXAxisMin();
        double d1 = mRenderer.getXAxisMax();
        double d2 = mRenderer.getYAxisMin();
        double d3 = mRenderer.getYAxisMax();
        return new PointF((float)((((double)pointf.x - d) * (double)screenR.width()) / (d1 - d) + (double)screenR.left), (float)(((d3 - (double)pointf.y) * (double)screenR.height()) / (d3 - d2) + (double)screenR.top));
    }
}
