// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.location.Location;

// Referenced classes of package com.waze.widget:
//            DestinationType

public class Destination
{

    private Location mDestLocation;
    private String mDestName;
    private DestinationType mDestType;

    public Destination(DestinationType destinationtype, String s, Location location)
    {
        mDestType = destinationtype;
        mDestName = s;
        mDestLocation = location;
    }

    public Location getLocation()
    {
        return mDestLocation;
    }

    public String getName()
    {
        return mDestName;
    }

    public DestinationType getType()
    {
        return mDestType;
    }

    public void setLocation(Location location)
    {
        mDestLocation = location;
    }

    public void setName(String s)
    {
        mDestName = s;
    }

    public void setType(DestinationType destinationtype)
    {
        mDestType = destinationtype;
    }
}
