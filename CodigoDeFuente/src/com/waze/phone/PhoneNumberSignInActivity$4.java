// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity, ChooseCountryPhoneActivity

class this._cls0
    implements android.view._cls4
{

    final PhoneNumberSignInActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/ChooseCountryPhoneActivity);
        startActivityForResult(intent, 1000);
    }

    ()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
