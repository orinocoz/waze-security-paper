// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseArray;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity, FriendsListData

class this._cls0
    implements com.waze.navigate.riendsListListener
{

    final ShareDriveActivity this$0;

    public void onComplete(FriendsListData friendslistdata)
    {
        ShareDriveActivity.access$22(ShareDriveActivity.this, new SparseArray(friendslistdata.friends.length));
        if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
        FriendUserData afrienduserdata[];
        int i;
        int j;
        afrienduserdata = friendslistdata.friends;
        i = afrienduserdata.length;
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        return;
_L3:
        FriendUserData frienduserdata = afrienduserdata[j];
        ShareDriveActivity.access$23(ShareDriveActivity.this).put(frienduserdata.getID(), frienduserdata);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    istListener()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
