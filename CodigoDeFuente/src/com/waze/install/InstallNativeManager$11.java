// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.util.Log;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.ifs.async.RunnableCallback;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

class > extends RunnableCallback
{

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("welcomeGuidedTour callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("welcomeGuidedTour event running in thread ")).append(Thread.currentThread().getId()).toString());
        AppService.getMainActivity().cancelSplash();
    }

    (Executor executor)
    {
        super(executor);
    }
}
