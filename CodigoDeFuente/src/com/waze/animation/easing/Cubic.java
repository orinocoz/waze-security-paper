// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;


// Referenced classes of package com.waze.animation.easing:
//            AnimationEasing

public class Cubic
    implements AnimationEasing
{

    public Cubic()
    {
    }

    public double easeIn(double d, double d1, double d2, double d3)
    {
        double d4 = d / d3;
        return d1 + d4 * (d4 * (d2 * d4));
    }

    public double easeInOut(double d, double d1, double d2, double d3)
    {
        double d4 = d / (d3 / 2D);
        if (d4 < 1.0D)
        {
            return d1 + d4 * (d4 * (d4 * (d2 / 2D)));
        } else
        {
            double d5 = d2 / 2D;
            double d6 = d4 - 2D;
            return d1 + d5 * (2D + d6 * (d6 * d6));
        }
    }

    public double easeOut(double d, double d1, double d2, double d3)
    {
        double d4 = d / d3 - 1.0D;
        return d1 + d2 * (1.0D + d4 * (d4 * d4));
    }
}
