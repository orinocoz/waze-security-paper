// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import com.waze.config.WazeLang;
import com.waze.widget.routing.RouteScore;
import com.waze.widget.routing.RouteScoreType;
import com.waze.widget.routing.RoutingRequest;
import com.waze.widget.routing.RoutingResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.achartengine.ChartFactory;
import org.achartengine.chart.PointStyle;
import org.achartengine.model.TimeSeries;
import org.achartengine.model.XYMultipleSeriesDataset;
import org.achartengine.renderer.XYMultipleSeriesRenderer;
import org.achartengine.renderer.XYSeriesRenderer;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetLog

public class WazeAppWidgetChart
{

    private static final long MINUTE = 60000L;

    public WazeAppWidgetChart()
    {
    }

    protected XYMultipleSeriesDataset buildDateDataset(String as[], List list, List list1)
    {
        XYMultipleSeriesDataset xymultipleseriesdataset;
        int i;
        int j;
        xymultipleseriesdataset = new XYMultipleSeriesDataset();
        i = as.length;
        j = 0;
_L2:
        if (j >= i)
        {
            return xymultipleseriesdataset;
        }
        TimeSeries timeseries = new TimeSeries(as[j]);
        Date adate[] = (Date[])list.get(j);
        double ad[] = (double[])list1.get(j);
        int k = adate.length;
        int l = 0;
        do
        {
label0:
            {
                if (l < k)
                {
                    break label0;
                }
                xymultipleseriesdataset.addSeries(timeseries);
                j++;
            }
            if (true)
            {
                continue;
            }
            timeseries.add(adate[l], ad[l]);
            l++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected XYMultipleSeriesRenderer buildRenderer(int ai[], PointStyle apointstyle[])
    {
        XYMultipleSeriesRenderer xymultipleseriesrenderer = new XYMultipleSeriesRenderer();
        xymultipleseriesrenderer.setAxisTitleTextSize(20F);
        xymultipleseriesrenderer.setChartTitleTextSize(20F);
        xymultipleseriesrenderer.setLabelsTextSize(20F);
        xymultipleseriesrenderer.setLegendTextSize(1520F);
        xymultipleseriesrenderer.setPointSize(5F);
        int ai1[] = new int[4];
        ai1[0] = 20;
        ai1[1] = 30;
        ai1[2] = 15;
        xymultipleseriesrenderer.setMargins(ai1);
        int i = ai.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return xymultipleseriesrenderer;
            }
            XYSeriesRenderer xyseriesrenderer = new XYSeriesRenderer();
            xyseriesrenderer.setColor(ai[j]);
            xyseriesrenderer.setPointStyle(apointstyle[j]);
            xymultipleseriesrenderer.addSeriesRenderer(xyseriesrenderer);
            j++;
        } while (true);
    }

    public Intent execute(Context context, RoutingResponse routingresponse, long l)
    {
        String as[];
        ArrayList arraylist;
        int i;
        as = (new String[] {
            "Now", "NowTraingle", "ALL", "Red", "Orange", "Green"
        });
        long l1 = (new Date()).getTime();
        WazeAppWidgetLog.d((new StringBuilder("WidgetChart execute timeStamp=: ")).append(l).toString());
        arraylist = new ArrayList();
        Date adate[] = new Date[2];
        adate[0] = new Date(l1);
        adate[1] = new Date(1L + l1);
        arraylist.add(adate);
        Date adate1[] = new Date[1];
        adate1[0] = new Date(l1);
        arraylist.add(adate1);
        i = 1;
_L5:
        int j = as.length;
        if (i < j) goto _L2; else goto _L1
_L1:
        ArrayList arraylist1;
        double ad[];
        int k;
        double ad1[];
        double ad2[];
        double ad3[];
        double ad4[];
        double ad5[];
        int i1;
        arraylist1 = new ArrayList();
        ad = routingresponse.getList();
        k = ad.length;
        ad1 = new double[k];
        ad2 = new double[2];
        ad3 = new double[1];
        ad4 = new double[k];
        ad5 = new double[k];
        i1 = 0;
_L7:
        if (i1 < k) goto _L4; else goto _L3
_L3:
        XYMultipleSeriesRenderer xymultipleseriesrenderer;
        int j1;
        int k1;
        ad2[0] = 100 + routingresponse.getMaxValue() / 60;
        ad2[1] = -100 + routingresponse.getMinValue() / 60;
        arraylist1.add(ad2);
        ad3[0] = -9 + routingresponse.getMinValue() / 60;
        arraylist1.add(ad3);
        arraylist1.add(ad);
        arraylist1.add(ad1);
        arraylist1.add(ad4);
        arraylist1.add(ad5);
        int ai[] = new int[6];
        ai[0] = Color.parseColor("#77676767");
        ai[1] = 0xffff0000;
        ai[2] = -1;
        ai[3] = Color.parseColor("#d62525");
        ai[4] = Color.parseColor("#ea8124");
        ai[5] = Color.parseColor("#5f8e44");
        PointStyle apointstyle[] = new PointStyle[6];
        apointstyle[0] = PointStyle.DIAMOND;
        apointstyle[1] = PointStyle.TRIANGLE;
        apointstyle[2] = PointStyle.CIRCLE;
        apointstyle[3] = PointStyle.CIRCLE;
        apointstyle[4] = PointStyle.CIRCLE;
        apointstyle[5] = PointStyle.CIRCLE;
        xymultipleseriesrenderer = buildRenderer(ai, apointstyle);
        j1 = xymultipleseriesrenderer.getSeriesRendererCount();
        k1 = 0;
_L8:
        if (k1 >= j1)
        {
            ((XYSeriesRenderer)xymultipleseriesrenderer.getSeriesRendererAt(0)).setLineWidth(30F);
            ((XYSeriesRenderer)xymultipleseriesrenderer.getSeriesRendererAt(3)).setLineWidth(0.0F);
            ((XYSeriesRenderer)xymultipleseriesrenderer.getSeriesRendererAt(2)).setLineWidth(7F);
            ((XYSeriesRenderer)xymultipleseriesrenderer.getSeriesRendererAt(3)).setLineWidth(0.0F);
            ((XYSeriesRenderer)xymultipleseriesrenderer.getSeriesRendererAt(4)).setLineWidth(0.0F);
            ((XYSeriesRenderer)xymultipleseriesrenderer.getSeriesRendererAt(5)).setLineWidth(0.0F);
            long l2 = ((Date[])arraylist.get(2))[0].getTime() - 0x927c0L;
            long l3 = 0x927c0L + ((Date[])arraylist.get(2))[-1 + routingresponse.getNumResults()].getTime();
            long l4 = (long)(0.90000000000000002D * ((double)routingresponse.getMinValue() / 60D));
            long l5 = (long)(1.1000000000000001D * ((double)routingresponse.getMaxValue() / 60D));
            setChartSettings(xymultipleseriesrenderer, WazeLang.getLang("Your Commute-O-Meter"), "Time", "Min", l2, l3, l4, l5, 0xffcccccc, 0xffcccccc);
            xymultipleseriesrenderer.setXLabels(7);
            xymultipleseriesrenderer.setYLabels(8);
            xymultipleseriesrenderer.setAntialiasing(true);
            xymultipleseriesrenderer.setPointSize(11F);
            xymultipleseriesrenderer.setShowGrid(true);
            xymultipleseriesrenderer.setChartTitleTextSize(26F);
            xymultipleseriesrenderer.setShowLegend(false);
            xymultipleseriesrenderer.setMargins(new int[] {
                50, 60, 90, 40
            });
            xymultipleseriesrenderer.setXLabelsAlign(android.graphics.Paint.Align.CENTER);
            xymultipleseriesrenderer.setYLabelsAlign(android.graphics.Paint.Align.RIGHT);
            return ChartFactory.getTimeChartIntent(context, buildDateDataset(as, arraylist, arraylist1), xymultipleseriesrenderer, "h:mm");
        }
        break MISSING_BLOCK_LABEL_950;
_L2:
        Date adate2[];
        int i2;
        adate2 = new Date[routingresponse.getNumResults()];
        i2 = 0;
_L6:
label0:
        {
            int j2 = routingresponse.getNumResults();
            if (i2 < j2)
            {
                break label0;
            }
            arraylist.add(adate2);
            i++;
        }
          goto _L5
        adate2[i2] = new Date((l + 60000L * (long)(i2 * 10)) - 0x927c0L * (long)RoutingRequest.getNowLocation());
        i2++;
          goto _L6
_L4:
        ad1[i1] = 1.7976931348623157E+308D;
        ad5[i1] = 1.7976931348623157E+308D;
        ad4[i1] = 1.7976931348623157E+308D;
        if (ad[i1] != 1.7976931348623157E+308D)
        {
            RouteScoreType routescoretype = RouteScore.getScore((int)ad[i1], routingresponse.getAveragetTime() / 60);
            if (routescoretype == RouteScoreType.ROUTE_GOOD)
            {
                ad5[i1] = ad[i1];
            } else
            if (routescoretype == RouteScoreType.ROUTE_BAD)
            {
                ad1[i1] = ad[i1];
            } else
            {
                ad4[i1] = ad[i1];
            }
        }
        i1++;
          goto _L7
        ((XYSeriesRenderer)xymultipleseriesrenderer.getSeriesRendererAt(k1)).setFillPoints(true);
        k1++;
          goto _L8
    }

    protected void setChartSettings(XYMultipleSeriesRenderer xymultipleseriesrenderer, String s, String s1, String s2, double d, double d1, double d2, double d3, int i, int j)
    {
        xymultipleseriesrenderer.setChartTitle(s);
        xymultipleseriesrenderer.setXTitle(s1);
        xymultipleseriesrenderer.setYTitle(s2);
        xymultipleseriesrenderer.setXAxisMin(d);
        xymultipleseriesrenderer.setXAxisMax(d1);
        xymultipleseriesrenderer.setYAxisMin(d2);
        xymultipleseriesrenderer.setYAxisMax(d3);
        xymultipleseriesrenderer.setAxesColor(i);
        xymultipleseriesrenderer.setLabelsColor(j);
    }
}
