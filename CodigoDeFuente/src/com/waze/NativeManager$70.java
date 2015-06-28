// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.Action
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Action;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            mainactivity.getLayoutMgr().SetPoiAction(val$Action);
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$Action = String.this;
        super();
    }
}
