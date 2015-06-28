// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.widget.LinearLayout;
import com.waze.NativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneLoginActivity, PhoneNumberSignInActivity

class LoginCallback extends com.waze.mywaze.oginCallback
{

    final PhoneLoginActivity this$0;

    public void onLogin(boolean flag)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        String s;
        if (flag)
        {
            s = "SUCCESS";
        } else
        {
            s = "FAILURE";
        }
        nativemanager.SignUplogAnalytics("LOGIN_WAZER_RESPONSE", "VAUE", s, true);
        if (flag)
        {
            NativeManager.getInstance().SetSocialIsFirstTime(false);
            if (!PhoneLoginActivity.access$3(PhoneLoginActivity.this))
            {
                Intent intent = new Intent(PhoneLoginActivity.this, com/waze/phone/PhoneNumberSignInActivity);
                intent.putExtra("type", 1);
                intent.putExtra("report_start", false);
                intent.putExtra("fon_shon_rea_son", "UPGRADE");
                startActivityForResult(intent, 5000);
            } else
            {
                PhoneNumberSignInActivity.bIsUpgrade = true;
            }
            setResult(-1);
            finish();
            return;
        } else
        {
            PhoneLoginActivity.access$4(PhoneLoginActivity.this).setEnabled(true);
            return;
        }
    }

    vity()
    {
        this$0 = PhoneLoginActivity.this;
        super();
    }
}
