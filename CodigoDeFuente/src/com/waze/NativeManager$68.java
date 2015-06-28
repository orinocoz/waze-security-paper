// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.phone.PhoneNumberSignInActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.Image
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Image;
    private final String val$fullName;
    private final String val$phone;

    public void run()
    {
        if (AppService.getActiveActivity() instanceof PhoneNumberSignInActivity)
        {
            ((PhoneNumberSignInActivity)AppService.getActiveActivity()).InviteDataCallback(val$fullName, val$phone, val$Image);
        }
    }

    SignInActivity()
    {
        this$0 = final_nativemanager;
        val$fullName = s;
        val$phone = s1;
        val$Image = String.this;
        super();
    }
}
