// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;


// Referenced classes of package com.waze.animation.easing:
//            AnimationEasing

public class Elastic
    implements AnimationEasing
{

    private double mAmplitude;
    private double mPeriod;

    public Elastic()
    {
        mAmplitude = 0.0D;
        mPeriod = 0.0D;
    }

    public Elastic(double d, double d1)
    {
        mAmplitude = 0.0D;
        mPeriod = 0.0D;
        mAmplitude = d;
        mPeriod = d1;
    }

    public double easeIn(double d, double d1, double d2, double d3)
    {
        return easeIn(d, d1, d2, d3, mAmplitude, mPeriod);
    }

    public double easeIn(double d, double d1, double d2, double d3, double d4, double d5)
    {
        if (d == 0.0D)
        {
            return d1;
        }
        double d6 = d / d3;
        if (d6 == 1.0D)
        {
            return d1 + d2;
        }
        if (d5 <= 0.0D)
        {
            d5 = d3 * 0.29999999999999999D;
        }
        double d7;
        double d8;
        if (d4 <= 0.0D || d4 < Math.abs(d2))
        {
            d4 = d2;
            d7 = d5 / 4D;
        } else
        {
            d7 = (d5 / 6.2831853071795862D) * Math.asin(d2 / d4);
        }
        d8 = d6 - 1.0D;
        return d1 + -(d4 * Math.pow(2D, 10D * d8) * Math.sin((6.2831853071795862D * (d8 * d3 - d7)) / d5));
    }

    public double easeInOut(double d, double d1, double d2, double d3)
    {
        return easeInOut(d, d1, d2, d3, mAmplitude, mPeriod);
    }

    public double easeInOut(double d, double d1, double d2, double d3, double d4, double d5)
    {
        if (d == 0.0D)
        {
            return d1;
        }
        double d6 = d / (d3 / 2D);
        if (d6 == 2D)
        {
            return d1 + d2;
        }
        if (d5 <= 0.0D)
        {
            d5 = d3 * 0.44999999999999996D;
        }
        double d7;
        if (d4 <= 0.0D || d4 < Math.abs(d2))
        {
            d4 = d2;
            d7 = d5 / 4D;
        } else
        {
            d7 = (d5 / 6.2831853071795862D) * Math.asin(d2 / d4);
        }
        if (d6 < 1.0D)
        {
            double d9 = d6 - 1.0D;
            return d1 + -0.5D * (d4 * Math.pow(2D, 10D * d9) * Math.sin((6.2831853071795862D * (d9 * d3 - d7)) / d5));
        } else
        {
            double d8 = d6 - 1.0D;
            return d1 + (d2 + 0.5D * (d4 * Math.pow(2D, -10D * d8) * Math.sin((6.2831853071795862D * (d8 * d3 - d7)) / d5)));
        }
    }

    public double easeOut(double d, double d1, double d2, double d3)
    {
        return easeOut(d, d1, d2, d3, mAmplitude, mPeriod);
    }

    public double easeOut(double d, double d1, double d2, double d3, double d4, double d5)
    {
        if (d == 0.0D)
        {
            return d1;
        }
        double d6 = d / d3;
        if (d6 == 1.0D)
        {
            return d1 + d2;
        }
        if (d5 <= 0.0D)
        {
            d5 = d3 * 0.29999999999999999D;
        }
        double d7;
        if (d4 <= 0.0D || d4 < Math.abs(d2))
        {
            d4 = d2;
            d7 = d5 / 4D;
        } else
        {
            d7 = (d5 / 6.2831853071795862D) * Math.asin(d2 / d4);
        }
        return d1 + (d2 + d4 * Math.pow(2D, -10D * d6) * Math.sin((6.2831853071795862D * (d6 * d3 - d7)) / d5));
    }
}
