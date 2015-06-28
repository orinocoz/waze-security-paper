// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.app.Activity;
import android.content.Intent;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.PhoneNumberSignInActivity;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

class val.Type
    implements Runnable
{

    final InstallNativeManager this$0;
    private final int val$Type;
    private final boolean val$bIsCleanInstall;
    private final boolean val$bIsMinimal;

    public void run()
    {
        boolean flag = true;
        InstallNativeManager.access$3(val$bIsCleanInstall);
        InstallNativeManager.access$4(val$bIsMinimal);
        MainActivity.bReportMapShownAnalytics = flag;
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        if (val$Type == 0 || val$Type == flag)
        {
            if (InstallNativeManager.access$5())
            {
                if (AppService.getMainActivity() != null)
                {
                    AppService.getMainActivity().openMeetYourWazer();
                    return;
                } else
                {
                    MainActivity.bToOpenMeetYourWazer = flag;
                    return;
                }
            }
            if (AppService.getMainActivity() != null && AppService.getMainActivity().getLayoutMgr().isSplashVisible())
            {
                AppService.getMainActivity().getLayoutMgr().cancelSplash();
            }
            NativeManager.getInstance().registerOnUserNameResultListerner(AppService.getMainActivity());
            NativeManager.getInstance().SuggestUserNameInit();
            NativeManager.getInstance().SuggestUserNameRequest(null, null, MyWazeNativeManager.getInstance().getNameNTV());
            return;
        }
        Intent intent = new Intent(activitybase, com/waze/phone/PhoneNumberSignInActivity);
        if (val$bIsCleanInstall)
        {
            flag = false;
        }
        intent.putExtra("type", flag);
        String s;
        if (val$bIsCleanInstall)
        {
            s = "SIGNUP";
        } else
        {
            s = "UPGRADE";
        }
        intent.putExtra("fon_shon_rea_son", s);
        activitybase.startActivityForResult(intent, 5000);
    }

    ()
    {
        this$0 = final_installnativemanager;
        val$bIsCleanInstall = flag;
        val$bIsMinimal = flag1;
        val$Type = I.this;
        super();
    }
}
