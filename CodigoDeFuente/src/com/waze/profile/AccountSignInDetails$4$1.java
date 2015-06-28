// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.profile:
//            AccountSignInDetails

class this._cls1
    implements com.waze.social.facebook.izeCompletedListener
{

    final WAIT___ this$1;

    public void onAuthorizeCompleted(boolean flag, int i)
    {
        if (i == 3)
        {
            AccountSignInDetails.access$3(false);
            NativeManager.getInstance().SignUplogAnalytics("IMPORT_FB_STATUS", "VAUE", "FAILURE", true);
        }
        if (i == 0)
        {
            NativeManager.getInstance().SignUplogAnalytics("IMPORT_FB_STATUS", "VAUE", "SUCCESS", true);
            NativeManager nativemanager = NativeManager.getInstance();
            NativeManager.getInstance().OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/profile/AccountSignInDetails$4

/* anonymous class */
    class AccountSignInDetails._cls4
        implements android.view.View.OnClickListener
    {

        final AccountSignInDetails this$0;

        public void onClick(View view)
        {
            AccountSignInDetails.access$3(true);
            NativeManager.getInstance().SignUplogAnalytics("IMPORT_FB", null, null, true);
            AccountSignInDetails._cls4._cls1 _lcls1 = new AccountSignInDetails._cls4._cls1();
            if (PhoneNumberSignInActivity.bIsUpgrade)
            {
                FacebookWrapper.getInstance().authorize(AppService.getMainActivity(), _lcls1, true);
                return;
            } else
            {
                FacebookWrapper.getInstance().SignIn(AppService.getMainActivity(), _lcls1, true);
                return;
            }
        }

            
            {
                this$0 = AccountSignInDetails.this;
                super();
            }
    }

}
