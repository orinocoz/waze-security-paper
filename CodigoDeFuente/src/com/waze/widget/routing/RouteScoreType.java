// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;


public final class RouteScoreType extends Enum
{

    private static final RouteScoreType ENUM$VALUES[];
    public static final RouteScoreType NONE;
    public static final RouteScoreType ROUTE_BAD;
    public static final RouteScoreType ROUTE_GOOD;
    public static final RouteScoreType ROUTE_OK;

    private RouteScoreType(String s, int i)
    {
        super(s, i);
    }

    public static RouteScoreType valueOf(String s)
    {
        return (RouteScoreType)Enum.valueOf(com/waze/widget/routing/RouteScoreType, s);
    }

    public static RouteScoreType[] values()
    {
        RouteScoreType aroutescoretype[] = ENUM$VALUES;
        int i = aroutescoretype.length;
        RouteScoreType aroutescoretype1[] = new RouteScoreType[i];
        System.arraycopy(aroutescoretype, 0, aroutescoretype1, 0, i);
        return aroutescoretype1;
    }

    static 
    {
        NONE = new RouteScoreType("NONE", 0);
        ROUTE_BAD = new RouteScoreType("ROUTE_BAD", 1);
        ROUTE_OK = new RouteScoreType("ROUTE_OK", 2);
        ROUTE_GOOD = new RouteScoreType("ROUTE_GOOD", 3);
        RouteScoreType aroutescoretype[] = new RouteScoreType[4];
        aroutescoretype[0] = NONE;
        aroutescoretype[1] = ROUTE_BAD;
        aroutescoretype[2] = ROUTE_OK;
        aroutescoretype[3] = ROUTE_GOOD;
        ENUM$VALUES = aroutescoretype;
    }
}
