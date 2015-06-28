// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;

public class EditPlacePointsHolder
{
    public static final class PointsType extends Enum
    {

        public static final PointsType Categories;
        public static final PointsType City;
        public static final PointsType CreatePlace;
        public static final PointsType Description;
        private static final PointsType ENUM$VALUES[];
        public static final PointsType HouseNumber;
        public static final PointsType Images;
        public static final PointsType Location;
        public static final PointsType Name;
        public static final PointsType OpeningHours;
        public static final PointsType PhoneNumber;
        public static final PointsType Services;
        public static final PointsType Street;
        public static final PointsType URL;

        public static PointsType valueOf(String s)
        {
            return (PointsType)Enum.valueOf(com/waze/reports/EditPlacePointsHolder$PointsType, s);
        }

        public static PointsType[] values()
        {
            PointsType apointstype[] = ENUM$VALUES;
            int i = apointstype.length;
            PointsType apointstype1[] = new PointsType[i];
            System.arraycopy(apointstype, 0, apointstype1, 0, i);
            return apointstype1;
        }

        static 
        {
            Images = new PointsType("Images", 0);
            Location = new PointsType("Location", 1);
            Name = new PointsType("Name", 2);
            Categories = new PointsType("Categories", 3);
            Street = new PointsType("Street", 4);
            HouseNumber = new PointsType("HouseNumber", 5);
            City = new PointsType("City", 6);
            Services = new PointsType("Services", 7);
            OpeningHours = new PointsType("OpeningHours", 8);
            Description = new PointsType("Description", 9);
            PhoneNumber = new PointsType("PhoneNumber", 10);
            URL = new PointsType("URL", 11);
            CreatePlace = new PointsType("CreatePlace", 12);
            PointsType apointstype[] = new PointsType[13];
            apointstype[0] = Images;
            apointstype[1] = Location;
            apointstype[2] = Name;
            apointstype[3] = Categories;
            apointstype[4] = Street;
            apointstype[5] = HouseNumber;
            apointstype[6] = City;
            apointstype[7] = Services;
            apointstype[8] = OpeningHours;
            apointstype[9] = Description;
            apointstype[10] = PhoneNumber;
            apointstype[11] = URL;
            apointstype[12] = CreatePlace;
            ENUM$VALUES = apointstype;
        }

        private PointsType(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType[];
    private static com.waze.NativeManager.VenueFieldPoints mAllPoints = null;

    static int[] $SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType()
    {
        int ai[] = $SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[PointsType.values().length];
        try
        {
            ai1[PointsType.Categories.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[PointsType.City.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[PointsType.CreatePlace.ordinal()] = 13;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[PointsType.Description.ordinal()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[PointsType.HouseNumber.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[PointsType.Images.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[PointsType.Location.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[PointsType.Name.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai1[PointsType.OpeningHours.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai1[PointsType.PhoneNumber.ordinal()] = 11;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            ai1[PointsType.Services.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror10) { }
        try
        {
            ai1[PointsType.Street.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror11) { }
        try
        {
            ai1[PointsType.URL.ordinal()] = 12;
        }
        catch (NoSuchFieldError nosuchfielderror12) { }
        $SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType = ai1;
        return ai1;
    }

    public EditPlacePointsHolder()
    {
    }

    public static com.waze.NativeManager.VenueFieldPoints getAllPoints()
    {
        if (mAllPoints == null)
        {
            NativeManager.Post(new Runnable() {

                public void run()
                {
                    EditPlacePointsHolder.mAllPoints = NativeManager.getInstance().venueProviderGetFieldPoints();
                }

            });
        }
        return mAllPoints;
    }

    public static int getPoints(PointsType pointstype)
    {
        if (mAllPoints == null)
        {
            return 0;
        }
        switch ($SWITCH_TABLE$com$waze$reports$EditPlacePointsHolder$PointsType()[pointstype.ordinal()])
        {
        default:
            return 0;

        case 1: // '\001'
            return mAllPoints.images;

        case 3: // '\003'
            return mAllPoints.name;

        case 4: // '\004'
            return mAllPoints.categories;

        case 5: // '\005'
            return mAllPoints.street;

        case 6: // '\006'
            return mAllPoints.house_number;

        case 7: // '\007'
            return mAllPoints.city;

        case 8: // '\b'
            return mAllPoints.services;

        case 9: // '\t'
            return mAllPoints.hours;

        case 10: // '\n'
            return mAllPoints.description;

        case 11: // '\013'
            return mAllPoints.phone;

        case 12: // '\f'
            return mAllPoints.url;

        case 2: // '\002'
            return mAllPoints.location;

        case 13: // '\r'
            return 3;
        }
    }


}
