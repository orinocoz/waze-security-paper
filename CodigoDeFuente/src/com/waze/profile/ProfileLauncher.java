// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.waze.AppService;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.profile:
//            LoginActivity, ProfileActivity

public class ProfileLauncher
    implements com.waze.mywaze.MyWazeNativeManager.ProfileCallback
{

    private boolean afterFailure;
    private Context context;

    private ProfileLauncher(Context context1, boolean flag)
    {
        context = context1;
        afterFailure = flag;
    }

    public static void launch(Context context1, boolean flag)
    {
        ProfileLauncher profilelauncher = new ProfileLauncher(context1, flag);
        MyWazeNativeManager.getInstance().getProfileSettings(profilelauncher);
    }

    public void onProfile(com.waze.mywaze.MyWazeNativeManager.ProfileSettings profilesettings)
    {
        Intent intent;
        com.waze.ifs.ui.ActivityBase activitybase;
        if (profilesettings.randomUser)
        {
            if (afterFailure)
            {
                intent = new Intent(context, com/waze/profile/LoginActivity);
            } else
            {
                intent = new Intent(context, com/waze/profile/LoginActivity);
            }
        } else
        {
            intent = new Intent(context, com/waze/profile/ProfileActivity);
            intent.putExtra("com.waze.mywaze.username", profilesettings.userName);
            intent.putExtra("com.waze.mywaze.password", profilesettings.password);
        }
        intent.putExtra("com.waze.mywaze.nickname", profilesettings.nickName);
        intent.putExtra("com.waze.mywaze.pingable", profilesettings.allowPings);
        activitybase = AppService.getActiveActivity();
        if (activitybase != null)
        {
            activitybase.startActivityForResult(intent, 0);
        }
    }
}
