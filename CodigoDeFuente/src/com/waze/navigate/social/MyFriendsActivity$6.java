// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseBooleanArray;
import com.waze.NativeManager;
import com.waze.autocomplete.Person;
import com.waze.phone.AddressBook;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity, FriendsListData

class this._cls0
    implements com.waze.navigate..FriendsListListener
{

    final MyFriendsActivity this$0;

    public void onComplete(FriendsListData friendslistdata)
    {
        int i;
        i = 0;
        mSharedDriveUsers = friendslistdata;
        MyFriendsActivity.access$17(MyFriendsActivity.this, new SparseBooleanArray());
        if (friendslistdata == null || friendslistdata.friends == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
        FriendUserData afrienduserdata[];
        int j;
        ArrayList arraylist = MyFriendsActivity.access$10(MyFriendsActivity.this);
        String s = MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_NOW_SHARING_PD);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(friendslistdata.friends.length);
        arraylist.add(String.format(s, aobj));
        afrienduserdata = friendslistdata.friends;
        j = afrienduserdata.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        MyFriendsActivity.access$18(MyFriendsActivity.this);
        return;
_L3:
        FriendUserData frienduserdata = afrienduserdata[i];
        MyFriendsActivity.access$15(MyFriendsActivity.this).put(frienduserdata.getID(), true);
        if (frienduserdata.mContactID != -1)
        {
            Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
            if (person != null && person.getImage() != null)
            {
                frienduserdata.setImage(person.getImage());
            }
        }
        MyFriendsActivity.access$10(MyFriendsActivity.this).add(frienduserdata);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    sListListener()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
