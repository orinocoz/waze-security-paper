// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.os.Parcel;
import android.os.Parcelable;
import com.waze.NativeManager;
import com.waze.settings.SettingsNativeManager;
import com.waze.strings.DisplayStrings;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;

public class OpeningHours
    implements Parcelable, Serializable
{
    class DayStringStatus
    {

        boolean isFirst;
        String prevDayStr;
        boolean prevOpen;
        final OpeningHours this$0;
        String toStr;
        boolean wroteTo;

        DayStringStatus()
        {
            this$0 = OpeningHours.this;
            super();
            prevOpen = false;
            wroteTo = false;
            isFirst = true;
            toStr = null;
            prevDayStr = null;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public OpeningHours createFromParcel(Parcel parcel)
        {
            return new OpeningHours(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public OpeningHours[] newArray(int i)
        {
            return new OpeningHours[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public static final boolean FIRST_DAY_IS_SUNDAY = false;
    private static int MAX_DAYS = 0;
    private static String friday;
    private static String monday;
    private static String saturday;
    private static final long serialVersionUID = 1L;
    private static String sunday = null;
    private static String thursday;
    private static String tuesday;
    private static String wednesday;
    public int days[];
    public String from;
    public String to;

    public OpeningHours()
    {
        days = new int[MAX_DAYS];
    }

    public OpeningHours(Parcel parcel)
    {
        days = new int[MAX_DAYS];
        parcel.readIntArray(days);
        from = parcel.readString();
        to = parcel.readString();
    }

    public OpeningHours(OpeningHours openinghours)
    {
        days = Arrays.copyOf(openinghours.days, MAX_DAYS);
        from = new String(openinghours.from);
        to = new String(openinghours.to);
    }

    private void addDay(StringBuilder stringbuilder, boolean flag, String s, DayStringStatus daystringstatus, String s1)
    {
        if (flag)
        {
            if (daystringstatus.prevOpen)
            {
                if (!daystringstatus.wroteTo)
                {
                    stringbuilder.append(daystringstatus.toStr);
                    daystringstatus.wroteTo = true;
                }
            } else
            {
                if (!daystringstatus.isFirst)
                {
                    stringbuilder.append(s1);
                }
                stringbuilder.append(s);
                daystringstatus.prevOpen = true;
                daystringstatus.isFirst = false;
            }
        } else
        {
            if (daystringstatus.wroteTo)
            {
                stringbuilder.append(daystringstatus.prevDayStr);
            }
            daystringstatus.wroteTo = false;
            daystringstatus.prevOpen = false;
        }
        daystringstatus.prevDayStr = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getDaysString()
    {
        return getDaysString(", ");
    }

    public String getDaysString(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        NativeManager nativemanager = NativeManager.getInstance();
        DayStringStatus daystringstatus = new DayStringStatus();
        daystringstatus.toStr = (new StringBuilder(" ")).append(nativemanager.getLanguageString(DisplayStrings.DS_TO)).append(" ").toString();
        if (sunday == null)
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE", new Locale((new SettingsNativeManager()).getLanguagesLocaleNTV()));
            Calendar calendar = Calendar.getInstance();
            calendar.set(7, 1);
            sunday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 2);
            monday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 3);
            tuesday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 4);
            wednesday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 5);
            thursday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 6);
            friday = simpledateformat.format(calendar.getTime());
            calendar.set(7, 7);
            saturday = simpledateformat.format(calendar.getTime());
        }
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        if (FIRST_DAY_IS_SUNDAY)
        {
            boolean flag7;
            if (days[0] != 0)
            {
                flag7 = true;
            } else
            {
                flag7 = false;
            }
            addDay(stringbuilder, flag7, sunday, daystringstatus, s);
        }
        if (days[1] != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        addDay(stringbuilder, flag, monday, daystringstatus, s);
        if (days[2] != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        addDay(stringbuilder, flag1, tuesday, daystringstatus, s);
        if (days[3] != 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        addDay(stringbuilder, flag2, wednesday, daystringstatus, s);
        if (days[4] != 0)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        addDay(stringbuilder, flag3, thursday, daystringstatus, s);
        if (days[5] != 0)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        addDay(stringbuilder, flag4, friday, daystringstatus, s);
        if (days[6] != 0)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        addDay(stringbuilder, flag5, saturday, daystringstatus, s);
        if (!FIRST_DAY_IS_SUNDAY)
        {
            boolean flag6;
            if (days[0] != 0)
            {
                flag6 = true;
            } else
            {
                flag6 = false;
            }
            addDay(stringbuilder, flag6, sunday, daystringstatus, s);
        }
        addDay(stringbuilder, false, null, daystringstatus, s);
        return stringbuilder.toString();
    }

    public String getHoursString()
    {
        if ((from == null || from.isEmpty()) && (to == null || to.isEmpty()))
        {
            return NativeManager.getInstance().getLanguageString(DisplayStrings.DS_24_HOURS);
        }
        if (from == null || from.isEmpty())
        {
            from = "0:00";
        }
        if (to == null || to.isEmpty())
        {
            to = "24:00";
        }
        if (from.equals(to))
        {
            return NativeManager.getInstance().getLanguageString(DisplayStrings.DS_24_HOURS);
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = from;
            aobj[1] = to;
            return String.format("%s - %s", aobj);
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeIntArray(days);
        parcel.writeString(from);
        parcel.writeString(to);
    }

    static 
    {
        boolean flag = true;
        if (Calendar.getInstance().getFirstDayOfWeek() != flag)
        {
            flag = false;
        }
        FIRST_DAY_IS_SUNDAY = flag;
        MAX_DAYS = 7;
    }
}
