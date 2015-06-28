// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsActivity

class val.friend
    implements android.view.sActivity._cls7
{

    final AddFriendsActivity this$0;
    private final FriendUserData val$friend;
    private final View val$friendLayoutInListLayout;

    public void onClick(View view)
    {
        AddFriendsActivity.access$2(AddFriendsActivity.this, val$friendLayoutInListLayout);
        int ai[] = new int[1];
        ai[0] = val$friend.getID();
        String s = AddFriendsActivity.access$0(AddFriendsActivity.this).getLanguageString(DisplayStrings.DS_PS_ADDED);
        Object aobj[] = new Object[1];
        aobj[0] = val$friend.getName();
        String s1 = String.format(s, aobj);
        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
    }

    ()
    {
        this$0 = final_addfriendsactivity;
        val$friendLayoutInListLayout = view;
        val$friend = FriendUserData.this;
        super();
    }
}
