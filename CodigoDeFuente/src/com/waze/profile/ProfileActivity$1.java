// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import com.waze.AppService;

// Referenced classes of package com.waze.profile:
//            ProfileActivity, ProfileLauncher

class .LoginCallback extends com.waze.mywaze.r.LoginCallback
{

    final ProfileActivity this$0;

    public void onLogin(boolean flag)
    {
        if (!flag)
        {
            ProfileLauncher.launch(AppService.getAppContext(), true);
        }
    }

    .LoginCallback()
    {
        this$0 = ProfileActivity.this;
        super();
    }
}
