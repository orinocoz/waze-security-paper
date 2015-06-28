// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.renderer;

import android.graphics.Typeface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package org.achartengine.renderer:
//            SimpleSeriesRenderer

public class DefaultRenderer
    implements Serializable
{

    public static final int BACKGROUND_COLOR = 0xff000000;
    public static final int NO_COLOR = 0;
    private static final Typeface REGULAR_TEXT_FONT;
    public static final int TEXT_COLOR = 0xffcccccc;
    private boolean antialiasing;
    private boolean mApplyBackgroundColor;
    private int mAxesColor;
    private int mBackgroundColor;
    private int mLabelsColor;
    private float mLabelsTextSize;
    private int mLegendHeight;
    private float mLegendTextSize;
    private int mMargins[] = {
        20, 30, 10, 0
    };
    private List mRenderers;
    private boolean mShowAxes;
    private boolean mShowGrid;
    private boolean mShowLabels;
    private boolean mShowLegend;
    private String textTypefaceName;
    private int textTypefaceStyle;
    private android.graphics.Paint.Align xLabelsAlign;
    private android.graphics.Paint.Align yLabelsAlign;

    public DefaultRenderer()
    {
        textTypefaceName = REGULAR_TEXT_FONT.toString();
        textTypefaceStyle = 0;
        mShowAxes = true;
        mAxesColor = 0xffcccccc;
        mShowLabels = true;
        mLabelsColor = 0xffcccccc;
        mLabelsTextSize = 10F;
        mShowLegend = true;
        mLegendTextSize = 12F;
        mShowGrid = false;
        mRenderers = new ArrayList();
        antialiasing = true;
        xLabelsAlign = android.graphics.Paint.Align.CENTER;
        yLabelsAlign = android.graphics.Paint.Align.CENTER;
        mLegendHeight = 0;
    }

    public void addSeriesRenderer(SimpleSeriesRenderer simpleseriesrenderer)
    {
        mRenderers.add(simpleseriesrenderer);
    }

    public int getAxesColor()
    {
        return mAxesColor;
    }

    public int getBackgroundColor()
    {
        return mBackgroundColor;
    }

    public int getLabelsColor()
    {
        return mLabelsColor;
    }

    public float getLabelsTextSize()
    {
        return mLabelsTextSize;
    }

    public int getLegendHeight()
    {
        return mLegendHeight;
    }

    public float getLegendTextSize()
    {
        return mLegendTextSize;
    }

    public int[] getMargins()
    {
        return mMargins;
    }

    public SimpleSeriesRenderer getSeriesRendererAt(int i)
    {
        return (SimpleSeriesRenderer)mRenderers.get(i);
    }

    public int getSeriesRendererCount()
    {
        return mRenderers.size();
    }

    public SimpleSeriesRenderer[] getSeriesRenderers()
    {
        return (SimpleSeriesRenderer[])mRenderers.toArray(new SimpleSeriesRenderer[0]);
    }

    public String getTextTypefaceName()
    {
        return textTypefaceName;
    }

    public int getTextTypefaceStyle()
    {
        return textTypefaceStyle;
    }

    public android.graphics.Paint.Align getXLabelsAlign()
    {
        return xLabelsAlign;
    }

    public android.graphics.Paint.Align getYLabelsAlign()
    {
        return yLabelsAlign;
    }

    public boolean isAntialiasing()
    {
        return antialiasing;
    }

    public boolean isApplyBackgroundColor()
    {
        return mApplyBackgroundColor;
    }

    public boolean isShowAxes()
    {
        return mShowAxes;
    }

    public boolean isShowGrid()
    {
        return mShowGrid;
    }

    public boolean isShowLabels()
    {
        return mShowLabels;
    }

    public boolean isShowLegend()
    {
        return mShowLegend;
    }

    public void removeSeriesRenderer(SimpleSeriesRenderer simpleseriesrenderer)
    {
        mRenderers.remove(simpleseriesrenderer);
    }

    public void setAntialiasing(boolean flag)
    {
        antialiasing = flag;
    }

    public void setApplyBackgroundColor(boolean flag)
    {
        mApplyBackgroundColor = flag;
    }

    public void setAxesColor(int i)
    {
        mAxesColor = i;
    }

    public void setBackgroundColor(int i)
    {
        mBackgroundColor = i;
    }

    public void setLabelsColor(int i)
    {
        mLabelsColor = i;
    }

    public void setLabelsTextSize(float f)
    {
        mLabelsTextSize = f;
    }

    public void setLegendHeight(int i)
    {
        mLegendHeight = i;
    }

    public void setLegendTextSize(float f)
    {
        mLegendTextSize = f;
    }

    public void setMargins(int ai[])
    {
        mMargins = ai;
    }

    public void setShowAxes(boolean flag)
    {
        mShowAxes = flag;
    }

    public void setShowGrid(boolean flag)
    {
        mShowGrid = flag;
    }

    public void setShowLabels(boolean flag)
    {
        mShowLabels = flag;
    }

    public void setShowLegend(boolean flag)
    {
        mShowLegend = flag;
    }

    public void setTextTypeface(String s, int i)
    {
        textTypefaceName = s;
        textTypefaceStyle = i;
    }

    public void setXLabelsAlign(android.graphics.Paint.Align align)
    {
        xLabelsAlign = align;
    }

    public void setYLabelsAlign(android.graphics.Paint.Align align)
    {
        yLabelsAlign = align;
    }

    static 
    {
        REGULAR_TEXT_FONT = Typeface.create(Typeface.SERIF, 0);
    }
}
