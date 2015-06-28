// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import com.waze.AppService;
import com.waze.profile.SignInActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        if (!SignInActivity.isActive())
        {
            AppService.showActivity(new Intent(AppService.getAppContext(), com/waze/profile/SignInActivity));
        }
    }

    ()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
