// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import com.waze.widget.routing.RouteScoreType;
import com.waze.widget.routing.RoutingResponse;

public class StatusData
{

    public static final int STATUS_DATA_OK = 4;
    public static final int STATUS_DRIVE_REQUEST = 128;
    public static final int STATUS_ERR_GENERAL = 0x10000;
    public static final int STATUS_ERR_NO_DESTINATION = 0x80000;
    public static final int STATUS_ERR_NO_LOCATION = 0x40000;
    public static final int STATUS_ERR_NO_LOGIN = 0x20000;
    public static final int STATUS_ERR_REFRESH_TIMEOUT = 0x200000;
    public static final int STATUS_ERR_ROUTE_SERVER = 0x100000;
    public static final int STATUS_MASK_ERROR = 0x10000;
    public static final int STATUS_NEW_WIDGET = 8;
    public static final int STATUS_REFRESH_REQUEST = 32;
    public static final int STATUS_REFRESH_REQUEST_INFO = 64;
    public static final int STATUS_REFRESH_TEST_TRUE = 16;
    public static final int STATUS_SUCCESS = 1;
    public static final int STATUS_UNDEFINED = 2;
    private String mDestDescription;
    private RoutingResponse mRoutingResponse;
    private RouteScoreType mScore;
    private long mTimeStamp;
    private int mTimeToDest;

    public StatusData()
    {
        mDestDescription = "Home";
        mTimeToDest = 0;
        mTimeStamp = 0L;
        mScore = RouteScoreType.NONE;
    }

    public StatusData(StatusData statusdata)
    {
        mDestDescription = "Home";
        mTimeToDest = 0;
        mTimeStamp = 0L;
        mScore = RouteScoreType.NONE;
        copy(statusdata);
    }

    public StatusData(String s, int i, long l)
    {
        mDestDescription = "Home";
        mTimeToDest = 0;
        mTimeStamp = 0L;
        mScore = RouteScoreType.NONE;
        mTimeStamp = l;
        mDestDescription = s;
        mTimeToDest = i;
    }

    public StatusData(String s, int i, RouteScoreType routescoretype, RoutingResponse routingresponse)
    {
        mDestDescription = "Home";
        mTimeToDest = 0;
        mTimeStamp = 0L;
        mScore = RouteScoreType.NONE;
        mTimeStamp = System.currentTimeMillis();
        mDestDescription = s;
        mTimeToDest = i;
        mScore = routescoretype;
        mRoutingResponse = routingresponse;
    }

    public void copy(StatusData statusdata)
    {
        if (statusdata != null)
        {
            mDestDescription = statusdata.mDestDescription;
            mTimeToDest = statusdata.mTimeToDest;
            mTimeStamp = statusdata.mTimeStamp;
            mScore = statusdata.mScore;
            mRoutingResponse = statusdata.mRoutingResponse;
        }
    }

    public String destination()
    {
        return mDestDescription;
    }

    public RoutingResponse getRoutingRespnse()
    {
        return mRoutingResponse;
    }

    public RouteScoreType score()
    {
        return mScore;
    }

    public void setTimeStamp(long l)
    {
        mTimeStamp = l;
    }

    public long timeStamp()
    {
        return mTimeStamp;
    }

    public int timeToDest()
    {
        return mTimeToDest;
    }
}
