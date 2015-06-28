// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.nWatchingNumber
    implements Runnable
{

    final NativeManager this$0;
    private final int val$nWatchingNumber;

    public void run()
    {
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().getLayoutMgr().setMenuButtonType(2, val$nWatchingNumber);
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$nWatchingNumber = I.this;
        super();
    }
}
