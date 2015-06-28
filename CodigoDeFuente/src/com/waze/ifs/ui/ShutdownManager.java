// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.util.Log;
import com.waze.AppService;

public class ShutdownManager
{

    private static boolean mActivitiesDestroyed = false;
    private static boolean mInProcess = false;
    private static boolean mServiceDestroyed = false;

    public ShutdownManager()
    {
    }

    private static void checkAndExit()
    {
        if (mInProcess && mServiceDestroyed && mActivitiesDestroyed)
        {
            Log.d("WAZE", "Shutdown manager - all the constraints are satisfied. Aborting VM");
            AppService.Post(new Runnable() {

                public void run()
                {
                    System.runFinalization();
                    System.exit(0);
                }

            }, 5L);
        }
    }

    public static void onActivitiesDestroy()
    {
        Log.d("WAZE", "Shutdown manager - all the activities are destroyed");
        if (mInProcess)
        {
            mActivitiesDestroyed = true;
        }
        checkAndExit();
    }

    public static void onServiceDestroy()
    {
        Log.d("WAZE", "Shutdown manager - the service is destroyed");
        if (mInProcess)
        {
            mServiceDestroyed = true;
        }
        checkAndExit();
    }

    public static void start()
    {
        Log.d("WAZE", "Shutdown manager - in process now");
        mInProcess = true;
        checkAndExit();
    }

}
