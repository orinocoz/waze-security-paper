// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.pioneer.PioneerManager;

// Referenced classes of package com.waze:
//            NativeManager, NativeLocListener, Logger

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
label0:
        {
            if (!NativeManager.access$96(NativeManager.this).gpsProviderEnabled() && !PioneerManager.isExtLocationActive())
            {
                Logger.ww("GPS is disabled! Warning is shown to user");
                if (android.os.INT < 19)
                {
                    break label0;
                }
                NativeManager.access$97(NativeManager.this, 1);
            }
            return;
        }
        NativeManager.access$97(NativeManager.this, 0);
    }

    ager()
    {
        this$0 = NativeManager.this;
        super();
    }
}
