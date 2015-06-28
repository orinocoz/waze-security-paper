// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.NativeManager;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.phone:
//            PhoneLoginActivity

class this._cls1
    implements com.waze.social.facebook.orizeCompletedListener
{

    final ASE_WAIT___ this$1;

    public void onAuthorizeCompleted(boolean flag, int i)
    {
        if (i == 3)
        {
            NativeManager.getInstance().SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "FAILURE", true);
        }
        if (i == 0)
        {
            NativeManager nativemanager = NativeManager.getInstance();
            nativemanager.SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "SUCCESS", true);
            nativemanager.SetSocialIsFirstTime(false);
            nativemanager.OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/phone/PhoneLoginActivity$1

/* anonymous class */
    class PhoneLoginActivity._cls1
        implements android.view.View.OnClickListener
    {

        final PhoneLoginActivity this$0;

        public void onClick(View view)
        {
            NativeManager.getInstance().SignUplogAnalytics("FB_SIGN_IN", null, null, true);
            if (PhoneLoginActivity.access$0())
            {
                FacebookWrapper.getInstance().authorize(PhoneLoginActivity.this, null, false);
                return;
            } else
            {
                PhoneLoginActivity._cls1._cls1 _lcls1 = new PhoneLoginActivity._cls1._cls1();
                FacebookWrapper.getInstance().SignIn(PhoneLoginActivity.this, _lcls1, true);
                return;
            }
        }

            
            {
                this$0 = PhoneLoginActivity.this;
                super();
            }
    }

}
