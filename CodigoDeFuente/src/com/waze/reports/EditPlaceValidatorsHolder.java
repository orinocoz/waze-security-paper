// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;

public class EditPlaceValidatorsHolder
{
    public static final class ValidatorType extends Enum
    {

        public static final ValidatorType City;
        public static final ValidatorType Description;
        private static final ValidatorType ENUM$VALUES[];
        public static final ValidatorType HouseNumber;
        public static final ValidatorType Name;
        public static final ValidatorType PhoneNumber;
        public static final ValidatorType Street;
        public static final ValidatorType URL;

        public static ValidatorType valueOf(String s)
        {
            return (ValidatorType)Enum.valueOf(com/waze/reports/EditPlaceValidatorsHolder$ValidatorType, s);
        }

        public static ValidatorType[] values()
        {
            ValidatorType avalidatortype[] = ENUM$VALUES;
            int i = avalidatortype.length;
            ValidatorType avalidatortype1[] = new ValidatorType[i];
            System.arraycopy(avalidatortype, 0, avalidatortype1, 0, i);
            return avalidatortype1;
        }

        static 
        {
            Name = new ValidatorType("Name", 0);
            Street = new ValidatorType("Street", 1);
            HouseNumber = new ValidatorType("HouseNumber", 2);
            City = new ValidatorType("City", 3);
            Description = new ValidatorType("Description", 4);
            PhoneNumber = new ValidatorType("PhoneNumber", 5);
            URL = new ValidatorType("URL", 6);
            ValidatorType avalidatortype[] = new ValidatorType[7];
            avalidatortype[0] = Name;
            avalidatortype[1] = Street;
            avalidatortype[2] = HouseNumber;
            avalidatortype[3] = City;
            avalidatortype[4] = Description;
            avalidatortype[5] = PhoneNumber;
            avalidatortype[6] = URL;
            ENUM$VALUES = avalidatortype;
        }

        private ValidatorType(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType[];
    private static com.waze.NativeManager.VenueFieldValidators mAllValidators = null;

    static int[] $SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType()
    {
        int ai[] = $SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[ValidatorType.values().length];
        try
        {
            ai1[ValidatorType.City.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ValidatorType.Description.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[ValidatorType.HouseNumber.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[ValidatorType.Name.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[ValidatorType.PhoneNumber.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[ValidatorType.Street.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[ValidatorType.URL.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        $SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType = ai1;
        return ai1;
    }

    public EditPlaceValidatorsHolder()
    {
    }

    public static com.waze.NativeManager.VenueFieldValidators getAllValidators()
    {
        if (mAllValidators == null)
        {
            NativeManager.Post(new Runnable() {

                public void run()
                {
                    EditPlaceValidatorsHolder.mAllValidators = NativeManager.getInstance().venueProviderGetFieldValidators();
                }

            });
        }
        return mAllValidators;
    }

    public static String getValidator(ValidatorType validatortype)
    {
        if (mAllValidators == null)
        {
            return null;
        }
        switch ($SWITCH_TABLE$com$waze$reports$EditPlaceValidatorsHolder$ValidatorType()[validatortype.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return mAllValidators.name;

        case 2: // '\002'
            return mAllValidators.street;

        case 3: // '\003'
            return mAllValidators.house_number;

        case 4: // '\004'
            return mAllValidators.city;

        case 5: // '\005'
            return mAllValidators.description;

        case 6: // '\006'
            return mAllValidators.phone;

        case 7: // '\007'
            return mAllValidators.url;
        }
    }


}
