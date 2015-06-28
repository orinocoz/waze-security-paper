// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.waze.utils.Stopwatch;

// Referenced classes of package com.waze:
//            NativeManager, SessionTrafficStats, AppService, MapView, 
//            NativeCanvas, IntentManager

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        mTrafficStats = new SessionTrafficStats(AppService.getAppContext());
        NativeManager.access$0().startDelta("START", true);
        InitNativeManager();
        Stopwatch stopwatch = Stopwatch.create("AppStartNTV");
        stopwatch.start();
        if (!MapView.isOglDataInitialized())
        {
            NativeManager.access$1(NativeManager.this);
        }
        NativeManager.access$2().CanvasConfigure();
        NativeManager.access$3(NativeManager.this, AppService.getUrl());
        IntentManager.HandleIntent(getMainActivity(), true);
        stopwatch.startDelta("AppStart TIME", false);
        NativeManager.access$4(NativeManager.this);
        NativeManager.access$5(NativeManager.this);
        NativeManager.access$0().startDelta("START ENDED", true);
        NativeManager.access$6(true);
        ApplicationInfo applicationinfo = AppService.getAppContext().getApplicationInfo();
        int i = 2 & applicationinfo.flags;
        applicationinfo.flags = i;
        if (i != 0)
        {
            NativeManager.access$7(NativeManager.this);
        }
    }

    ationInfo()
    {
        this$0 = NativeManager.this;
        super();
    }
}
