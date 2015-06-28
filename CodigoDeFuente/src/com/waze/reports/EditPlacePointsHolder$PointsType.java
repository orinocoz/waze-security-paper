// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;


// Referenced classes of package com.waze.reports:
//            EditPlacePointsHolder

public static final class  extends Enum
{

    public static final ENUM.VALUES Categories;
    public static final ENUM.VALUES City;
    public static final ENUM.VALUES CreatePlace;
    public static final ENUM.VALUES Description;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES HouseNumber;
    public static final ENUM.VALUES Images;
    public static final ENUM.VALUES Location;
    public static final ENUM.VALUES Name;
    public static final ENUM.VALUES OpeningHours;
    public static final ENUM.VALUES PhoneNumber;
    public static final ENUM.VALUES Services;
    public static final ENUM.VALUES Street;
    public static final ENUM.VALUES URL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/reports/EditPlacePointsHolder$PointsType, s);
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
        Images = new <init>("Images", 0);
        Location = new <init>("Location", 1);
        Name = new <init>("Name", 2);
        Categories = new <init>("Categories", 3);
        Street = new <init>("Street", 4);
        HouseNumber = new <init>("HouseNumber", 5);
        City = new <init>("City", 6);
        Services = new <init>("Services", 7);
        OpeningHours = new <init>("OpeningHours", 8);
        Description = new <init>("Description", 9);
        PhoneNumber = new <init>("PhoneNumber", 10);
        URL = new <init>("URL", 11);
        CreatePlace = new <init>("CreatePlace", 12);
        ENUM.VALUES avalues[] = new <init>[13];
        avalues[0] = Images;
        avalues[1] = Location;
        avalues[2] = Name;
        avalues[3] = Categories;
        avalues[4] = Street;
        avalues[5] = HouseNumber;
        avalues[6] = City;
        avalues[7] = Services;
        avalues[8] = OpeningHours;
        avalues[9] = Description;
        avalues[10] = PhoneNumber;
        avalues[11] = URL;
        avalues[12] = CreatePlace;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
