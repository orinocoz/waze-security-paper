// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.test:
//            BgTest

public final class TestMain
{

    public TestMain()
    {
    }

    public static void scheduleStart()
    {
        NativeManager.registerOnAppStartedEvent(new RunnableExecutor(null) {

            public void event()
            {
                if (!AppService.isFirstRun())
                {
                    TestMain.start();
                }
            }

        });
    }

    public static void start()
    {
        BgTest.startPeriodicTest();
    }
}
