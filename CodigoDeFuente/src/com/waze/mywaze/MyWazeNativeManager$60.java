// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.AppService;
import com.waze.MainActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager, MyWazeData

class val.last_seen
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$last_seen;
    private final int val$points;
    private final int val$rank;
    private final String val$userName;

    public void run()
    {
        MyWazeNativeManager.access$66(MyWazeNativeManager.this).mPts = val$points;
        MyWazeNativeManager.access$66(MyWazeNativeManager.this).mRank = val$rank;
        MyWazeNativeManager.access$66(MyWazeNativeManager.this).mUserName = val$userName;
        MyWazeNativeManager.access$66(MyWazeNativeManager.this).mLastSeen = val$last_seen;
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().openConflictingActivity();
        }
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$points = i;
        val$rank = j;
        val$userName = s;
        val$last_seen = String.this;
        super();
    }
}
