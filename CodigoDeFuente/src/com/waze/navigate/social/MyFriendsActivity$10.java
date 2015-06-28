// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.share.ShareUtility;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity, ShareHelpActivity

class this._cls0
    implements android.view.Activity._cls10
{

    final MyFriendsActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("FRIENDS_SHARE_BANNER_CLICK");
        if (MyFriendsActivity.access$2(MyFriendsActivity.this).isNavigatingNTV())
        {
            ShareUtility.OpenShareActivity(com.waze.share.e.ShareType_ShareDrive, null, null, null);
            return;
        } else
        {
            Intent intent = new Intent(MyFriendsActivity.this, com/waze/navigate/social/ShareHelpActivity);
            startActivityForResult(intent, 1);
            return;
        }
    }

    ()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
