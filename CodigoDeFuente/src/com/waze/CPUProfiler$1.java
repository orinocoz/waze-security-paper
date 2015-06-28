// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            CPUProfiler, Logger

class 
    implements Runnable
{

    final CPUProfiler this$0;
    private final String val$resStr;

    public void run()
    {
        Logger.w(val$resStr);
    }

    ()
    {
        this$0 = final_cpuprofiler;
        val$resStr = String.this;
        super();
    }
}
