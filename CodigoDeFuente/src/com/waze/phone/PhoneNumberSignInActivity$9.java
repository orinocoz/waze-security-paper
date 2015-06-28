// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import com.waze.NativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity, PhoneAlreadyAWazerActivity

class this._cls0
    implements Runnable
{

    final PhoneNumberSignInActivity this$0;

    public void run()
    {
        PhoneNumberSignInActivity.access$0(PhoneNumberSignInActivity.this).CloseProgressPopup();
        Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/PhoneAlreadyAWazerActivity);
        startActivityForResult(intent, 3333);
    }

    ()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
