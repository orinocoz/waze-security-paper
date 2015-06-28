// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneKeepInMindActivity, PhoneNumberSignInActivity

class this._cls0
    implements android.view._cls1
{

    final PhoneKeepInMindActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("SKIP_ANYWAY", null, null, true);
        MainActivity.bReportMapShownAnalytics = true;
        MainActivity.bSignupSkipped = true;
        if (!PhoneNumberSignInActivity.bIsUpgrade)
        {
            MyWazeNativeManager.getInstance().skipSignup();
        }
        NativeManager.getInstance().signup_finished();
        setResult(-1);
        finish();
    }

    ()
    {
        this$0 = PhoneKeepInMindActivity.this;
        super();
    }
}
