// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseArray;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity

class this._cls0
    implements com.waze.navigate..PersonMappingListener
{

    final MyFriendsActivity this$0;

    public void onComplete(ArrayList arraylist)
    {
        MyFriendsActivity.access$9(MyFriendsActivity.this, new ArrayList());
        if (MyFriendsActivity.access$10(MyFriendsActivity.this) == null) goto _L2; else goto _L1
_L1:
        Iterator iterator1;
        MyFriendsActivity.access$11(MyFriendsActivity.this, new SparseArray(MyFriendsActivity.access$10(MyFriendsActivity.this).size()));
        iterator1 = MyFriendsActivity.access$10(MyFriendsActivity.this).iterator();
_L6:
        if (iterator1.hasNext()) goto _L3; else goto _L2
_L2:
        if (arraylist == null) goto _L5; else goto _L4
_L4:
        Iterator iterator = arraylist.iterator();
_L7:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_153;
        }
_L5:
        MyFriendsActivity.access$14(MyFriendsActivity.this);
        return;
_L3:
        Object obj = iterator1.next();
        if (obj instanceof FriendUserData)
        {
            FriendUserData frienduserdata = (FriendUserData)obj;
            MyFriendsActivity.access$12(MyFriendsActivity.this).add(frienduserdata);
            MyFriendsActivity.access$13(MyFriendsActivity.this).put(frienduserdata.getID(), frienduserdata);
        }
          goto _L6
        PersonBase personbase = (PersonBase)iterator.next();
        PersonBase personbase1 = (PersonBase)MyFriendsActivity.access$13(MyFriendsActivity.this).get(personbase.getID());
        if (personbase1 != null)
        {
            if (personbase1.getImage() == null)
            {
                personbase1.setImage(personbase.getImage());
            }
            if (!personbase1.getIsOnWaze() && personbase.getIsOnWaze())
            {
                personbase1.setIsOnWaze(true);
            }
        } else
        {
            MyFriendsActivity.access$12(MyFriendsActivity.this).add(personbase);
        }
          goto _L7
    }

    MappingListener()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
