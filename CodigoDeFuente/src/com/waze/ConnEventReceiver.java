// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.NetworkInfo;
import android.util.Log;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze:
//            Logger, AppService, NativeManager

public final class ConnEventReceiver extends BroadcastReceiver
{

    static boolean bIsFirstTime = true;

    public ConnEventReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        boolean flag;
        Boolean boolean1;
        NetworkInfo networkinfo;
        if (intent.getBooleanExtra("noConnectivity", false))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        boolean1 = Boolean.valueOf(flag);
        networkinfo = (NetworkInfo)intent.getParcelableExtra("networkInfo");
        if (networkinfo == null)
        {
            return;
        }
        Log.i(Logger.TAG("ConnEventReceiver"), (new StringBuilder("Received event: ")).append(intent.getAction()).append(". Connectivity: ").append(boolean1).append(". Type: ").append(networkinfo.getTypeName()).append(" ( ").append(networkinfo.getType()).append(" )").append(". State: ").append(networkinfo.getState().toString()).append(". Connected: ").append(networkinfo.isConnected()).toString());
        if (AppService.IsAppRunning())
        {
            NativeManager.getInstance().SetNetInfo(networkinfo);
            if (networkinfo.isConnected())
            {
                if (networkinfo.getType() == 0)
                {
                    Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", (new StringBuilder("CELL|")).append(AppService.getAppResources().getConfiguration().mcc).append("|").append(AppService.getAppResources().getConfiguration().mnc).toString());
                } else
                if (networkinfo.getType() == 1)
                {
                    Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", "WIFI||");
                } else
                if (networkinfo.getType() == 6)
                {
                    Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", "WIMAX||");
                }
            } else
            {
                Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", "NA||");
            }
        }
        if (AppService.IsAppRunning() && !bIsFirstTime && (networkinfo.getType() == 0 || networkinfo.getType() == 1 || networkinfo.getType() == 6))
        {
            AppService.getNativeManager().ConnectivityChanged(networkinfo.isConnected(), networkinfo.getType(), networkinfo.getTypeName());
            return;
        } else
        {
            bIsFirstTime = false;
            return;
        }
    }

}
