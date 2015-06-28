// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;


// Referenced classes of package com.waze.reports:
//            EditPlaceValidatorsHolder

public static final class  extends Enum
{

    public static final ENUM.VALUES City;
    public static final ENUM.VALUES Description;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES HouseNumber;
    public static final ENUM.VALUES Name;
    public static final ENUM.VALUES PhoneNumber;
    public static final ENUM.VALUES Street;
    public static final ENUM.VALUES URL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/reports/EditPlaceValidatorsHolder$ValidatorType, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        Name = new <init>("Name", 0);
        Street = new <init>("Street", 1);
        HouseNumber = new <init>("HouseNumber", 2);
        City = new <init>("City", 3);
        Description = new <init>("Description", 4);
        PhoneNumber = new <init>("PhoneNumber", 5);
        URL = new <init>("URL", 6);
        ENUM.VALUES avalues[] = new <init>[7];
        avalues[0] = Name;
        avalues[1] = Street;
        avalues[2] = HouseNumber;
        avalues[3] = City;
        avalues[4] = Description;
        avalues[5] = PhoneNumber;
        avalues[6] = URL;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
