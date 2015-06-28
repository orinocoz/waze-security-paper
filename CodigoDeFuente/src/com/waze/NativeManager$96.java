// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.isClosureEnabled
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$isClosureEnabled;
    private final boolean val$isFoursquareEnabled;
    private final boolean val$isRandomUser;

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
                layoutmanager.showTrafficDetectionPopup(val$isRandomUser, val$isFoursquareEnabled, val$isClosureEnabled);
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot open Traffic Detetcion Popup. Main activity is not available");
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$isRandomUser = flag;
        val$isFoursquareEnabled = flag1;
        val$isClosureEnabled = Z.this;
        super();
    }
}
