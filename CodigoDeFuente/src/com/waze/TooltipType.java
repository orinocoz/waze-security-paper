// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


public final class TooltipType extends Enum
{

    public static final TooltipType ARRIVAL_SENT;
    private static final TooltipType ENUM$VALUES[];
    public static final TooltipType ETA;
    public static final TooltipType ETA_UPDATE_SENT;
    public static final TooltipType FRIENDS;
    public static final TooltipType MAIN_MENU;
    public static final TooltipType NEW_USER_VIEWING;
    public static final TooltipType ROAD_CLOSURE;
    public static final TooltipType SHARE;

    private TooltipType(String s, int i)
    {
        super(s, i);
    }

    public static TooltipType valueOf(String s)
    {
        return (TooltipType)Enum.valueOf(com/waze/TooltipType, s);
    }

    public static TooltipType[] values()
    {
        TooltipType atooltiptype[] = ENUM$VALUES;
        int i = atooltiptype.length;
        TooltipType atooltiptype1[] = new TooltipType[i];
        System.arraycopy(atooltiptype, 0, atooltiptype1, 0, i);
        return atooltiptype1;
    }

    static 
    {
        ROAD_CLOSURE = new TooltipType("ROAD_CLOSURE", 0);
        SHARE = new TooltipType("SHARE", 1);
        MAIN_MENU = new TooltipType("MAIN_MENU", 2);
        FRIENDS = new TooltipType("FRIENDS", 3);
        ETA = new TooltipType("ETA", 4);
        NEW_USER_VIEWING = new TooltipType("NEW_USER_VIEWING", 5);
        ETA_UPDATE_SENT = new TooltipType("ETA_UPDATE_SENT", 6);
        ARRIVAL_SENT = new TooltipType("ARRIVAL_SENT", 7);
        TooltipType atooltiptype[] = new TooltipType[8];
        atooltiptype[0] = ROAD_CLOSURE;
        atooltiptype[1] = SHARE;
        atooltiptype[2] = MAIN_MENU;
        atooltiptype[3] = FRIENDS;
        atooltiptype[4] = ETA;
        atooltiptype[5] = NEW_USER_VIEWING;
        atooltiptype[6] = ETA_UPDATE_SENT;
        atooltiptype[7] = ARRIVAL_SENT;
        ENUM$VALUES = atooltiptype;
    }
}
