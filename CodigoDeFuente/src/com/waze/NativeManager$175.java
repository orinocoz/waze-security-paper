// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import java.util.TimerTask;

// Referenced classes of package com.waze:
//            NativeManager

class val.memoryLog extends TimerTask
{

    final NativeManager this$0;
    private final Runnable val$memoryLog;

    public void run()
    {
        PostRunnable(val$memoryLog);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$memoryLog = Runnable.this;
        super();
    }
}
