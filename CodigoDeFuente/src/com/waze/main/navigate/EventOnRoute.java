// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;


public class EventOnRoute
{

    public int alertId;
    public int alertRouteId;
    public int alertSubtype;
    public int alertType;
    public int end;
    public int percentage;
    public int severity;
    public int start;

    public EventOnRoute()
    {
    }

    public EventOnRoute(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1)
    {
        alertId = i;
        alertRouteId = j;
        alertType = k;
        alertSubtype = l;
        severity = i1;
        start = j1;
        end = k1;
        percentage = l1;
    }
}
