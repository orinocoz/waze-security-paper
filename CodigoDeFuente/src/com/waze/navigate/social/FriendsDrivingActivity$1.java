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
//            FriendsDrivingActivity, MyShareDriveActivity

class this._cls0
    implements android.view.gActivity._cls1
{

    final FriendsDrivingActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("ON_THE_WAY_BANNER_CLICK", null, null);
        if (bIsFollowed && mNumber > 0)
        {
            String s = NativeManager.getInstance().getCurMeetingNTV();
            Intent intent = new Intent(FriendsDrivingActivity.this, com/waze/navigate/social/MyShareDriveActivity);
            intent.putExtra("meeting", s);
            startActivityForResult(intent, 1);
            return;
        } else
        {
            ShareUtility.shareLocationOrDrive(FriendsDrivingActivity.this, 16);
            return;
        }
    }

    ()
    {
        this$0 = FriendsDrivingActivity.this;
        super();
    }
}
