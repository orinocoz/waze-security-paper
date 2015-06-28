// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.renderer;

import android.graphics.Color;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

// Referenced classes of package org.achartengine.renderer:
//            DefaultRenderer

public class XYMultipleSeriesRenderer extends DefaultRenderer
{
    public static final class Orientation extends Enum
    {

        private static final Orientation $VALUES[];
        public static final Orientation HORIZONTAL;
        public static final Orientation VERTICAL;
        private int mAngle;

        public static Orientation valueOf(String s)
        {
            return (Orientation)Enum.valueOf(org/achartengine/renderer/XYMultipleSeriesRenderer$Orientation, s);
        }

        public static Orientation[] values()
        {
            return (Orientation[])$VALUES.clone();
        }

        public int getAngle()
        {
            return mAngle;
        }

        static 
        {
            HORIZONTAL = new Orientation("HORIZONTAL", 0, 0);
            VERTICAL = new Orientation("VERTICAL", 1, 90);
            Orientation aorientation[] = new Orientation[2];
            aorientation[0] = HORIZONTAL;
            aorientation[1] = VERTICAL;
            $VALUES = aorientation;
        }

        private Orientation(String s, int i, int j)
        {
            super(s, i);
            mAngle = 0;
            mAngle = j;
        }
    }


    private double initialRange[];
    private float mAxisTitleTextSize;
    private double mBarSpacing;
    private String mChartTitle;
    private float mChartTitleTextSize;
    private float mChartValuesTextSize;
    private boolean mDisplayChartValues;
    private int mGridColor;
    private int mMarginsColor;
    private double mMaxX;
    private double mMaxY;
    private double mMinX;
    private double mMinY;
    private Orientation mOrientation;
    private double mPanLimits[];
    private boolean mPanXEnabled;
    private boolean mPanYEnabled;
    private float mPointSize;
    private int mXLabels;
    private float mXLabelsAngle;
    private Map mXTextLabels;
    private String mXTitle;
    private int mYLabels;
    private float mYLabelsAngle;
    private String mYTitle;
    private double mZoomLimits[];
    private float mZoomRate;
    private boolean mZoomXEnabled;
    private boolean mZoomYEnabled;

    public XYMultipleSeriesRenderer()
    {
        mChartTitle = "";
        mChartTitleTextSize = 15F;
        mXTitle = "";
        mYTitle = "";
        mAxisTitleTextSize = 12F;
        mMinX = 1.7976931348623157E+308D;
        mMaxX = -1.7976931348623157E+308D;
        mMinY = 1.7976931348623157E+308D;
        mMaxY = -1.7976931348623157E+308D;
        mXLabels = 5;
        mYLabels = 5;
        mOrientation = Orientation.HORIZONTAL;
        mXTextLabels = new HashMap();
        mChartValuesTextSize = 10F;
        mPanXEnabled = true;
        mPanYEnabled = true;
        mZoomXEnabled = true;
        mZoomYEnabled = true;
        mZoomRate = 1.5F;
        mBarSpacing = 0.0D;
        mMarginsColor = 0;
        double ad[] = new double[4];
        ad[0] = mMinX;
        ad[1] = mMaxX;
        ad[2] = mMinY;
        ad[3] = mMaxY;
        initialRange = ad;
        mPointSize = 3F;
        mGridColor = Color.argb(75, 200, 200, 200);
    }

    public void addTextLabel(double d, String s)
    {
        mXTextLabels.put(Double.valueOf(d), s);
    }

    public float getAxisTitleTextSize()
    {
        return mAxisTitleTextSize;
    }

    public double getBarsSpacing()
    {
        return mBarSpacing;
    }

    public String getChartTitle()
    {
        return mChartTitle;
    }

    public float getChartTitleTextSize()
    {
        return mChartTitleTextSize;
    }

    public float getChartValuesTextSize()
    {
        return mChartValuesTextSize;
    }

    public int getGridColor()
    {
        return mGridColor;
    }

    public double[] getInitialRange()
    {
        return initialRange;
    }

    public int getMarginsColor()
    {
        return mMarginsColor;
    }

    public Orientation getOrientation()
    {
        return mOrientation;
    }

    public double[] getPanLimits()
    {
        return mPanLimits;
    }

    public float getPointSize()
    {
        return mPointSize;
    }

    public double getXAxisMax()
    {
        return mMaxX;
    }

    public double getXAxisMin()
    {
        return mMinX;
    }

    public int getXLabels()
    {
        return mXLabels;
    }

    public float getXLabelsAngle()
    {
        return mXLabelsAngle;
    }

    public String getXTextLabel(Double double1)
    {
        return (String)mXTextLabels.get(double1);
    }

    public Double[] getXTextLabelLocations()
    {
        return (Double[])mXTextLabels.keySet().toArray(new Double[0]);
    }

    public String getXTitle()
    {
        return mXTitle;
    }

    public double getYAxisMax()
    {
        return mMaxY;
    }

    public double getYAxisMin()
    {
        return mMinY;
    }

    public int getYLabels()
    {
        return mYLabels;
    }

    public float getYLabelsAngle()
    {
        return mYLabelsAngle;
    }

    public String getYTitle()
    {
        return mYTitle;
    }

    public double[] getZoomLimits()
    {
        return mZoomLimits;
    }

    public float getZoomRate()
    {
        return mZoomRate;
    }

    public boolean isDisplayChartValues()
    {
        return mDisplayChartValues;
    }

    public boolean isInitialRangeSet()
    {
        return isMinXSet() && isMaxXSet() && isMinYSet() && isMaxYSet();
    }

    public boolean isMaxXSet()
    {
        return mMaxX != -1.7976931348623157E+308D;
    }

    public boolean isMaxYSet()
    {
        return mMaxY != -1.7976931348623157E+308D;
    }

    public boolean isMinXSet()
    {
        return mMinX != 1.7976931348623157E+308D;
    }

    public boolean isMinYSet()
    {
        return mMinY != 1.7976931348623157E+308D;
    }

    public boolean isPanXEnabled()
    {
        return mPanXEnabled;
    }

    public boolean isPanYEnabled()
    {
        return mPanYEnabled;
    }

    public boolean isZoomXEnabled()
    {
        return mZoomXEnabled;
    }

    public boolean isZoomYEnabled()
    {
        return mZoomYEnabled;
    }

    public void setAxisTitleTextSize(float f)
    {
        mAxisTitleTextSize = f;
    }

    public void setBarSpacing(double d)
    {
        mBarSpacing = d;
    }

    public void setChartTitle(String s)
    {
        mChartTitle = s;
    }

    public void setChartTitleTextSize(float f)
    {
        mChartTitleTextSize = f;
    }

    public void setChartValuesTextSize(float f)
    {
        mChartValuesTextSize = f;
    }

    public void setDisplayChartValues(boolean flag)
    {
        mDisplayChartValues = flag;
    }

    public void setGridColor(int i)
    {
        mGridColor = i;
    }

    public void setInitialRange(double ad[])
    {
        initialRange = ad;
    }

    public void setMarginsColor(int i)
    {
        mMarginsColor = i;
    }

    public void setOrientation(Orientation orientation)
    {
        mOrientation = orientation;
    }

    public void setPanEnabled(boolean flag, boolean flag1)
    {
        mPanXEnabled = flag;
        mPanYEnabled = flag1;
    }

    public void setPanLimits(double ad[])
    {
        mPanLimits = ad;
    }

    public void setPointSize(float f)
    {
        mPointSize = f;
    }

    public void setRange(double ad[])
    {
        setXAxisMin(ad[0]);
        setXAxisMax(ad[1]);
        setYAxisMin(ad[2]);
        setYAxisMax(ad[3]);
    }

    public void setXAxisMax(double d)
    {
        if (!isMaxXSet())
        {
            initialRange[1] = d;
        }
        mMaxX = d;
    }

    public void setXAxisMin(double d)
    {
        if (!isMinXSet())
        {
            initialRange[0] = d;
        }
        mMinX = d;
    }

    public void setXLabels(int i)
    {
        mXLabels = i;
    }

    public void setXLabelsAngle(float f)
    {
        mXLabelsAngle = f;
    }

    public void setXTitle(String s)
    {
        mXTitle = s;
    }

    public void setYAxisMax(double d)
    {
        if (!isMaxYSet())
        {
            initialRange[3] = d;
        }
        mMaxY = d;
    }

    public void setYAxisMin(double d)
    {
        if (!isMinYSet())
        {
            initialRange[2] = d;
        }
        mMinY = d;
    }

    public void setYLabels(int i)
    {
        mYLabels = i;
    }

    public void setYLabelsAngle(float f)
    {
        mYLabelsAngle = f;
    }

    public void setYTitle(String s)
    {
        mYTitle = s;
    }

    public void setZoomEnabled(boolean flag, boolean flag1)
    {
        mZoomXEnabled = flag;
        mZoomYEnabled = flag1;
    }

    public void setZoomLimits(double ad[])
    {
        mZoomLimits = ad;
    }

    public void setZoomRate(float f)
    {
        mZoomRate = f;
    }
}
