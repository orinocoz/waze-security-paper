// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.phone:
//            PhoneVerifyYourAccountFailureActivity, PhoneLoginActivity

class this._cls0
    implements android.view._cls2
{

    final PhoneVerifyYourAccountFailureActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(PhoneVerifyYourAccountFailureActivity.this, com/waze/phone/PhoneLoginActivity);
        intent.putExtra("verifyMode", 1);
        startActivityForResult(intent, 4321);
    }

    ()
    {
        this$0 = PhoneVerifyYourAccountFailureActivity.this;
        super();
    }
}
