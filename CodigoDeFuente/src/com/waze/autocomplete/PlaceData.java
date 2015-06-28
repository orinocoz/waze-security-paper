// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;


public class PlaceData
{

    public String mAdsUrl;
    public boolean mIsAds;
    public int mLocX;
    public int mLocY;
    public int mLocalIndex;
    public String mReference;
    public String mResponse;
    public String mSecondaryTitle;
    public String mTitle;
    public String mVenueId;
    public boolean mWasAdReported;
    public int mfeature;

    public PlaceData()
    {
        mLocX = -1;
        mLocY = -1;
        mVenueId = null;
        mReference = null;
        mLocalIndex = -1;
        mAdsUrl = null;
        mTitle = null;
        mSecondaryTitle = null;
        mIsAds = false;
        mWasAdReported = false;
        mfeature = 0;
        mResponse = null;
    }

    public PlaceData(String s, String s1, String s2, String s3, String s4)
    {
        mLocX = -1;
        mLocY = -1;
        mVenueId = s;
        mTitle = s1;
        mSecondaryTitle = (new StringBuilder(String.valueOf(s2))).append(" ").append(s3).toString();
        mReference = null;
        mIsAds = true;
        mWasAdReported = false;
        mLocalIndex = -1;
        mAdsUrl = s4;
        mfeature = 0;
        mResponse = null;
    }

    public boolean hasLocation()
    {
        return mLocX > 0 && mLocY > 0;
    }
}
