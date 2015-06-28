// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import com.waze.AppService;
import com.waze.NativeManager;

// Referenced classes of package com.waze.view.popups:
//            TrafficDetectionPopUp

class this._cls0
    implements Runnable
{

    final TrafficDetectionPopUp this$0;

    public void run()
    {
        AppService.getNativeManager().RealtimeReportTrafficNTV(0);
    }

    ()
    {
        this$0 = TrafficDetectionPopUp.this;
        super();
    }
}
