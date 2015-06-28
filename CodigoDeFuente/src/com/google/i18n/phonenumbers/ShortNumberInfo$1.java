// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            ShortNumberInfo

static class ortNumberCost
{

    static final int $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[];

    static 
    {
        $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost = new int[ortNumberCost.values().length];
        try
        {
            $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ortNumberCost.PREMIUM_RATE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ortNumberCost.UNKNOWN_COST.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ortNumberCost.STANDARD_RATE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost[ortNumberCost.TOLL_FREE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
