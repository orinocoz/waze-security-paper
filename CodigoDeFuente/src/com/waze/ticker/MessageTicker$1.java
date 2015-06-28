// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ticker;

import com.waze.AppService;
import com.waze.NativeManager;

// Referenced classes of package com.waze.ticker:
//            MessageTicker

class this._cls0
    implements Runnable
{

    final MessageTicker this$0;

    public void run()
    {
        AppService.getNativeManager().TickerClosedNTV();
    }

    ()
    {
        this$0 = MessageTicker.this;
        super();
    }
}
