// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class PowerManager extends BroadcastReceiver
{

    private static PowerManager mInstance = null;
    private volatile int mCurrentLevel;
    private volatile int mIsCharging;
    private volatile int mTemperature;

    private PowerManager()
    {
        mTemperature = -1;
        mCurrentLevel = -1;
        mIsCharging = -1;
    }

    static PowerManager Create(Context context)
    {
        if (mInstance == null)
        {
            mInstance = new PowerManager();
            Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            Instance().SetDataFromIntent(intent);
        }
        return mInstance;
    }

    static PowerManager Instance()
    {
        return mInstance;
    }

    private void SetDataFromIntent(Intent intent)
    {
        int l;
label0:
        {
            if (intent == null)
            {
                return;
            }
            int i = intent.getIntExtra("level", 0);
            int j = intent.getIntExtra("scale", 100);
            mCurrentLevel = (i * 100) / j;
            int k = intent.getIntExtra("status", -1);
            if (k != 2)
            {
                l = 0;
                if (k != 5)
                {
                    break label0;
                }
            }
            l = 1;
        }
        mIsCharging = l;
        mTemperature = intent.getIntExtra("temperature", 100) / 10;
    }

    public int getCurrentLevel()
    {
        return mCurrentLevel;
    }

    public int getIsCharging()
    {
        return mIsCharging;
    }

    public int getTemperature()
    {
        return mTemperature;
    }

    public void onReceive(Context context, Intent intent)
    {
        if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction()))
        {
            SetDataFromIntent(intent);
        }
    }

}
