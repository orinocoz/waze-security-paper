// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.tools;

import org.achartengine.chart.XYChart;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

public abstract class AbstractTool
{

    protected XYChart mChart;
    protected XYMultipleSeriesRenderer mRenderer;

    public AbstractTool(XYChart xychart)
    {
        mChart = xychart;
        mRenderer = xychart.getRenderer();
    }

    public void checkRange(double ad[])
    {
        double ad1[] = mChart.getCalcRange();
        if (!mRenderer.isMinXSet())
        {
            ad[0] = ad1[0];
            mRenderer.setXAxisMin(ad[0]);
        }
        if (!mRenderer.isMaxXSet())
        {
            ad[1] = ad1[1];
            mRenderer.setXAxisMax(ad[1]);
        }
        if (!mRenderer.isMinYSet())
        {
            ad[2] = ad1[2];
            mRenderer.setYAxisMin(ad[2]);
        }
        if (!mRenderer.isMaxYSet())
        {
            ad[3] = ad1[3];
            mRenderer.setYAxisMax(ad[3]);
        }
    }

    public double[] getRange()
    {
        return (new double[] {
            mRenderer.getXAxisMin(), mRenderer.getXAxisMax(), mRenderer.getYAxisMin(), mRenderer.getYAxisMax()
        });
    }

    protected void setXRange(double d, double d1)
    {
        mRenderer.setXAxisMin(d);
        mRenderer.setXAxisMax(d1);
    }

    protected void setYRange(double d, double d1)
    {
        mRenderer.setYAxisMin(d);
        mRenderer.setYAxisMax(d1);
    }
}
