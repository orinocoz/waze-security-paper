// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.nType
    implements Runnable
{

    final NativeManager this$0;
    private final String val$icon;
    private final String val$msg;
    private final int val$nType;

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
                layoutmanager.showNotificationMessage(val$msg, val$icon, val$nType);
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot show ShowNotificationMessage. Main activity is not available");
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$msg = s;
        val$icon = s1;
        val$nType = I.this;
        super();
    }
}
