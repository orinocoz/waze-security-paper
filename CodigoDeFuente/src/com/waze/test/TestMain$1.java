// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import com.waze.AppService;
import com.waze.ifs.async.RunnableExecutor;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.test:
//            TestMain

class utor extends RunnableExecutor
{

    public void event()
    {
        if (!AppService.isFirstRun())
        {
            TestMain.start();
        }
    }

    utor(Executor executor)
    {
        super(executor);
    }
}
