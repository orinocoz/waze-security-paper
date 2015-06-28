// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.navigate.DriveToNativeManager;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            FriendsListData, EditFriendsActivity

class this._cls1
    implements com.waze.navigate.endsListListener
{

    final is._cls0 this$1;

    public void onComplete(FriendsListData friendslistdata)
    {
        if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
        com.waze.user.FriendUserData afrienduserdata[];
        int i;
        int j;
        EditFriendsActivity.access$8(_fld0, friendslistdata.friends.length);
        afrienduserdata = friendslistdata.friends;
        i = afrienduserdata.length;
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        EditFriendsActivity.access$9(_fld0);
        return;
_L3:
        com.waze.user.FriendUserData frienduserdata = afrienduserdata[j];
        EditFriendsActivity.access$2(_fld0).add(frienduserdata);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    l.driveToNativeManager()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/social/EditFriendsActivity$3

/* anonymous class */
    class EditFriendsActivity._cls3
        implements com.waze.navigate.DriveToNativeManager.FriendsListListener
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
            driveToNativeManager.getRemovedFriendsData(new EditFriendsActivity._cls3._cls1());
            return;
_L3:
            com.waze.user.FriendUserData frienduserdata = afrienduserdata[j];
            EditFriendsActivity.access$2(EditFriendsActivity.this).add(frienduserdata);
            j++;
            if (true) goto _L5; else goto _L4
_L4:
        }


            
            {
                this$0 = final_editfriendsactivity;
                driveToNativeManager = DriveToNativeManager.this;
                super();
            }
    }

}
