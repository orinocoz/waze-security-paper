// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.waze.AppService;
import com.waze.ifs.async.RunnableCallback;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.install:
//            InstallNativeManager, LocationFailedActivity

class t> extends RunnableCallback
{

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("openSelectCountryMenu callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("openSelectCountryMenu event running in thread ")).append(Thread.currentThread().getId()).toString());
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        activitybase.startActivityForResult(new Intent(activitybase, com/waze/install/LocationFailedActivity), 1);
    }

    (Executor executor)
    {
        super(executor);
    }
}
