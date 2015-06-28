// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.navigate.DriveToNativeManager;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            EditFriendsActivity, FriendsListData

class val.driveToNativeManager
    implements com.waze.navigate.riendsListListener
{

    final EditFriendsActivity this$0;
    private final DriveToNativeManager val$driveToNativeManager;

    public void onComplete(FriendsListData friendslistdata)
    {
        EditFriendsActivity.access$6(EditFriendsActivity.this, new ArrayList());
        if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
        com.waze.user.FriendUserData afrienduserdata[];
        int i;
        int j;
        EditFriendsActivity.access$7(EditFriendsActivity.this, friendslistdata.friends.length);
        afrienduserdata = friendslistdata.friends;
        i = afrienduserdata.length;
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        val$driveToNativeManager.getRemovedFriendsData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final EditFriendsActivity._cls3 this$1;

            public void onComplete(FriendsListData friendslistdata1)
            {
                if (friendslistdata1 == null || friendslistdata1.friends.length <= 0) goto _L2; else goto _L1
_L1:
                com.waze.user.FriendUserData afrienduserdata1[];
                int k;
                int l;
                EditFriendsActivity.access$8(this$0, friendslistdata1.friends.length);
                afrienduserdata1 = friendslistdata1.friends;
                k = afrienduserdata1.length;
                l = 0;
_L5:
                if (l < k) goto _L3; else goto _L2
_L2:
                EditFriendsActivity.access$9(this$0);
                return;
_L3:
                com.waze.user.FriendUserData frienduserdata1 = afrienduserdata1[l];
                EditFriendsActivity.access$2(this$0).add(frienduserdata1);
                l++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$1 = EditFriendsActivity._cls3.this;
                super();
            }
        });
        return;
_L3:
        com.waze.user.FriendUserData frienduserdata = afrienduserdata[j];
        EditFriendsActivity.access$2(EditFriendsActivity.this).add(frienduserdata);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }


    _cls1.this._cls1()
    {
        this$0 = final_editfriendsactivity;
        val$driveToNativeManager = DriveToNativeManager.this;
        super();
    }
}
