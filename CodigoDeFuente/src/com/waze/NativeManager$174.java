// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Debug;

// Referenced classes of package com.waze:
//            NativeManager, Logger

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        Logger.ww(new String((new StringBuilder("WAZE MEMORY PROFILER. Global heap used [Kb]: ")).append(Debug.getGlobalAllocSize() / 1000).append(" Native heap. Used [Kb]: ").append(Debug.getNativeHeapAllocatedSize() / 1000L).append(". Free [Kb]: ").append(Debug.getNativeHeapFreeSize() / 1000L).append(". Total [Kb]: ").append(Debug.getNativeHeapSize() / 1000L).append(". External [Kb]: ").append(Debug.getThreadExternalAllocSize() / 1000).toString()));
    }

    ()
    {
        this$0 = NativeManager.this;
        super();
    }
}
