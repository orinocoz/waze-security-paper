// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;


public class NavigationItem
{

    public String address;
    public String distance;
    public String icon;
    public int instruction;
    public String label;

    public NavigationItem()
    {
    }

    public NavigationItem(String s, String s1, String s2, String s3, int i)
    {
        label = s;
        distance = s1;
        address = s2;
        icon = s3;
        instruction = i;
    }
}
