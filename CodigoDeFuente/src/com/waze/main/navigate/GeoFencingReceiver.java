// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.waze.GeoFencingService;
import com.waze.utils.OfflineStats;

public class GeoFencingReceiver extends BroadcastReceiver
{

    public static boolean IsEntered = false;

    public GeoFencingReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if (Boolean.valueOf(intent.getBooleanExtra("entering", false)).booleanValue())
        {
            if (!IsEntered)
            {
                IsEntered = true;
                OfflineStats.SendAdsStats(context, "ADS_ENTERED_RADIUS");
                GeoFencingService.start(context);
            }
            return;
        } else
        {
            OfflineStats.SendAdsStats(context, "ADS_EXITED_RADIUS");
            return;
        }
    }

}
