// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.Activity;
import android.util.Log;
import com.waze.AppService;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase, ShutdownManager

public final class ActivityLifetimeHandler
{

    static Boolean bIsStopForeground = Boolean.valueOf(false);
    private static volatile boolean mIsInBackground = false;

    public ActivityLifetimeHandler()
    {
    }

    public static void ShutDownWaze()
    {
        AppService.getInstance().stopForeground();
        NativeLocListener.getInstance().stop();
    }

    public static void StartWaze()
    {
        AppService.getInstance().startForeground();
        NativeLocListener.getInstance().start();
        NativeManager.getInstance().RealtimeLogin();
    }

    public static void StopWaze()
    {
        NativeManager.getInstance().SetShutDownActive(true);
        NativeManager.getInstance().RealtimeLogout();
    }

    public static void destroyHandler()
    {
        if (ActivityBase.getCount() == 0)
        {
            ShutdownManager.onActivitiesDestroy();
        }
    }

    public static boolean isInBackground()
    {
        return mIsInBackground;
    }

    public static void screenOffHandler()
    {
        NativeManager nativemanager = AppService.getNativeManager();
        if (nativemanager != null)
        {
            nativemanager.logAnalyticsFlush();
        }
    }

    public static void startHandler(Activity activity)
    {
        RunnableExecutor runnableexecutor = new RunnableExecutor(activity) {

            public void event()
            {
                NativeManager nativemanager = AppService.getNativeManager();
                nativemanager.SaveSystemSettings();
                nativemanager.RestoreAppSettings();
                nativemanager.onAppForeground();
                if (NativeManager.getInstance().IsShutdownActive())
                {
                    ActivityLifetimeHandler.StartWaze();
                    NativeManager.getInstance().SetShutDownActive(false);
                }
            }

        };
        mIsInBackground = false;
        if (AppService.IsAppRunning())
        {
            runnableexecutor.event();
            return;
        } else
        {
            NativeManager.registerOnAppStartedEvent(runnableexecutor);
            return;
        }
    }

    public static void stopHandler()
    {
        NativeManager nativemanager;
        try
        {
            mIsInBackground = true;
            nativemanager = AppService.getNativeManager();
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.e("WAZE", "ActivityLifetimeHandler stopHandler error", illegalargumentexception);
            return;
        }
        if (nativemanager == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        nativemanager.RestoreSystemSettings();
        nativemanager.onAppBackground();
        if (NativeManager.getInstance().IsShutdownActive())
        {
            StopWaze();
        }
    }

}
