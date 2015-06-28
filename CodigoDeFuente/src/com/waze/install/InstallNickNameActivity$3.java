// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import com.waze.AppService;
import com.waze.profile.ProfileLauncher;

// Referenced classes of package com.waze.install:
//            InstallNickNameActivity

class llback extends com.waze.mywaze.allback
{

    final InstallNickNameActivity this$0;

    public void onLogin(boolean flag)
    {
        if (!flag)
        {
            ProfileLauncher.launch(AppService.getAppContext(), true);
        }
    }

    llback()
    {
        this$0 = InstallNickNameActivity.this;
        super();
    }
}
