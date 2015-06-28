// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.tools;

import org.achartengine.chart.XYChart;
import org.achartengine.renderer.XYMultipleSeriesRenderer;

// Referenced classes of package org.achartengine.tools:
//            AbstractTool

public class Zoom extends AbstractTool
{

    private boolean mZoomIn;
    private float mZoomRate;

    public Zoom(XYChart xychart, boolean flag, float f)
    {
        super(xychart);
        mZoomIn = flag;
        setZoomRate(f);
    }

    public void apply()
    {
        double d2;
        double d3;
        double d4;
        double d5;
        double ad[] = getRange();
        checkRange(ad);
        double ad1[] = mRenderer.getZoomLimits();
        boolean flag;
        double d;
        double d1;
        double d6;
        double d7;
        double d8;
        double d9;
        double d11;
        if (ad1 != null && ad1.length == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = (ad[0] + ad[1]) / 2D;
        d1 = (ad[2] + ad[3]) / 2D;
        d2 = ad[1] - ad[0];
        d3 = ad[3] - ad[2];
        if (!mZoomIn) goto _L2; else goto _L1
_L1:
        if (mRenderer.isZoomXEnabled())
        {
            d2 /= mZoomRate;
        }
        if (!mRenderer.isZoomYEnabled()) goto _L4; else goto _L3
_L3:
        d11 = d3 / (double)mZoomRate;
        d4 = d2;
        d5 = d11;
_L6:
        if (mRenderer.isZoomXEnabled())
        {
            d8 = d - d4 / 2D;
            d9 = d + d4 / 2D;
            if (!flag || ad1[0] <= d8 && ad1[1] >= d9)
            {
                setXRange(d8, d9);
            }
        }
        if (mRenderer.isZoomYEnabled())
        {
            d6 = d1 - d5 / 2D;
            d7 = d1 + d5 / 2D;
            if (!flag || ad1[2] <= d6 && ad1[3] >= d7)
            {
                setYRange(d6, d7);
            }
        }
        return;
_L2:
        if (mRenderer.isZoomXEnabled())
        {
            d2 *= mZoomRate;
        }
        if (mRenderer.isZoomYEnabled())
        {
            double d10 = d3 * (double)mZoomRate;
            d4 = d2;
            d5 = d10;
            continue; /* Loop/switch isn't completed */
        }
_L4:
        d4 = d2;
        d5 = d3;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setZoomRate(float f)
    {
        mZoomRate = f;
    }
}
