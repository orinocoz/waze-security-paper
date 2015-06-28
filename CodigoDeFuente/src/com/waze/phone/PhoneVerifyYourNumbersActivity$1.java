// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.phone:
//            PhoneVerifyYourNumbersActivity

class this._cls0
    implements android.view._cls1
{

    final PhoneVerifyYourNumbersActivity this$0;

    public void onClick(View view)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        nativemanager.SignUplogAnalytics("PHONE_CODE_CONTINUE", "VAUE", (new StringBuilder()).append(PhoneVerifyYourNumbersActivity.access$0(PhoneVerifyYourNumbersActivity.this)).toString(), true);
        nativemanager.OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        nativemanager.AuthPin(PhoneVerifyYourNumbersActivity.access$1(PhoneVerifyYourNumbersActivity.this));
    }

    ()
    {
        this$0 = PhoneVerifyYourNumbersActivity.this;
        super();
    }
}
