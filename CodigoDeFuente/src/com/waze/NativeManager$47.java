// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.nPendingFriends
    implements Runnable
{

    final NativeManager this$0;
    private final int val$nFriendsOnline;
    private final int val$nPendingFriends;

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
                layoutmanager.RefreshBar(val$nFriendsOnline, val$nPendingFriends);
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
        val$nFriendsOnline = i;
        val$nPendingFriends = I.this;
        super();
    }
}