// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.app.Activity;
import android.content.Intent;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.install.GuidedTourActivity;
import com.waze.install.InstallNativeManager;
import com.waze.profile.SignInActivity;
import com.waze.profile.WelcomeActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    private boolean shouldOpenWelcomeActivity(Activity activity)
    {
        boolean flag1;
        if (activity instanceof GuidedTourActivity)
        {
            boolean flag2 = InstallNativeManager.IsMinimalInstallation();
            flag1 = false;
            if (flag2)
            {
                flag1 = true;
            }
        } else
        {
            boolean flag = activity instanceof SignInActivity;
            flag1 = false;
            if (flag)
            {
                return true;
            }
        }
        return flag1;
    }

    private void writeSkipSignInLogs(Activity activity)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        if (activity instanceof GuidedTourActivity)
        {
            if (InstallNativeManager.IsMinimalInstallation())
            {
                nativemanager.SignUplogAnalytics("START_DRIVING", null, null, true);
            }
        } else
        if (activity instanceof SignInActivity)
        {
            nativemanager.SignUplogAnalytics("NEW_EXISTING_SKIP", null, null, true);
            return;
        }
    }

    public void run()
    {
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase != null)
        {
            writeSkipSignInLogs(activitybase);
            if (shouldOpenWelcomeActivity(activitybase))
            {
                activitybase.startActivityForResult(new Intent(activitybase, com/waze/profile/WelcomeActivity), 0);
                activitybase.setResult(-1);
                activitybase.finish();
            }
        }
    }

    ()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
