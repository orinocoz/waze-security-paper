// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.AppService;
import com.waze.profile.ProfileLauncher;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        ProfileLauncher.launch(AppService.getAppContext(), true);
    }

    ()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
