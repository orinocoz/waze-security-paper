// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class val.callback
    implements Runnable
{

    final NativeManager this$0;
    private final long val$callback;
    private final int val$type;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            mainactivity.openEncouragementScreen(val$type, val$callback);
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$type = i;
        val$callback = J.this;
        super();
    }
}
