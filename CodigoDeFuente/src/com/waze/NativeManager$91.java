// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.Index
    implements Runnable
{

    final NativeManager this$0;
    private final int val$Index;
    private final String val$mMood;
    private final int val$nType;
    private final String val$sUserImageUrl;

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
                layoutmanager.openAlertTicker(val$nType, val$mMood, val$sUserImageUrl, val$Index);
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot open ping Popup. Main activity is not available");
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$nType = i;
        val$mMood = s;
        val$sUserImageUrl = s1;
        val$Index = I.this;
        super();
    }
}
