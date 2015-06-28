// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.NotificationManager;
import android.content.Context;
import com.waze.push.Alerter;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        if (NativeManager.access$92(NativeManager.this) == null)
        {
            Context context = AppService.getAppContext();
            if (context != null)
            {
                NativeManager.access$93(NativeManager.this, (NotificationManager)context.getSystemService("notification"));
            }
        }
        if (NativeManager.access$92(NativeManager.this) != null)
        {
            Alerter.instance().clear(NativeManager.access$92(NativeManager.this));
        }
    }

    ager()
    {
        this$0 = NativeManager.this;
        super();
    }
}
