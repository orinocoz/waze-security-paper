// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.social.facebook.FacebookWrapper;

// Referenced classes of package com.waze.share:
//            EncouragementActivity

class this._cls1
    implements com.waze.social.facebook.zeCompletedListener
{

    final sh this$1;

    public void onAuthorizeCompleted(boolean flag, int i)
    {
        if (flag)
        {
            setResult(-1);
            finish();
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/share/EncouragementActivity$2

/* anonymous class */
    class EncouragementActivity._cls2
        implements com.waze.mywaze.MyWazeNativeManager.FacebookCallback
    {

        final EncouragementActivity this$0;

        public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
        {
            NativeManager.getInstance().SignUplogAnalytics("DRIVE_WITH_FRIENDS_POPUP_FB_CONNECT", null, null, false);
            Analytics.log("FACEBOOK_CONNECT_CLICK", "VAUE", "ENC_SCREEN");
            FacebookWrapper.getInstance().authorize(EncouragementActivity.this, new EncouragementActivity._cls2._cls1(), true);
        }


            
            {
                this$0 = EncouragementActivity.this;
                super();
            }
    }

}
