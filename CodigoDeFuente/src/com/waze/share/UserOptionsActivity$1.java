// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.strings.DisplayStrings;
import com.waze.user.UserData;

// Referenced classes of package com.waze.share:
//            UserOptionsActivity

class this._cls0
    implements android.view._cls1
{

    final UserOptionsActivity this$0;

    public void onClick(View view)
    {
        if (!AppService.isNetworkAvailable())
        {
            UserOptionsActivity.access$0(UserOptionsActivity.this, DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER);
            return;
        } else
        {
            Analytics.log("BEEP_BEEP_CLICK_FROM", "VAUE", "USER_POPUP");
            NativeManager.getInstance().SendBeepBeep(UserOptionsActivity.access$1(UserOptionsActivity.this).mLongitude, UserOptionsActivity.access$1(UserOptionsActivity.this).mLatitude, UserOptionsActivity.access$1(UserOptionsActivity.this).mAzimuth, UserOptionsActivity.access$1(UserOptionsActivity.this).mID, new com.waze.NativeManager.IResultCode() {

                final UserOptionsActivity._cls1 this$1;

                public void onResult(int i)
                {
                    if (i >= 0)
                    {
                        setResult(-1);
                        finish();
                    }
                }

            
            {
                this$1 = UserOptionsActivity._cls1.this;
                super();
            }
            });
            return;
        }
    }


    _cls1.this._cls1()
    {
        this$0 = UserOptionsActivity.this;
        super();
    }
}
