// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.pioneer;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.pioneer:
//            PioneerManager

class r extends RunnableExecutor
{

    final PioneerManager this$0;
    private final Runnable val$event;

    public void event()
    {
        NativeManager.Post(val$event);
    }

    r(Runnable runnable)
    {
        this$0 = final_pioneermanager;
        val$event = runnable;
        super(Executor.this);
    }
}
