// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.view.View;
import com.waze.analytics.Analytics;
import com.waze.navigate.social.ShareDrivingFriendsActivity;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class this._cls0
    implements android.view._cls1
{

    final UserDetailsActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("FRIEND_PROFILE_SHARING_DRIVE_WITH_ME_CLICKED", null, null);
        Intent intent = new Intent(UserDetailsActivity.this, com/waze/navigate/social/ShareDrivingFriendsActivity);
        intent.putExtra("meeting", ((FriendUserData)UserDetailsActivity.access$0(UserDetailsActivity.this)).mMeetingIdSharedWithMe);
        startActivityForResult(intent, 1003);
    }

    FriendsActivity()
    {
        this$0 = UserDetailsActivity.this;
        super();
    }
}
