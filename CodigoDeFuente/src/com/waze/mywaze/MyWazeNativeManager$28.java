// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.profile.RegisterActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.bIsSuccess
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final boolean val$bIsSuccess;

    public void run()
    {
        if (MyWazeNativeManager.access$43(MyWazeNativeManager.this) != null && MyWazeNativeManager.access$43(MyWazeNativeManager.this).isRunning())
        {
            MyWazeNativeManager.access$43(MyWazeNativeManager.this).OnResponse(val$bIsSuccess);
        } else
        {
            if (AppService.getActiveActivity() instanceof tUserUpdateResult)
            {
                ((tUserUpdateResult)AppService.getActiveActivity()).SetUserUpdateResult(val$bIsSuccess);
            }
            if (AppService.getMainActivity() != null)
            {
                AppService.getMainActivity().SetUserUpdateResult(val$bIsSuccess);
                return;
            }
        }
    }

    tUserUpdateResult()
    {
        this$0 = final_mywazenativemanager;
        val$bIsSuccess = Z.this;
        super();
    }
}
