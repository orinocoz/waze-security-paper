// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.AppService;
import com.waze.profile.ProfileLauncher;

// Referenced classes of package com.waze.mywaze:
//            NicknameActivity

class .LoginCallback extends .LoginCallback
{

    final NicknameActivity this$0;

    public void onLogin(boolean flag)
    {
        if (!flag)
        {
            ProfileLauncher.launch(AppService.getAppContext(), true);
        }
    }

    .LoginCallback()
    {
        this$0 = NicknameActivity.this;
        super();
    }
}
