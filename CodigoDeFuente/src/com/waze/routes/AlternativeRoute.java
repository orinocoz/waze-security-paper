// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.os.Parcel;
import android.os.Parcelable;

public class AlternativeRoute
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public AlternativeRoute createFromParcel(Parcel parcel)
        {
            return new AlternativeRoute(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public AlternativeRoute[] newArray(int i)
        {
            return new AlternativeRoute[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public boolean closure;
    public String description;
    public int distance;
    public int distanceRound;
    public int distanceTenths;
    public String distanceUnits;
    public int id;
    public boolean preferred;
    public int time;
    public boolean toll;

    public AlternativeRoute(int i, int j, int k, String s, int l, int i1, String s1, 
            boolean flag, boolean flag1)
    {
        id = i;
        distance = j;
        time = k;
        description = s;
        distanceRound = l;
        distanceTenths = i1;
        distanceUnits = s1;
        preferred = flag;
        toll = flag1;
        closure = false;
    }

    public AlternativeRoute(Parcel parcel)
    {
        boolean flag = true;
        super();
        distance = parcel.readInt();
        time = parcel.readInt();
        description = parcel.readString();
        distanceRound = parcel.readInt();
        distanceTenths = parcel.readInt();
        distanceUnits = parcel.readString();
        id = parcel.readInt();
        boolean flag1;
        boolean flag2;
        if (parcel.readInt() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        preferred = flag1;
        if (parcel.readInt() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        toll = flag2;
        if (parcel.readInt() == 0)
        {
            flag = false;
        }
        closure = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j = 1;
        parcel.writeInt(distance);
        parcel.writeInt(time);
        parcel.writeString(description);
        parcel.writeInt(distanceRound);
        parcel.writeInt(distanceTenths);
        parcel.writeString(distanceUnits);
        parcel.writeInt(id);
        int k;
        int l;
        if (preferred)
        {
            k = j;
        } else
        {
            k = 0;
        }
        parcel.writeInt(k);
        if (toll)
        {
            l = j;
        } else
        {
            l = 0;
        }
        parcel.writeInt(l);
        if (!closure)
        {
            j = 0;
        }
        parcel.writeInt(j);
    }

}
