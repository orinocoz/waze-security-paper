// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import com.waze.AppService;

// Referenced classes of package com.waze.profile:
//            LoginActivity, ProfileLauncher

class  extends com.waze.mywaze.ger.LoginCallback
{

    final LoginActivity this$0;

    public void onLogin(boolean flag)
    {
        if (!flag)
        {
            ProfileLauncher.launch(AppService.getAppContext(), true);
        }
    }

    er.LoginCallback()
    {
        this$0 = LoginActivity.this;
        super();
    }
}
