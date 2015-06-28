// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.user.PersonBase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity, FriendsListData

class this._cls1
    implements Comparator
{

    final compare this$1;

    public int compare(PersonBase personbase, PersonBase personbase1)
    {
        return personbase.getName().compareToIgnoreCase(personbase1.getName());
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((PersonBase)obj, (PersonBase)obj1);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/social/AddFromActivity$11

/* anonymous class */
    class AddFromActivity._cls11
        implements com.waze.navigate.DriveToNativeManager.FriendsListListener
    {

        final AddFromActivity this$0;

        public void onComplete(FriendsListData friendslistdata)
        {
            int i;
            i = 0;
            AddFromActivity.access$8(AddFromActivity.this, new ArrayList());
            AddFromActivity.access$6(AddFromActivity.this, 0);
            if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
            com.waze.user.FriendUserData afrienduserdata[];
            int j;
            afrienduserdata = friendslistdata.friends;
            j = afrienduserdata.length;
_L5:
            if (i < j) goto _L3; else goto _L2
_L2:
            AddFromActivity._cls11._cls1 _lcls1 = new AddFromActivity._cls11._cls1();
            Collections.sort(AddFromActivity.access$10(AddFromActivity.this), _lcls1);
            AddFromActivity.access$7(AddFromActivity.this);
            return;
_L3:
            com.waze.user.FriendUserData frienduserdata = afrienduserdata[i];
            AddFromActivity.access$10(AddFromActivity.this).add(frienduserdata);
            i++;
            if (true) goto _L5; else goto _L4
_L4:
        }

            
            {
                this$0 = AddFromActivity.this;
                super();
            }
    }

}
