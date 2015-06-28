// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.IntentFilter;
import com.waze.ifs.async.RunnableExecutor;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            AppService, ConnEventReceiver

class xecutor extends RunnableExecutor
{

    final AppService this$0;

    public void event()
    {
        AppService.access$0(new ConnEventReceiver());
        AppService.getAppContext().registerReceiver(AppService.access$1(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    xecutor(Executor executor)
    {
        this$0 = AppService.this;
        super(executor);
    }
}
