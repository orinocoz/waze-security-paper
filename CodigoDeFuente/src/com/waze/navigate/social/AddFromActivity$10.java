// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseIntArray;
import com.waze.user.PersonBase;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity, FriendsListData

class this._cls0
    implements com.waze.navigate.r.FriendsListListener
{

    final AddFromActivity this$0;

    public void onComplete(FriendsListData friendslistdata)
    {
        int i;
        AddFromActivity.access$12(AddFromActivity.this, new SparseIntArray(friendslistdata.friends.length));
        i = 1;
        if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
        com.waze.user.FriendUserData afrienduserdata[];
        int j;
        int k;
        afrienduserdata = friendslistdata.friends;
        j = afrienduserdata.length;
        k = 0;
_L5:
        if (k < j) goto _L3; else goto _L2
_L2:
        mHasReadCurFriends = true;
        if (mHasReadUidMap && mHasReadAddressBook)
        {
            readAddressBook();
        }
        return;
_L3:
        com.waze.user.FriendUserData frienduserdata = afrienduserdata[k];
        AddFromActivity.access$13(AddFromActivity.this).put(frienduserdata.getID(), i);
        i++;
        k++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    dsListListener()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
