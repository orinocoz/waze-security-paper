// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.widget.LinearLayout;
import com.waze.autocomplete.Person;
import com.waze.phone.AddressBook;
import com.waze.user.FriendUserData;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            MyShareDriveActivity, FriendsListData

class this._cls0
    implements com.waze.navigate.iendsListListener
{

    final MyShareDriveActivity this$0;

    public void onComplete(FriendsListData friendslistdata)
    {
        MyShareDriveActivity.access$5(MyShareDriveActivity.this, friendslistdata);
        MyShareDriveActivity.access$6(MyShareDriveActivity.this).clear();
        MyShareDriveActivity.access$7(MyShareDriveActivity.this).removeAllViews();
        if (MyShareDriveActivity.access$8(MyShareDriveActivity.this) == null) goto _L2; else goto _L1
_L1:
        if (MyShareDriveActivity.access$8(MyShareDriveActivity.this).friends == null) goto _L4; else goto _L3
_L3:
        FriendUserData afrienduserdata[];
        int i;
        int j;
        afrienduserdata = MyShareDriveActivity.access$8(MyShareDriveActivity.this).friends;
        i = afrienduserdata.length;
        j = 0;
_L7:
        if (j < i) goto _L5; else goto _L4
_L4:
        MyShareDriveActivity.access$9(MyShareDriveActivity.this);
_L2:
        MyShareDriveActivity.access$10(MyShareDriveActivity.this);
        return;
_L5:
        FriendUserData frienduserdata = afrienduserdata[j];
        if (frienduserdata.mContactID != -1)
        {
            Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
            if (person != null && person.getImage() != null)
            {
                frienduserdata.setImage(person.getImage());
            }
        }
        MyShareDriveActivity.access$6(MyShareDriveActivity.this).add(frienduserdata);
        j++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    stListener()
    {
        this$0 = MyShareDriveActivity.this;
        super();
    }
}
