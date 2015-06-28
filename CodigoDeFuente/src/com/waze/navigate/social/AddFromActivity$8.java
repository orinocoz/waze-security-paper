// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseIntArray;
import com.waze.user.PersonBase;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity, AddFriendsData

class this._cls0
    implements com.waze.navigate.er.AddFriendsListener
{

    final AddFromActivity this$0;

    public void onComplete(AddFriendsData addfriendsdata)
    {
        int i;
        AddFromActivity.access$8(AddFromActivity.this, new ArrayList());
        AddFromActivity.access$9(AddFromActivity.this, new SparseIntArray(addfriendsdata.SuggestionFriends.length));
        i = 1;
        if (addfriendsdata == null || addfriendsdata.SuggestionFriends.length <= 0) goto _L2; else goto _L1
_L1:
        com.waze.user.FriendUserData afrienduserdata[];
        int j;
        int k;
        AddFromActivity.access$6(AddFromActivity.this, addfriendsdata.SuggestionFriends.length);
        afrienduserdata = addfriendsdata.SuggestionFriends;
        j = afrienduserdata.length;
        k = 0;
_L5:
        if (k < j) goto _L3; else goto _L2
_L2:
        mHasReadAddressBook = true;
        if (mHasReadUidMap && mHasReadCurFriends)
        {
            readAddressBook();
        }
        return;
_L3:
        com.waze.user.FriendUserData frienduserdata = afrienduserdata[k];
        AddFromActivity.access$10(AddFromActivity.this).add(frienduserdata);
        AddFromActivity.access$11(AddFromActivity.this).put(frienduserdata.getID(), i);
        i++;
        k++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    riendsListener()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
