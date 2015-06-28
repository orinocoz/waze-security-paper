// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;
import com.waze.AppService;
import com.waze.messages.UserMessage;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.view.popups:
//            FriendsOnlinePopUp

class val.friend
    implements android.view.PopUp._cls4
{

    final FriendsOnlinePopUp this$0;
    private final FriendUserData val$friend;

    public void onClick(View view)
    {
        UserMessage.startPrivate(AppService.getMainActivity(), val$friend);
    }

    ()
    {
        this$0 = final_friendsonlinepopup;
        val$friend = FriendUserData.this;
        super();
    }
}
