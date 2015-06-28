// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.view.View;
import com.waze.install.InstallFacebookPrivacyActivity;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.profile:
//            WelcomeSocialActivity, WelcomeDoneActivity

class this._cls0
    implements android.view.y._cls4
{

    final WelcomeSocialActivity this$0;

    public void onClick(View view)
    {
        if (MyWazeNativeManager.getInstance().getFacebookLoggedInNTV())
        {
            Intent intent = new Intent(WelcomeSocialActivity.this, com/waze/install/InstallFacebookPrivacyActivity);
            startActivityForResult(intent, 0);
        } else
        {
            Intent intent1 = new Intent(WelcomeSocialActivity.this, com/waze/profile/WelcomeDoneActivity);
            startActivityForResult(intent1, 0);
        }
        setResult(-1);
        finish();
    }

    tivity()
    {
        this$0 = WelcomeSocialActivity.this;
        super();
    }
}
