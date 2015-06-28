// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import com.waze.navigate.social.FriendsListData;
import com.waze.user.FriendUserData;
import java.util.Arrays;
import java.util.Comparator;

// Referenced classes of package com.waze.view.popups:
//            FriendsOnlinePopUp

class this._cls1
    implements Comparator
{

    final compare this$1;

    public int compare(FriendUserData frienduserdata, FriendUserData frienduserdata1)
    {
        if (frienduserdata.isOnline || !frienduserdata1.isOnline)
        {
            if (frienduserdata.isOnline && !frienduserdata1.isOnline)
            {
                return -1;
            }
            if (frienduserdata.mStatusTimeInSeconds == 0 && frienduserdata1.mStatusTimeInSeconds == 0)
            {
                return 0;
            }
            if (frienduserdata.mStatusTimeInSeconds != 0)
            {
                if (frienduserdata1.mStatusTimeInSeconds == 0)
                {
                    return -1;
                }
                if (frienduserdata.mStatusTimeInSeconds < frienduserdata1.mStatusTimeInSeconds)
                {
                    return -1;
                }
                if (frienduserdata.mStatusTimeInSeconds <= frienduserdata1.mStatusTimeInSeconds)
                {
                    return 0;
                }
            }
        }
        return 1;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((FriendUserData)obj, (FriendUserData)obj1);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/FriendsOnlinePopUp$2

/* anonymous class */
    class FriendsOnlinePopUp._cls2
        implements com.waze.navigate.DriveToNativeManager.FriendsListListener
    {

        final FriendsOnlinePopUp this$0;

        public void onComplete(FriendsListData friendslistdata)
        {
            data = friendslistdata;
            Arrays.sort(data.friends, new FriendsOnlinePopUp._cls2._cls1());
            FriendUserData afrienduserdata[] = data.friends;
            int i = afrienduserdata.length;
            int j = 0;
            do
            {
                if (j >= i)
                {
                    return;
                }
                FriendUserData frienduserdata = afrienduserdata[j];
                if (frienduserdata.isOnline)
                {
                    FriendsOnlinePopUp.access$0(FriendsOnlinePopUp.this, frienduserdata);
                }
                j++;
            } while (true);
        }

            
            {
                this$0 = FriendsOnlinePopUp.this;
                super();
            }
    }

}
