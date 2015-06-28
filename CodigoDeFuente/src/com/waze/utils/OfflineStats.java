// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.Context;
import com.waze.widget.rt.RealTimeManager;

public class OfflineStats
{

    public OfflineStats()
    {
    }

    public static void SendAdsStats(Context context, String s)
    {
        RealTimeManager.getInstance().SendAdsStat(context, s);
    }

    public static void SendStats(Context context, String s, String as[])
    {
        RealTimeManager.getInstance().SendStat(context, s, as);
    }
}
