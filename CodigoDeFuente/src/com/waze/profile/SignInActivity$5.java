// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.widget.TextView;
import com.waze.install.InstallNickNameActivity;

// Referenced classes of package com.waze.profile:
//            SignInActivity

class r.LoginCallback extends com.waze.mywaze.er.LoginCallback
{

    final SignInActivity this$0;

    public void onLogin(boolean flag)
    {
        if (flag)
        {
            Intent intent = new Intent(SignInActivity.this, com/waze/install/InstallNickNameActivity);
            intent.putExtra("IsInstallation", true);
            startActivityForResult(intent, 0);
            return;
        } else
        {
            SignInActivity.access$4(SignInActivity.this).setEnabled(true);
            return;
        }
    }

    tivity()
    {
        this$0 = SignInActivity.this;
        super();
    }
}
