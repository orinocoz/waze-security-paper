// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;


// Referenced classes of package com.waze.animation.easing:
//            AnimationEasing

public class Bounce
    implements AnimationEasing
{

    public Bounce()
    {
    }

    public double easeIn(double d, double d1, double d2, double d3)
    {
        return d1 + (d2 - easeOut(d3 - d, 0.0D, d2, d3));
    }

    public double easeInOut(double d, double d1, double d2, double d3)
    {
        if (d < d3 / 2D)
        {
            return d1 + 0.5D * easeIn(d * 2D, 0.0D, d2, d3);
        } else
        {
            return d1 + (0.5D * easeOut(2D * d - d3, 0.0D, d2, d3) + 0.5D * d2);
        }
    }

    public double easeOut(double d, double d1, double d2, double d3)
    {
        double d4 = d / d3;
        if (d4 < 0.36363636363636365D)
        {
            return d1 + d2 * (d4 * (7.5625D * d4));
        }
        if (d4 < 0.72727272727272729D)
        {
            double d7 = d4 - 0.54545454545454541D;
            return d1 + d2 * (0.75D + d7 * (7.5625D * d7));
        }
        if (d4 < 0.90909090909090906D)
        {
            double d6 = d4 - 0.81818181818181823D;
            return d1 + d2 * (0.9375D + d6 * (7.5625D * d6));
        } else
        {
            double d5 = d4 - 0.95454545454545459D;
            return d1 + d2 * (0.984375D + d5 * (7.5625D * d5));
        }
    }
}
