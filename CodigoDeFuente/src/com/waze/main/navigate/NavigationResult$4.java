// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import com.waze.AppService;
import com.waze.NativeManager;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements Runnable
{

    final NavigationResult this$0;

    public void run()
    {
        AppService.getNativeManager().stopTripServerNavigationNTV();
    }

    ()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
