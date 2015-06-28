// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.tools;

import org.achartengine.chart.XYChart;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.model.XYSeries;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.tools:
//            AbstractTool

public class FitZoom extends AbstractTool
{

    public FitZoom(XYChart xychart)
    {
        super(xychart);
    }

    public void apply()
    {
        if (mChart.getDataset() != null)
        {
            if (mRenderer.isInitialRangeSet())
            {
                mRenderer.setRange(mRenderer.getInitialRange());
                return;
            }
            XYSeries axyseries[] = mChart.getDataset().getSeries();
            int i = axyseries.length;
            if (i > 0)
            {
                double ad[] = new double[4];
                ad[0] = axyseries[0].getMinX();
                ad[1] = axyseries[0].getMaxX();
                ad[2] = Math.min(mChart.getDefaultMinimum(), axyseries[0].getMinY());
                ad[3] = axyseries[0].getMaxY();
                for (int j = 1; j < i; j++)
                {
                    ad[0] = Math.min(ad[0], axyseries[j].getMinX());
                    ad[1] = Math.max(ad[1], axyseries[j].getMaxX());
                    ad[2] = Math.min(ad[2], axyseries[j].getMinY());
                    ad[3] = Math.max(ad[3], axyseries[j].getMaxY());
                }

                double d = Math.abs(ad[1] - ad[0]) / 40D;
                double d1 = Math.abs(ad[3] - ad[2]) / 40D;
                XYMultipleSeriesRenderer xymultipleseriesrenderer = mRenderer;
                double ad1[] = new double[4];
                ad1[0] = ad[0] - d;
                ad1[1] = d + ad[1];
                ad1[2] = ad[2] - d1;
                ad1[3] = d1 + ad[3];
                xymultipleseriesrenderer.setRange(ad1);
                return;
            }
        }
    }
}
