// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            LayoutManager layoutmanager = mainactivity.getLayoutMgr();
            if (layoutmanager == null)
            {
                return;
            } else
            {
                layoutmanager.trafficBarClose();
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot show Traffic Bar. Main activity is not available");
            return;
        }
    }

    ()
    {
        this$0 = NativeManager.this;
        super();
    }
}
