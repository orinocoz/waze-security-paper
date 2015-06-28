// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


public class SearchResultItem
{

    private String address;
    private String distance;
    private String freeText;

    SearchResultItem(String as[])
    {
        freeText = as[0];
        address = as[1];
        distance = as[2];
    }

    String getAddress()
    {
        return address;
    }

    String getDistance()
    {
        return distance;
    }

    String getFreeText()
    {
        return freeText;
    }
}
