// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            MainActivity, AppService, MapViewWrapper

class this._cls0
    implements Runnable
{

    final MainActivity this$0;

    public void run()
    {
        if (AppService.getMainView() != null)
        {
            AppService.getMainView().onPause();
        }
    }

    ()
    {
        this$0 = MainActivity.this;
        super();
    }
}
