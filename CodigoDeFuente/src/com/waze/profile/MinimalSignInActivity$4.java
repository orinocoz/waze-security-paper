// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.install.InstallNickNameActivity;

// Referenced classes of package com.waze.profile:
//            MinimalSignInActivity

class Callback extends com.waze.mywaze.nCallback
{

    final MinimalSignInActivity this$0;

    public void onLogin(boolean flag)
    {
        if (flag)
        {
            NativeManager.getInstance().SignUplogAnalytics("WAZE_SIGN_IN", null, null, false);
            Intent intent = new Intent(MinimalSignInActivity.this, com/waze/install/InstallNickNameActivity);
            startActivityForResult(intent, 0);
            return;
        } else
        {
            MinimalSignInActivity.access$4(MinimalSignInActivity.this).setEnabled(true);
            return;
        }
    }

    Callback()
    {
        this$0 = MinimalSignInActivity.this;
        super();
    }
}
