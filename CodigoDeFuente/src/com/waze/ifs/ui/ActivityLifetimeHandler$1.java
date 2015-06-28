// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.Activity;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityLifetimeHandler

class  extends RunnableExecutor
{

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

    (Activity activity)
    {
        super(activity);
    }
}
