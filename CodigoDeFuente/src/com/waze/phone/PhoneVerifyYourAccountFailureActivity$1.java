// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.MainActivity;
import com.waze.NativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneVerifyYourAccountFailureActivity

class this._cls0
    implements android.view._cls1
{

    final PhoneVerifyYourAccountFailureActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("CREATE_NEW_ACCOUNT", null, null, true);
        MainActivity.bToOpenAccountPopup = true;
        setResult(-1);
        finish();
    }

    ()
    {
        this$0 = PhoneVerifyYourAccountFailureActivity.this;
        super();
    }
}
