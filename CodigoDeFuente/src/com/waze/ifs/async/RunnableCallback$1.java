// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.app.Activity;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.ifs.async:
//            RunnableCallback

class val.callbackExecutor
    implements Executor
{

    final RunnableCallback this$0;
    private final Activity val$callbackExecutor;

    public void execute(Runnable runnable)
    {
        val$callbackExecutor.runOnUiThread(runnable);
    }

    ()
    {
        this$0 = final_runnablecallback;
        val$callbackExecutor = Activity.this;
        super();
    }
}
