// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


public class NearbyStation
{

    public String address;
    public String icon;
    public String result;
    public String value;

    public NearbyStation(String s, String s1, String s2, String s3)
    {
        result = s;
        value = s1;
        icon = s2;
        address = s3;
    }
}
