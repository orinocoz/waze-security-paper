// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.Set;

// Referenced classes of package com.google.i18n.phonenumbers:
//            ShortNumberInfo

public class ShortNumberUtil
{
    public static final class ShortNumberCost extends Enum
    {

        private static final ShortNumberCost $VALUES[];
        public static final ShortNumberCost PREMIUM_RATE;
        public static final ShortNumberCost STANDARD_RATE;
        public static final ShortNumberCost TOLL_FREE;
        public static final ShortNumberCost UNKNOWN_COST;

        public static ShortNumberCost valueOf(String s)
        {
            return (ShortNumberCost)Enum.valueOf(com/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost, s);
        }

        public static ShortNumberCost[] values()
        {
            return (ShortNumberCost[])$VALUES.clone();
        }

        static 
        {
            TOLL_FREE = new ShortNumberCost("TOLL_FREE", 0);
            STANDARD_RATE = new ShortNumberCost("STANDARD_RATE", 1);
            PREMIUM_RATE = new ShortNumberCost("PREMIUM_RATE", 2);
            UNKNOWN_COST = new ShortNumberCost("UNKNOWN_COST", 3);
            ShortNumberCost ashortnumbercost[] = new ShortNumberCost[4];
            ashortnumbercost[0] = TOLL_FREE;
            ashortnumbercost[1] = STANDARD_RATE;
            ashortnumbercost[2] = PREMIUM_RATE;
            ashortnumbercost[3] = UNKNOWN_COST;
            $VALUES = ashortnumbercost;
        }

        private ShortNumberCost(String s, int i)
        {
            super(s, i);
        }
    }


    public ShortNumberUtil()
    {
    }

    public boolean connectsToEmergencyNumber(String s, String s1)
    {
        return ShortNumberInfo.getInstance().connectsToEmergencyNumber(s, s1);
    }

    public Set getSupportedRegions()
    {
        return ShortNumberInfo.getInstance().getSupportedRegions();
    }

    public boolean isEmergencyNumber(String s, String s1)
    {
        return ShortNumberInfo.getInstance().isEmergencyNumber(s, s1);
    }
}
