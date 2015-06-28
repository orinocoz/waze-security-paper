// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.view.View;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity, PhoneKeepInMindActivity

class this._cls0
    implements android.view._cls2
{

    final PhoneNumberSignInActivity this$0;

    public void onClick(View view)
    {
        PhoneNumberSignInActivity.access$0(PhoneNumberSignInActivity.this).SignUplogAnalytics("SKIP", null, null, true);
        if (!PhoneNumberSignInActivity.bIsUpgrade)
        {
            Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/PhoneKeepInMindActivity);
            startActivityForResult(intent, 1);
            return;
        } else
        {
            MyWazeNativeManager.getInstance().ShowUserScreenIfNeeded();
            NativeManager.getInstance().signup_finished();
            MainActivity.bSignupSkipped = true;
            setResult(-1);
            finish();
            return;
        }
    }

    ()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
