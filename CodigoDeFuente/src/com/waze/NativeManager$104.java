// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, AppService, MapViewWrapper, MainActivity

class val.y
    implements Runnable
{

    final NativeManager this$0;
    private final int val$x;
    private final int val$y;

    public void run()
    {
        MapViewWrapper mapviewwrapper = AppService.getActiveMapViewWrapper();
        if (mapviewwrapper != null)
        {
            mapviewwrapper.updateDetailsPopup(val$x, val$y);
            return;
        } else
        {
            MainActivity.registerOnResumeEvent(this);
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$x = i;
        val$y = I.this;
        super();
    }
}
