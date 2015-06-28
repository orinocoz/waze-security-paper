// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.tools;

import android.graphics.PointF;
import org.achartengine.chart.XYChart;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.tools:
//            AbstractTool

public class Pan extends AbstractTool
{

    public Pan(XYChart xychart)
    {
        super(xychart);
    }

    public void apply(float f, float f1, float f2, float f3)
    {
        double ad[] = getRange();
        double ad1[] = mRenderer.getPanLimits();
        boolean flag;
        double ad2[];
        if (ad1 != null && ad1.length == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ad2 = mChart.getCalcRange();
        if ((ad[0] != ad[1] || ad2[0] != ad2[1]) && (ad[2] != ad[3] || ad2[2] != ad2[3]))
        {
            checkRange(ad);
            PointF pointf = mChart.toRealPoint(f, f1);
            PointF pointf1 = mChart.toRealPoint(f2, f3);
            double d = pointf.x - pointf1.x;
            double d1 = pointf.y - pointf1.y;
            if (mRenderer.isPanXEnabled())
            {
                if (flag)
                {
                    if (ad1[0] > d + ad[0])
                    {
                        setXRange(ad1[0], ad1[0] + (ad[1] - ad[0]));
                    } else
                    if (ad1[1] < d + ad[1])
                    {
                        setXRange(ad1[1] - (ad[1] - ad[0]), ad1[1]);
                    } else
                    {
                        setXRange(d + ad[0], d + ad[1]);
                    }
                } else
                {
                    setXRange(d + ad[0], d + ad[1]);
                }
            }
            if (mRenderer.isPanYEnabled())
            {
                if (flag)
                {
                    if (ad1[2] > d1 + ad[2])
                    {
                        setYRange(ad1[2], ad1[2] + (ad[3] - ad[2]));
                        return;
                    }
                    if (ad1[3] < d1 + ad[3])
                    {
                        setYRange(ad1[3] - (ad[3] - ad[2]), ad1[3]);
                        return;
                    } else
                    {
                        setYRange(d1 + ad[2], d1 + ad[3]);
                        return;
                    }
                } else
                {
                    setYRange(d1 + ad[2], d1 + ad[3]);
                    return;
                }
            }
        }
    }
}
