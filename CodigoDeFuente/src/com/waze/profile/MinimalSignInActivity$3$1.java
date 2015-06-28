// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.NativeManager;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.profile:
//            MinimalSignInActivity

class this._cls1
    implements com.waze.social.facebook.zeCompletedListener
{

    final AIT___ this$1;

    public void onAuthorizeCompleted(boolean flag, int i)
    {
        if (i == 3)
        {
            NativeManager.getInstance().SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "FAILURE", true);
            NativeManager.getInstance().SignUplogAnalytics("FACEBOOK_DECLINE", null, null, true);
        }
        if (i == 0)
        {
            NativeManager nativemanager = NativeManager.getInstance();
            nativemanager.SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "SUCCESS", true);
            nativemanager.OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/profile/MinimalSignInActivity$3

/* anonymous class */
    class MinimalSignInActivity._cls3
        implements android.view.View.OnClickListener
    {

        final MinimalSignInActivity this$0;

        public void onClick(View view)
        {
            MinimalSignInActivity.access$2(true);
            NativeManager.getInstance().SignUplogAnalytics("FB_SIGN_IN", null, null, true);
            if (MinimalSignInActivity.access$3())
            {
                FacebookWrapper.getInstance().authorize(MinimalSignInActivity.this, null, false);
                return;
            } else
            {
                MinimalSignInActivity._cls3._cls1 _lcls1 = new MinimalSignInActivity._cls3._cls1();
                FacebookWrapper.getInstance().SignIn(MinimalSignInActivity.this, _lcls1, true);
                return;
            }
        }

            
            {
                this$0 = MinimalSignInActivity.this;
                super();
            }
    }

}
