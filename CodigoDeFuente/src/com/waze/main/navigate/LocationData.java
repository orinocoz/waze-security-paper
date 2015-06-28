// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import java.io.Serializable;

public class LocationData
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    public String destinationName;
    public String downloadUrl;
    public String emailLocationUrlPrefix;
    public String locationEta;
    public String locationHash;
    public String locationName;
    public int locationX;
    public int locationY;
    public String mCity;
    public String mStreet;
    public String mVenueId;
    public String smsLocationUrlPrefix;

    public LocationData()
    {
        mCity = null;
        mStreet = null;
    }

    public LocationData(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            int i, int j, String s7, String s8, String s9)
    {
        mCity = null;
        mStreet = null;
        locationName = s;
        destinationName = s1;
        locationEta = s2;
        smsLocationUrlPrefix = s3;
        emailLocationUrlPrefix = s4;
        downloadUrl = s5;
        locationHash = s6;
        locationX = i;
        locationY = j;
        mCity = s7;
        mStreet = s8;
        mVenueId = s9;
    }

    public LocationData(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7)
    {
        mCity = null;
        mStreet = null;
        locationName = s;
        destinationName = s1;
        locationEta = s2;
        smsLocationUrlPrefix = s3;
        emailLocationUrlPrefix = s4;
        downloadUrl = s5;
        locationHash = s6;
        mVenueId = s7;
    }
}
