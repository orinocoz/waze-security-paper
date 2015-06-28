// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


public class Product
{

    public String currency;
    public String formats[];
    public String icon;
    public String labels[];
    public int lastUpdated;
    public String name;
    public float prices[];
    public String providerId;
    public String updatedBy;
    public String venueId;

    public Product(String s, String s1, String s2, String s3, String as[], String as1[], float af[], 
            int i, String s4, String s5)
    {
        providerId = s;
        venueId = s1;
        name = s2;
        icon = s3;
        labels = as;
        formats = as1;
        prices = af;
        lastUpdated = i;
        updatedBy = s4;
        currency = s5;
    }
}
