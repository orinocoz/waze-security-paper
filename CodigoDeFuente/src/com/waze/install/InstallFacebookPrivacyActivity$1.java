// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.profile.WelcomeActivity;
import com.waze.profile.WelcomeDoneActivity;

// Referenced classes of package com.waze.install:
//            InstallFacebookPrivacyActivity, InstallNativeManager

class this._cls0
    implements android.view.y._cls1
{

    final InstallFacebookPrivacyActivity this$0;

    public void onClick(View view)
    {
        if (InstallFacebookPrivacyActivity.access$0(InstallFacebookPrivacyActivity.this))
        {
            Intent intent = new Intent(InstallFacebookPrivacyActivity.this, com/waze/profile/WelcomeActivity);
            startActivityForResult(intent, 0);
        } else
        {
            Intent intent1 = new Intent(InstallFacebookPrivacyActivity.this, com/waze/profile/WelcomeDoneActivity);
            startActivityForResult(intent1, 0);
        }
        if (InstallNativeManager.IsCleanInstallation() || InstallNativeManager.IsMinimalInstallation())
        {
            NativeManager.getInstance().SignUplogAnalytics("YOUR_WAZER_NEXT", null, null, true);
        } else
        {
            NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE_YOUR_WAZER_NEXT", null, null, true);
        }
        setResult(-1);
        finish();
    }

    ()
    {
        this$0 = InstallFacebookPrivacyActivity.this;
        super();
    }
}
