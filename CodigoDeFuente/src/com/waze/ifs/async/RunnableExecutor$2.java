// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.view.View;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.ifs.async:
//            RunnableExecutor

class val.executor
    implements Executor
{

    final RunnableExecutor this$0;
    private final View val$executor;

    public void execute(Runnable runnable)
    {
        val$executor.post(runnable);
    }

    ()
    {
        this$0 = final_runnableexecutor;
        val$executor = View.this;
        super();
    }
}
