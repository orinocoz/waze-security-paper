// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;


public final class RoutingType extends Enum
{

    public static final RoutingType DISTANCE;
    private static final RoutingType ENUM$VALUES[];
    public static final RoutingType HISTORIC_TIME;
    public static final RoutingType NONE;
    public static final RoutingType TIME;

    private RoutingType(String s, int i)
    {
        super(s, i);
    }

    public static RoutingType valueOf(String s)
    {
        return (RoutingType)Enum.valueOf(com/waze/widget/routing/RoutingType, s);
    }

    public static RoutingType[] values()
    {
        RoutingType aroutingtype[] = ENUM$VALUES;
        int i = aroutingtype.length;
        RoutingType aroutingtype1[] = new RoutingType[i];
        System.arraycopy(aroutingtype, 0, aroutingtype1, 0, i);
        return aroutingtype1;
    }

    static 
    {
        NONE = new RoutingType("NONE", 0);
        DISTANCE = new RoutingType("DISTANCE", 1);
        TIME = new RoutingType("TIME", 2);
        HISTORIC_TIME = new RoutingType("HISTORIC_TIME", 3);
        RoutingType aroutingtype[] = new RoutingType[4];
        aroutingtype[0] = NONE;
        aroutingtype[1] = DISTANCE;
        aroutingtype[2] = TIME;
        aroutingtype[3] = HISTORIC_TIME;
        ENUM$VALUES = aroutingtype;
    }
}
