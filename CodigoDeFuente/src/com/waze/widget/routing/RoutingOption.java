// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.routing;


public final class RoutingOption extends Enum
{

    public static final RoutingOption ALLOW_NEAR_BY_SOURCE;
    public static final RoutingOption ALLOW_NEAR_BY_TARGET;
    public static final RoutingOption ALLOW_UNKNOWN_DIRECTIONS;
    public static final RoutingOption AVOID_DANGER_ZONES;
    public static final RoutingOption AVOID_LANDMARKS;
    public static final RoutingOption AVOID_LONG_TRAILS;
    public static final RoutingOption AVOID_PRIMARIES;
    public static final RoutingOption AVOID_TOLL_ROADS;
    public static final RoutingOption AVOID_TRAILS;
    private static final RoutingOption ENUM$VALUES[];
    public static final RoutingOption IGNORE_HISTORIC_INFO;
    public static final RoutingOption IGNORE_PENALTIES;
    public static final RoutingOption IGNORE_REALTIME_INFO;
    public static final RoutingOption IGNORE_SEGMENT_INFO;
    public static final RoutingOption NONE;
    public static final RoutingOption PREFER_COMMON_ROUTES;
    public static final RoutingOption PREFER_LESS_SEGMENTS;
    public static final RoutingOption PREFER_SAME_STREET;
    public static final RoutingOption PREFER_UNKNOWN_DIRECTIONS;
    public static final RoutingOption USE_EXTENDED_INSTRUCTIONS;
    private boolean defaultValue;

    private RoutingOption(String s, int i, boolean flag)
    {
        super(s, i);
        defaultValue = flag;
    }

    public static RoutingOption valueOf(String s)
    {
        return (RoutingOption)Enum.valueOf(com/waze/widget/routing/RoutingOption, s);
    }

    public static RoutingOption[] values()
    {
        RoutingOption aroutingoption[] = ENUM$VALUES;
        int i = aroutingoption.length;
        RoutingOption aroutingoption1[] = new RoutingOption[i];
        System.arraycopy(aroutingoption, 0, aroutingoption1, 0, i);
        return aroutingoption1;
    }

    public boolean getDefault()
    {
        return defaultValue;
    }

    static 
    {
        NONE = new RoutingOption("NONE", 0, false);
        AVOID_PRIMARIES = new RoutingOption("AVOID_PRIMARIES", 1, false);
        AVOID_TRAILS = new RoutingOption("AVOID_TRAILS", 2, false);
        AVOID_LONG_TRAILS = new RoutingOption("AVOID_LONG_TRAILS", 3, true);
        PREFER_SAME_STREET = new RoutingOption("PREFER_SAME_STREET", 4, false);
        IGNORE_REALTIME_INFO = new RoutingOption("IGNORE_REALTIME_INFO", 5, false);
        ALLOW_UNKNOWN_DIRECTIONS = new RoutingOption("ALLOW_UNKNOWN_DIRECTIONS", 6, false);
        ALLOW_NEAR_BY_SOURCE = new RoutingOption("ALLOW_NEAR_BY_SOURCE", 7, true);
        ALLOW_NEAR_BY_TARGET = new RoutingOption("ALLOW_NEAR_BY_TARGET", 8, true);
        IGNORE_SEGMENT_INFO = new RoutingOption("IGNORE_SEGMENT_INFO", 9, false);
        AVOID_TOLL_ROADS = new RoutingOption("AVOID_TOLL_ROADS", 10, false);
        IGNORE_PENALTIES = new RoutingOption("IGNORE_PENALTIES", 11, false);
        PREFER_UNKNOWN_DIRECTIONS = new RoutingOption("PREFER_UNKNOWN_DIRECTIONS", 12, false);
        AVOID_DANGER_ZONES = new RoutingOption("AVOID_DANGER_ZONES", 13, false);
        PREFER_LESS_SEGMENTS = new RoutingOption("PREFER_LESS_SEGMENTS", 14, true);
        IGNORE_HISTORIC_INFO = new RoutingOption("IGNORE_HISTORIC_INFO", 15, false);
        USE_EXTENDED_INSTRUCTIONS = new RoutingOption("USE_EXTENDED_INSTRUCTIONS", 16, false);
        AVOID_LANDMARKS = new RoutingOption("AVOID_LANDMARKS", 17, false);
        PREFER_COMMON_ROUTES = new RoutingOption("PREFER_COMMON_ROUTES", 18, false);
        RoutingOption aroutingoption[] = new RoutingOption[19];
        aroutingoption[0] = NONE;
        aroutingoption[1] = AVOID_PRIMARIES;
        aroutingoption[2] = AVOID_TRAILS;
        aroutingoption[3] = AVOID_LONG_TRAILS;
        aroutingoption[4] = PREFER_SAME_STREET;
        aroutingoption[5] = IGNORE_REALTIME_INFO;
        aroutingoption[6] = ALLOW_UNKNOWN_DIRECTIONS;
        aroutingoption[7] = ALLOW_NEAR_BY_SOURCE;
        aroutingoption[8] = ALLOW_NEAR_BY_TARGET;
        aroutingoption[9] = IGNORE_SEGMENT_INFO;
        aroutingoption[10] = AVOID_TOLL_ROADS;
        aroutingoption[11] = IGNORE_PENALTIES;
        aroutingoption[12] = PREFER_UNKNOWN_DIRECTIONS;
        aroutingoption[13] = AVOID_DANGER_ZONES;
        aroutingoption[14] = PREFER_LESS_SEGMENTS;
        aroutingoption[15] = IGNORE_HISTORIC_INFO;
        aroutingoption[16] = USE_EXTENDED_INSTRUCTIONS;
        aroutingoption[17] = AVOID_LANDMARKS;
        aroutingoption[18] = PREFER_COMMON_ROUTES;
        ENUM$VALUES = aroutingoption;
    }
}
