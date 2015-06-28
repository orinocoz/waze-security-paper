// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, MapView

class val.view
    implements Runnable
{

    final NativeManager this$0;
    private final MapView val$view;

    public void run()
    {
        val$view.ShowSoftInput();
    }

    ()
    {
        this$0 = final_nativemanager;
        val$view = MapView.this;
        super();
    }
}
