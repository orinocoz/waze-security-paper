// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.install.GuidedTourActivity;
import com.waze.phone.PhoneAlreadyAWazerActivity;
import com.waze.phone.PhoneLoginActivity;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneVerifyYourAccountFailureActivity;
import com.waze.phone.PhoneVerifyYourNumbersActivity;
import com.waze.profile.MinimalSignInActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        if (AppService.getActiveActivity() instanceof GuidedTourActivity)
        {
            ((GuidedTourActivity)AppService.getActiveActivity()).onFacebookTokenSet();
        } else
        {
            if (AppService.getActiveActivity() instanceof PhoneNumberSignInActivity)
            {
                ((PhoneNumberSignInActivity)AppService.getActiveActivity()).onPinTokenSet();
                return;
            }
            if (AppService.getActiveActivity() instanceof PhoneAlreadyAWazerActivity)
            {
                ((PhoneAlreadyAWazerActivity)AppService.getActiveActivity()).onPinTokenSet();
                return;
            }
            if (AppService.getActiveActivity() instanceof PhoneVerifyYourAccountFailureActivity)
            {
                ((PhoneVerifyYourAccountFailureActivity)AppService.getActiveActivity()).onPinTokenSet();
                return;
            }
            if (AppService.getActiveActivity() instanceof PhoneNumberSignInActivity)
            {
                ((PhoneNumberSignInActivity)AppService.getActiveActivity()).onPinTokenSet();
                return;
            }
            if (AppService.getActiveActivity() instanceof MainActivity)
            {
                ((MainActivity)AppService.getActiveActivity()).onFacebookTokenSet();
                return;
            }
            if (AppService.getActiveActivity() instanceof PhoneLoginActivity)
            {
                ((PhoneLoginActivity)AppService.getActiveActivity()).onFacebookTokenSet();
                return;
            }
            if (AppService.getActiveActivity() instanceof PhoneVerifyYourNumbersActivity)
            {
                ((PhoneVerifyYourNumbersActivity)AppService.getActiveActivity()).onPinTokenSet();
                return;
            }
            if (AppService.getActiveActivity() instanceof MinimalSignInActivity)
            {
                ((MinimalSignInActivity)AppService.getActiveActivity()).onFacebookTokenSet();
                return;
            }
        }
    }

    tivity()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
