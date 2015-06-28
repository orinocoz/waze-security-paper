// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.isWaypoint
    implements Runnable
{

    final NativeManager this$0;
    private final String val$dist;
    private final String val$eta;
    private final boolean val$isWaypoint;
    private final String val$time;

    public void run()
    {
        Log.d("WAZE", (new StringBuilder("in updateNavResultPopup eta=")).append(val$eta).append(" time=").append(val$time).append(" dist=").append(val$dist).toString());
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            LayoutManager layoutmanager = mainactivity.getLayoutMgr();
            if (layoutmanager != null)
            {
                layoutmanager.updateNavResultPopup(val$eta, val$time, val$dist, val$isWaypoint);
            }
            return;
        } else
        {
            Log.e("WAZE", "Cannot Call updateNavResultPopup. Main activity is not available");
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$eta = s;
        val$time = s1;
        val$dist = s2;
        val$isWaypoint = Z.this;
        super();
    }
}
