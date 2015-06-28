// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.renderer;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package org.achartengine.renderer:
//            DefaultRenderer

public class DialRenderer extends DefaultRenderer
{
    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type ARROW;
        public static final Type NEEDLE;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(org/achartengine/renderer/DialRenderer$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            NEEDLE = new Type("NEEDLE", 0);
            ARROW = new Type("ARROW", 1);
            Type atype[] = new Type[2];
            atype[0] = NEEDLE;
            atype[1] = ARROW;
            $VALUES = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    private double mAngleMax;
    private double mAngleMin;
    private String mChartTitle;
    private float mChartTitleTextSize;
    private double mMajorTickSpacing;
    private double mMaxValue;
    private double mMinValue;
    private double mMinorTickSpacing;
    private List visualTypes;

    public DialRenderer()
    {
        mChartTitle = "";
        mChartTitleTextSize = 15F;
        mAngleMin = 330D;
        mAngleMax = 30D;
        mMinValue = 1.7976931348623157E+308D;
        mMaxValue = -1.7976931348623157E+308D;
        mMinorTickSpacing = 1.7976931348623157E+308D;
        mMajorTickSpacing = 1.7976931348623157E+308D;
        visualTypes = new ArrayList();
    }

    public double getAngleMax()
    {
        return mAngleMax;
    }

    public double getAngleMin()
    {
        return mAngleMin;
    }

    public String getChartTitle()
    {
        return mChartTitle;
    }

    public float getChartTitleTextSize()
    {
        return mChartTitleTextSize;
    }

    public double getMajorTicksSpacing()
    {
        return mMajorTickSpacing;
    }

    public double getMaxValue()
    {
        return mMaxValue;
    }

    public double getMinValue()
    {
        return mMinValue;
    }

    public double getMinorTicksSpacing()
    {
        return mMinorTickSpacing;
    }

    public Type getVisualTypeForIndex(int i)
    {
        if (i < visualTypes.size())
        {
            return (Type)visualTypes.get(i);
        } else
        {
            return Type.NEEDLE;
        }
    }

    public boolean isMaxValueSet()
    {
        return mMaxValue != -1.7976931348623157E+308D;
    }

    public boolean isMinValueSet()
    {
        return mMinValue != 1.7976931348623157E+308D;
    }

    public void setAngleMax(double d)
    {
        mAngleMax = d;
    }

    public void setAngleMin(double d)
    {
        mAngleMin = d;
    }

    public void setChartTitle(String s)
    {
        mChartTitle = s;
    }

    public void setChartTitleTextSize(float f)
    {
        mChartTitleTextSize = f;
    }

    public void setMajorTicksSpacing(double d)
    {
        mMajorTickSpacing = d;
    }

    public void setMaxValue(double d)
    {
        mMaxValue = d;
    }

    public void setMinValue(double d)
    {
        mMinValue = d;
    }

    public void setMinorTicksSpacing(double d)
    {
        mMinorTickSpacing = d;
    }

    public void setVisualTypes(Type atype[])
    {
        visualTypes.clear();
        visualTypes.addAll(Arrays.asList(atype));
    }
}
