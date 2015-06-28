// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.phone.PhoneAlreadyAWazerActivity;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneVerifyYourNumbersActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.Res
    implements Runnable
{

    final NativeManager this$0;
    private final int val$Res;

    public void run()
    {
        if (AppService.getActiveActivity() instanceof PhoneNumberSignInActivity)
        {
            ((PhoneNumberSignInActivity)AppService.getActiveActivity()).AuthenticateCallback(val$Res);
        } else
        {
            if (AppService.getActiveActivity() instanceof PhoneVerifyYourNumbersActivity)
            {
                ((PhoneVerifyYourNumbersActivity)AppService.getActiveActivity()).AuthenticateCallback(val$Res);
                return;
            }
            if (AppService.getActiveActivity() instanceof PhoneAlreadyAWazerActivity)
            {
                ((PhoneAlreadyAWazerActivity)AppService.getActiveActivity()).AuthenticateCallback(val$Res);
                return;
            }
        }
    }

    yAWazerActivity()
    {
        this$0 = final_nativemanager;
        val$Res = I.this;
        super();
    }
}
