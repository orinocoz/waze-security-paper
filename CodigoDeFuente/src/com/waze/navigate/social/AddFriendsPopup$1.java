// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.widget.LinearLayout;
import com.waze.NativeManager;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsPopup, AddFriendsData

class this._cls0
    implements com.waze.navigate.er.AddFriendsListener
{

    final AddFriendsPopup this$0;

    public void onComplete(AddFriendsData addfriendsdata)
    {
        int i;
        i = 0;
        AddFriendsPopup.access$0(AddFriendsPopup.this, addfriendsdata);
        if (AddFriendsPopup.access$1(AddFriendsPopup.this) != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        com.waze.user.FriendUserData afrienduserdata[] = AddFriendsPopup.access$1(AddFriendsPopup.this).SuggestionFriends;
        int j = 0;
        if (afrienduserdata != null)
        {
            j = 0 + AddFriendsPopup.access$1(AddFriendsPopup.this).SuggestionFriends.length;
        }
        if (AddFriendsPopup.access$1(AddFriendsPopup.this).WaitingForApprovalFriends != null)
        {
            j += AddFriendsPopup.access$1(AddFriendsPopup.this).WaitingForApprovalFriends.length;
        }
        NativeManager.getInstance().SignUplogAnalytics("ADD_FRIENDS_POPUP_SHOWN", "VAUE", (new StringBuilder()).append(j).toString(), true);
        AddFriendsPopup.access$2(AddFriendsPopup.this).removeAllViews();
        com.waze.user.FriendUserData afrienduserdata1[] = AddFriendsPopup.access$1(AddFriendsPopup.this).SuggestionFriends;
        int k = afrienduserdata1.length;
        int l = 0;
        do
        {
label0:
            {
                if (l < k)
                {
                    break label0;
                }
                com.waze.user.FriendUserData afrienduserdata2[] = AddFriendsPopup.access$1(AddFriendsPopup.this).WaitingForApprovalFriends;
                int i1 = afrienduserdata2.length;
                while (i < i1) 
                {
                    com.waze.user.FriendUserData frienduserdata1 = afrienduserdata2[i];
                    AddFriendsPopup.access$3(AddFriendsPopup.this, frienduserdata1);
                    i++;
                }
            }
            if (true)
            {
                continue;
            }
            com.waze.user.FriendUserData frienduserdata = afrienduserdata1[l];
            AddFriendsPopup.access$3(AddFriendsPopup.this, frienduserdata);
            l++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    riendsListener()
    {
        this$0 = AddFriendsPopup.this;
        super();
    }
}
