// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.view.popups:
//            FriendsOnlinePopUp

class val.friendLayoutInListLayout
    implements android.view.PopUp._cls5
{

    final FriendsOnlinePopUp this$0;
    private final FriendUserData val$friend;
    private final FrameLayout val$friendLayoutInListLayout;

    public void onClick(View view)
    {
        Analytics.log("BEEP_BEEP_CLICK_FROM", "VAUE", "FRIENDS_ONLINE");
        NativeManager.getInstance().SendBeepBeep(val$friend.mLongitude, val$friend.mLatitude, val$friend.mAzimuth, val$friend.mID, null);
        ((ImageView)val$friendLayoutInListLayout.findViewById(0x7f0902f2)).setImageResource(0x7f02003f);
    }

    ()
    {
        this$0 = final_friendsonlinepopup;
        val$friend = frienduserdata;
        val$friendLayoutInListLayout = FrameLayout.this;
        super();
    }
}
