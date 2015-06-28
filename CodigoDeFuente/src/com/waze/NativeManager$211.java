// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.MyProfileActivity;
import com.waze.profile.TempUserProfileActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        if (MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            Intent intent = new Intent(AppService.getActiveActivity(), com/waze/profile/TempUserProfileActivity);
            AppService.getActiveActivity().startActivityForResult(intent, 0);
            return;
        } else
        {
            Intent intent1 = new Intent(AppService.getActiveActivity(), com/waze/profile/MyProfileActivity);
            AppService.getActiveActivity().startActivityForResult(intent1, 0);
            return;
        }
    }

    ctivity()
    {
        this$0 = NativeManager.this;
        super();
    }
}
