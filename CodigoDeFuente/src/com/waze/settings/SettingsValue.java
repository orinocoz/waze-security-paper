// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Comparator;

public class SettingsValue
    implements Comparable, Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public SettingsValue createFromParcel(Parcel parcel)
        {
            return new SettingsValue(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public SettingsValue[] newArray(int i)
        {
            return new SettingsValue[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public static Comparator comparator = new Comparator() {

        public int compare(SettingsValue settingsvalue, SettingsValue settingsvalue1)
        {
            return settingsvalue.display.toUpperCase().compareTo(settingsvalue1.display.toUpperCase());
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((SettingsValue)obj, (SettingsValue)obj1);
        }

    };
    public String aliases[];
    public String display;
    public String display2;
    public Drawable icon;
    public String iconName;
    public boolean isHeader;
    public boolean isSelected;
    public float rank;
    public String value;

    public SettingsValue(Parcel parcel)
    {
        boolean flag = true;
        super();
        display2 = "";
        icon = null;
        rank = 0.0F;
        isHeader = false;
        iconName = null;
        display = parcel.readString();
        value = parcel.readString();
        boolean flag1;
        if (parcel.readInt() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        isSelected = flag1;
        display2 = parcel.readString();
        rank = parcel.readFloat();
        if (parcel.readInt() == 0)
        {
            flag = false;
        }
        isHeader = flag;
        iconName = parcel.readString();
    }

    public SettingsValue(String s, String s1, String s2, boolean flag)
    {
        display2 = "";
        icon = null;
        rank = 0.0F;
        isHeader = false;
        iconName = null;
        display = s1;
        value = s;
        isSelected = flag;
        display2 = s2;
    }

    public SettingsValue(String s, String s1, boolean flag)
    {
        display2 = "";
        icon = null;
        rank = 0.0F;
        isHeader = false;
        iconName = null;
        display = s1;
        value = s;
        isSelected = flag;
    }

    public int compareTo(SettingsValue settingsvalue)
    {
        return 0;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((SettingsValue)obj);
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return display;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeString(display);
        parcel.writeString(value);
        int k;
        if (isSelected)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeInt(k);
        parcel.writeString(display2);
        parcel.writeFloat(rank);
        if (!isHeader)
        {
            j = 0;
        }
        parcel.writeInt(j);
        parcel.writeString(iconName);
    }

}
