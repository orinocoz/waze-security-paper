// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;


public class MajorEventOnRoute
{

    public int alertRouteId;
    public int alertType;
    public String description;
    public String dueto;
    public String duration;
    public String reported;
    public String thanked;
    public String time;

    public MajorEventOnRoute()
    {
    }

    public MajorEventOnRoute(int i, int j, String s, String s1, String s2, String s3, String s4, 
            String s5)
    {
        alertRouteId = i;
        alertType = j;
        description = s;
        time = s1;
        dueto = s2;
        duration = s3;
        thanked = s4;
        reported = s5;
    }
}
