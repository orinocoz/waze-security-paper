// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;


// Referenced classes of package com.waze.widget.routing:
//            RouteScoreType

public class RouteScore
{

    public RouteScore()
    {
    }

    public static RouteScoreType getScore(int i, int j)
    {
        if ((double)i > 1.1000000000000001D * (double)j)
        {
            return RouteScoreType.ROUTE_BAD;
        }
        if (i < j)
        {
            return RouteScoreType.ROUTE_GOOD;
        } else
        {
            return RouteScoreType.ROUTE_OK;
        }
    }
}
