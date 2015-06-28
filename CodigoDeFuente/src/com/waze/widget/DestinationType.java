// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;


public final class DestinationType extends Enum
{

    private static final DestinationType ENUM$VALUES[];
    public static final DestinationType HOME;
    public static final DestinationType NA;
    public static final DestinationType NONE;
    public static final DestinationType WORK;

    private DestinationType(String s, int i)
    {
        super(s, i);
    }

    public static DestinationType valueOf(String s)
    {
        return (DestinationType)Enum.valueOf(com/waze/widget/DestinationType, s);
    }

    public static DestinationType[] values()
    {
        DestinationType adestinationtype[] = ENUM$VALUES;
        int i = adestinationtype.length;
        DestinationType adestinationtype1[] = new DestinationType[i];
        System.arraycopy(adestinationtype, 0, adestinationtype1, 0, i);
        return adestinationtype1;
    }

    static 
    {
        HOME = new DestinationType("HOME", 0);
        WORK = new DestinationType("WORK", 1);
        NONE = new DestinationType("NONE", 2);
        NA = new DestinationType("NA", 3);
        DestinationType adestinationtype[] = new DestinationType[4];
        adestinationtype[0] = HOME;
        adestinationtype[1] = WORK;
        adestinationtype[2] = NONE;
        adestinationtype[3] = NA;
        ENUM$VALUES = adestinationtype;
    }
}
