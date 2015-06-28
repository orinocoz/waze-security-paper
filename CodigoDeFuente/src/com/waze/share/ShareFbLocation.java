// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;


public class ShareFbLocation
    implements Comparable
{

    public String address;
    public String description;
    public float distance;
    public String id;
    public double latitude;
    public double longitude;
    public String name;

    public ShareFbLocation()
    {
    }

    public int compareTo(ShareFbLocation sharefblocation)
    {
        return (new Float(distance)).compareTo(new Float(sharefblocation.distance));
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((ShareFbLocation)obj);
    }
}
