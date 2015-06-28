// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity, PhoneLoginActivity

class this._cls0
    implements android.view._cls1
{

    final PhoneNumberSignInActivity this$0;

    public void onClick(View view)
    {
        PhoneNumberSignInActivity.access$0(PhoneNumberSignInActivity.this).SignUplogAnalytics("ALREADY_WAZER_CLICKED", null, null, true);
        Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/PhoneLoginActivity);
        startActivityForResult(intent, 100);
    }

    ()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
