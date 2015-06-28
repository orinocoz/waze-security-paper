// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import com.waze.autocomplete.PlaceData;
import com.waze.reports.VenueData;
import java.io.Serializable;

public class AddressItem
    implements Serializable
{
    public static class AdvertiserData
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        String cookie;
        String query;
        int session;
        String url;

        public AdvertiserData()
        {
        }
    }


    public static final int CALENDAR_ENC_ITEM = 12;
    public static final int CALENDAR_ITEM = 11;
    public static final int CATEGORY_CALENDAR = 7;
    public static final int CATEGORY_CONTACT = 5;
    public static final int CATEGORY_ERROR = 4;
    public static final int CATEGORY_EVENTS = 6;
    public static final int CATEGORY_FAVORITE = 1;
    public static final int CATEGORY_HISTORY = 2;
    public static final int CATEGORY_OTHER = 99;
    public static final int CATEGORY_SEARCH = 3;
    public static final int CATEGORY_SHARED = 8;
    public static final int EVENT_ITEM = 9;
    public static final int FAVORITE_ITEM = 5;
    public static final int FAVORITE_ITEM_EMPTY = 6;
    public static final int FB_ENC_ITEM = 10;
    public static final int HISTORY_ITEM = 8;
    public static final int HOME_ITEM = 1;
    public static final int HOME_ITEM_EMPTY = 2;
    public static final String NO_ADDITIONS[] = new String[0];
    public static final AddressItem NO_RESULT_ADDRESS_ITEM = new AddressItem(null, null, "No results found", null, null, null, null, null, Integer.valueOf(4), null, null, null, null, null, null, null, null, null, null, null, null);
    public static final int SEARCH_ITEM = 7;
    public static final int SHARED_ITEM = 13;
    public static final int WORK_ITEM = 3;
    public static final int WORK_ITEM_EMPTY = 4;
    private static final long serialVersionUID = 1L;
    private String MeetingId;
    public String VanueID;
    private String accreditation;
    private String additions[];
    private String address;
    public int advPointId;
    public String brand;
    private Integer category;
    private String categoryDesc;
    private String city;
    private String country;
    public String currency;
    public String dealId;
    public String dealText;
    public String dealTitle;
    public int dealType;
    private String distance;
    public int distanceMeters;
    private String house;
    private String icon;
    private String id;
    private Integer image;
    public int index;
    private boolean isRecurring;
    private Boolean is_validate;
    public long lastUpdated;
    private Integer locationX;
    private Integer locationY;
    AdvertiserData mAdvertiserData;
    public String mImageURL;
    public boolean mIsNavigable;
    public String mPreviewIcon;
    private Boolean more_action;
    private String phone;
    public float price;
    public String price_format;
    public int range;
    private String secondaryTitle;
    private String special_url;
    public boolean sponsored;
    private String starttime;
    private String state;
    private String street;
    private String title;
    private Integer type;
    private String url;
    public VenueData venueData;

    public AddressItem(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, String s7, String s8, String s9, String s10, String s11, String s12, 
            String s13, String s14, String s15, String s16, String s17, String s18, String s19, 
            String s20, VenueData venuedata)
    {
        categoryDesc = null;
        starttime = null;
        country = "";
        state = "";
        city = "";
        street = "";
        house = "";
        venueData = null;
        price_format = null;
        distanceMeters = 0;
        brand = "";
        index = -1;
        VanueID = null;
        mImageURL = null;
        mPreviewIcon = "";
        mIsNavigable = true;
        init(i, s, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, venuedata);
    }

    public AddressItem(PlaceData placedata)
    {
        categoryDesc = null;
        starttime = null;
        country = "";
        state = "";
        city = "";
        street = "";
        house = "";
        venueData = null;
        price_format = null;
        distanceMeters = 0;
        brand = "";
        index = -1;
        VanueID = null;
        mImageURL = null;
        mPreviewIcon = "";
        mIsNavigable = true;
        locationX = Integer.valueOf(placedata.mLocX);
        locationY = Integer.valueOf(placedata.mLocY);
        address = null;
        title = placedata.mTitle;
        secondaryTitle = placedata.mSecondaryTitle;
        distance = null;
        more_action = Boolean.valueOf(false);
        image = null;
        category = Integer.valueOf(3);
        id = null;
        type = Integer.valueOf(7);
        url = null;
        special_url = null;
        icon = null;
        VanueID = placedata.mVenueId;
        country = null;
        state = null;
        city = null;
        street = null;
        house = null;
        venueData = null;
    }

    public AddressItem(Integer integer, Integer integer1, String s, String s1, String s2, String s3, Boolean boolean1, 
            Integer integer2, Integer integer3, String s4, Integer integer4, String s5, String s6, String s7, 
            String s8, String s9, String s10, String s11, String s12, String s13, VenueData venuedata)
    {
        categoryDesc = null;
        starttime = null;
        country = "";
        state = "";
        city = "";
        street = "";
        house = "";
        venueData = null;
        price_format = null;
        distanceMeters = 0;
        brand = "";
        index = -1;
        VanueID = null;
        mImageURL = null;
        mPreviewIcon = "";
        mIsNavigable = true;
        if (integer != null)
        {
            locationX = integer;
        } else
        {
            locationX = Integer.valueOf(-1);
        }
        if (integer1 != null)
        {
            locationY = integer1;
        } else
        {
            locationY = Integer.valueOf(-1);
        }
        address = s2;
        title = s;
        secondaryTitle = s1;
        distance = s3;
        more_action = boolean1;
        image = integer2;
        category = integer3;
        id = s4;
        type = integer4;
        url = s5;
        special_url = s6;
        icon = s7;
        VanueID = s8;
        country = s9;
        state = s10;
        city = s11;
        street = s12;
        house = s13;
        venueData = venuedata;
    }

    public AddressItem(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, String s8, String s9, String s10, String s11, String s12, String s13, 
            String s14, String s15, String s16, String s17, String s18, String s19, String s20, 
            String s21, String s22, VenueData venuedata, boolean flag)
    {
        categoryDesc = null;
        starttime = null;
        country = "";
        state = "";
        city = "";
        street = "";
        house = "";
        venueData = null;
        price_format = null;
        distanceMeters = 0;
        brand = "";
        index = -1;
        VanueID = null;
        mImageURL = null;
        mPreviewIcon = "";
        mIsNavigable = true;
        init(-1, s, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s22, venuedata);
        if (s20 != null)
        {
            starttime = s20;
            MeetingId = s21;
            isRecurring = flag;
        }
        if (s15 != null && Integer.parseInt(s15) == 8 && s21 != null)
        {
            MeetingId = s21;
        }
    }

    private void init(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, String s7, String s8, String s9, String s10, String s11, String s12, 
            String s13, String s14, String s15, String s16, String s17, String s18, String s19, 
            String s20, VenueData venuedata)
    {
        if (s != null)
        {
            locationX = Integer.valueOf(Integer.parseInt(s));
        } else
        {
            locationX = Integer.valueOf(-1);
        }
        if (s1 != null)
        {
            locationY = Integer.valueOf(Integer.parseInt(s1));
        } else
        {
            locationY = Integer.valueOf(-1);
        }
        address = s4;
        title = s2;
        secondaryTitle = s3;
        distance = s5;
        if (s11 != null)
        {
            more_action = Boolean.valueOf(Boolean.parseBoolean(s11));
        }
        if (s12 != null)
        {
            if (s12.equals("home"))
            {
                image = Integer.valueOf(0x7f020194);
            } else
            if (s12.equals("work"))
            {
                image = Integer.valueOf(0x7f02046a);
            } else
            if (s12.equals("History"))
            {
                image = Integer.valueOf(0x7f020193);
            } else
            if (s12.equals("Ads"))
            {
                image = Integer.valueOf(0x7f020012);
            } else
            if (s12.equals("Event"))
            {
                image = Integer.valueOf(0x7f020155);
                secondaryTitle = "Tap to verify";
                is_validate = Boolean.valueOf(false);
                more_action = Boolean.valueOf(false);
            } else
            if (s12.equals("EventVerified"))
            {
                image = Integer.valueOf(0x7f020156);
                is_validate = Boolean.valueOf(true);
            } else
            if (s12.equals("calendar_blue"))
            {
                image = Integer.valueOf(0x7f0200a1);
                is_validate = Boolean.valueOf(false);
            } else
            if (s12.equals("calendar"))
            {
                image = Integer.valueOf(0x7f02009f);
                is_validate = Boolean.valueOf(true);
            } else
            if (s12.equals("Star"))
            {
                image = Integer.valueOf(0x7f0203cd);
            } else
            if (Integer.parseInt(s15) == 13)
            {
                mImageURL = s12;
            }
        }
        if (s13 != null)
        {
            if (s13.equals("F"))
            {
                category = Integer.valueOf(1);
            } else
            if (s13.equals("A"))
            {
                category = Integer.valueOf(2);
            } else
            if (s13.equals("S"))
            {
                category = Integer.valueOf(3);
            } else
            if (s13.equals("E"))
            {
                category = Integer.valueOf(6);
            } else
            if (s13.equals("C"))
            {
                category = Integer.valueOf(7);
            } else
            if (s13.equals("H"))
            {
                category = Integer.valueOf(8);
            }
        }
        id = s14;
        url = s16;
        VanueID = s20;
        special_url = s17;
        icon = s18;
        index = i;
        accreditation = s19;
        country = s6;
        state = s7;
        city = s8;
        street = s9;
        house = s10;
        venueData = venuedata;
        if (s15 != null)
        {
            type = Integer.valueOf(Integer.parseInt(s15));
        }
        Log.d("WAZE", toString());
    }

    public String getAccreditation()
    {
        return accreditation;
    }

    public String[] getAdditions()
    {
        if (additions != null)
        {
            return additions;
        } else
        {
            return NO_ADDITIONS;
        }
    }

    public String getAddress()
    {
        if (address == null)
        {
            return "";
        } else
        {
            return address;
        }
    }

    public AdvertiserData getAdvertiserData()
    {
        return mAdvertiserData;
    }

    public Integer getCategory()
    {
        return category;
    }

    public String getCategoryDesc()
    {
        return categoryDesc;
    }

    public String getCity()
    {
        return city;
    }

    public String getCountry()
    {
        return country;
    }

    public String getDealId()
    {
        if (dealId == null)
        {
            return "";
        } else
        {
            return dealId;
        }
    }

    public String getDistance()
    {
        if (distance == null)
        {
            return "";
        } else
        {
            return distance;
        }
    }

    public String getHouse()
    {
        return house;
    }

    public String getIcon()
    {
        if (icon == null || icon.equals(""))
        {
            return "category_menu_default";
        } else
        {
            return icon;
        }
    }

    public String getId()
    {
        return id;
    }

    public Integer getImage()
    {
        return image;
    }

    public Boolean getIsValidate()
    {
        if (is_validate == null)
        {
            return Boolean.valueOf(false);
        } else
        {
            return is_validate;
        }
    }

    public Integer getLocationX()
    {
        return locationX;
    }

    public Integer getLocationY()
    {
        return locationY;
    }

    public String getMeetingId()
    {
        return MeetingId;
    }

    public Boolean getMoreAction()
    {
        return more_action;
    }

    public String getPhone()
    {
        if (phone == null)
        {
            return "";
        } else
        {
            return phone;
        }
    }

    public String getSecondaryTitle()
    {
        if (secondaryTitle == null)
        {
            return "";
        } else
        {
            return secondaryTitle;
        }
    }

    public String getSpecialUrl()
    {
        return special_url;
    }

    public String getStartTime()
    {
        return starttime;
    }

    public String getState()
    {
        return state;
    }

    public String getStreet()
    {
        return street;
    }

    public String getTitle()
    {
        if (title == null)
        {
            return "";
        } else
        {
            return title;
        }
    }

    public Integer getType()
    {
        return type;
    }

    public String getUrl()
    {
        return url;
    }

    public boolean getisRecurring()
    {
        return isRecurring;
    }

    public boolean hasIcon()
    {
        return icon != null && !icon.isEmpty() && !icon.equals("category_menu_default");
    }

    public void setAdditions(String as[])
    {
        additions = as;
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            String s = as[j];
            Log.d("WAZE", (new StringBuilder("ad=")).append(s).toString());
            j++;
        } while (true);
    }

    public void setAddress(String s)
    {
        address = s;
    }

    public void setAdvertiserData(String s, String s1, int i, String s2)
    {
        mAdvertiserData = new AdvertiserData();
        mAdvertiserData.url = s;
        mAdvertiserData.query = s1;
        mAdvertiserData.session = i;
        mAdvertiserData.cookie = s2;
    }

    public void setBrand(String s)
    {
        brand = s;
    }

    public void setCategory(Integer integer)
    {
        category = integer;
    }

    public void setCity(String s)
    {
        city = s;
    }

    public void setCountry(String s)
    {
        country = s;
    }

    public void setDeal(boolean flag, int i, String s, String s1, float f, int j, String s2, 
            long l, String s3, int k, String s4)
    {
        sponsored = flag;
        dealType = i;
        dealTitle = s;
        dealText = s1;
        price = f;
        range = j;
        currency = s2;
        lastUpdated = l;
        dealId = s3;
        advPointId = k;
        price_format = s4;
    }

    public void setDistance(int i)
    {
        distanceMeters = i;
    }

    public void setDistance(String s)
    {
        distance = s;
    }

    public void setHouse(String s)
    {
        house = s;
    }

    public void setIcon(String s)
    {
        icon = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setImage(Integer integer)
    {
        image = integer;
    }

    public void setIsValidate(Boolean boolean1)
    {
        is_validate = boolean1;
    }

    public void setLocationX(Integer integer)
    {
        if (integer != null)
        {
            locationX = integer;
            return;
        } else
        {
            locationX = Integer.valueOf(-1);
            return;
        }
    }

    public void setLocationY(Integer integer)
    {
        if (integer != null)
        {
            locationY = integer;
            return;
        } else
        {
            locationY = Integer.valueOf(-1);
            return;
        }
    }

    public void setMeetingId(String s)
    {
        MeetingId = s;
    }

    public void setMoreAction(Boolean boolean1)
    {
        more_action = boolean1;
    }

    public void setPhone(String s)
    {
        Log.d("WAZE", (new StringBuilder("phone:")).append(s).toString());
        phone = s;
    }

    public void setSecondaryTitle(String s)
    {
        secondaryTitle = s;
    }

    public void setSpecialUrl(String s)
    {
        special_url = s;
    }

    public void setState(String s)
    {
        state = s;
    }

    public void setStreet(String s)
    {
        street = s;
    }

    public void setTitle(String s)
    {
        title = s;
    }

    public void setType(Integer integer)
    {
        type = integer;
    }

    public void setUrl(String s)
    {
        url = s;
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf("AddressItem"))).append(" T:").append(title).toString()))).append(" A:").append(address).toString()))).append(" D:").append(distance).toString()))).append(" X:").append(locationX).toString()))).append(" Y:").append(locationY).toString()))).append(" ma:").append(more_action).toString()))).append(" C:").append(category).toString()))).append(" T:").append(type).toString()))).append(" id:").append(id).toString()))).append(" I:").append(image).toString();
    }

}
