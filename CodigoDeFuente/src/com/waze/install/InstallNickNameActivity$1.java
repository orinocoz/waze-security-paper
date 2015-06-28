// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.profile.WelcomeDoneActivity;

// Referenced classes of package com.waze.install:
//            InstallNickNameActivity

class this._cls0
    implements android.view.y._cls1
{

    final InstallNickNameActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(InstallNickNameActivity.this, com/waze/profile/WelcomeDoneActivity);
        startActivityForResult(intent, 0);
        NativeManager.getInstance().SignUplogAnalytics("NICKNAME_NEXT", null, null, false);
        setResult(3);
        finish();
    }

    ()
    {
        this$0 = InstallNickNameActivity.this;
        super();
    }
}
