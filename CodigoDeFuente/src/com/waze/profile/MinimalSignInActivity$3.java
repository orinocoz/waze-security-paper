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

class this._cls0
    implements android.view.y._cls3
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
            com.waze.social.facebook.rizeCompletedListener rizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                final MinimalSignInActivity._cls3 this$1;

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

            
            {
                this$1 = MinimalSignInActivity._cls3.this;
                super();
            }
            };
            FacebookWrapper.getInstance().SignIn(MinimalSignInActivity.this, rizecompletedlistener, true);
            return;
        }
    }

    _cls1.this._cls1()
    {
        this$0 = MinimalSignInActivity.this;
        super();
    }
}
