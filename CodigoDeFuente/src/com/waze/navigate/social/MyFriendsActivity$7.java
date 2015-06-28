// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity, AddFriendsData

class this._cls0
    implements com.waze.navigate..AddFriendsListener
{

    final MyFriendsActivity this$0;

    public void onComplete(AddFriendsData addfriendsdata)
    {
        mAddFriendsData = addfriendsdata;
        if (mAddFriendsData.WaitingForApprovalFriends.length <= 0) goto _L2; else goto _L1
_L1:
        com.waze.user.FriendUserData afrienduserdata[];
        int i;
        int j;
        MyFriendsActivity.access$10(MyFriendsActivity.this).add(MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_WAITING_FOR_MY_APPROVAL));
        afrienduserdata = mAddFriendsData.WaitingForApprovalFriends;
        i = afrienduserdata.length;
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        MyFriendsActivity.access$19(MyFriendsActivity.this);
        return;
_L3:
        com.waze.user.FriendUserData frienduserdata = afrienduserdata[j];
        MyFriendsActivity.access$10(MyFriendsActivity.this).add(frienduserdata);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    endsListener()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
