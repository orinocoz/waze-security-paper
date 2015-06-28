// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity

class this._cls0
    implements android.view._cls3
{

    final PhoneNumberSignInActivity this$0;

    public void onClick(View view)
    {
        PhoneNumberSignInActivity.access$0(PhoneNumberSignInActivity.this).SignUplogAnalytics("LEARN_MORE", null, null, true);
        AppService.OpenBrowser(MyWazeNativeManager.getInstance().getLearnMorePrivacyUrlNTV());
    }

    ()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
