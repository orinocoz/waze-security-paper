// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.waze.NativeManager;
import com.waze.autocomplete.Person;
import com.waze.phone.AddressBook;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity, FriendsListData, AddFriendsData

class this._cls0
    implements com.waze.navigate..FriendsListListener
{

    final MyFriendsActivity this$0;

    public void onComplete(FriendsListData friendslistdata)
    {
        FriendsListData friendslistdata1;
        int i;
        mFriendsListData = friendslistdata;
        friendslistdata1 = mFriendsListData;
        i = 0;
        if (friendslistdata1 == null) goto _L2; else goto _L1
_L1:
        int i1;
        i1 = mFriendsListData.friends.length;
        i = 0;
        if (i1 <= 0) goto _L2; else goto _L3
_L3:
        boolean flag;
        boolean flag1;
        int j1;
        FriendUserData afrienduserdata1[];
        int k1;
        int l1;
        Arrays.sort(mFriendsListData.friends, new Comparator() {

            final MyFriendsActivity._cls5 this$1;

            public int compare(FriendUserData frienduserdata2, FriendUserData frienduserdata3)
            {
                if (frienduserdata2.mIsPendingFriend || !frienduserdata3.mIsPendingFriend)
                {
                    if (frienduserdata2.mIsPendingFriend && !frienduserdata3.mIsPendingFriend)
                    {
                        return 1;
                    }
                    if (!frienduserdata2.isOnline && frienduserdata3.isOnline)
                    {
                        return 1;
                    }
                    if (!frienduserdata2.isOnline || frienduserdata3.isOnline)
                    {
                        if (frienduserdata2.mStatusTimeInSeconds == 0 && frienduserdata3.mStatusTimeInSeconds == 0)
                        {
                            return 0;
                        }
                        if (frienduserdata2.mStatusTimeInSeconds == 0)
                        {
                            return 1;
                        }
                        if (frienduserdata3.mStatusTimeInSeconds != 0 && frienduserdata2.mStatusTimeInSeconds >= frienduserdata3.mStatusTimeInSeconds)
                        {
                            return frienduserdata2.mStatusTimeInSeconds <= frienduserdata3.mStatusTimeInSeconds ? 0 : 1;
                        }
                    }
                }
                return -1;
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((FriendUserData)obj, (FriendUserData)obj1);
            }

            
            {
                this$1 = MyFriendsActivity._cls5.this;
                super();
            }
        });
        flag = false;
        flag1 = true;
        j1 = -1;
        afrienduserdata1 = mFriendsListData.friends;
        k1 = afrienduserdata1.length;
        l1 = 0;
_L9:
        if (l1 < k1) goto _L5; else goto _L4
_L4:
        if (j1 >= 0)
        {
            ArrayList arraylist2 = MyFriendsActivity.access$10(MyFriendsActivity.this);
            String s2 = MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_ALL_FRIENDS_PD);
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(i);
            arraylist2.set(j1, String.format(s2, aobj2));
        }
_L2:
        if (i >= MyFriendsActivity.access$2(MyFriendsActivity.this).getNumberOfFriendsToStopShowingFriendSuggestions() || mAddFriendsData == null) goto _L7; else goto _L6
_L6:
        int j = mAddFriendsData.SuggestionFriends.length;
        if (j <= 0) goto _L7; else goto _L8
_L8:
        FriendUserData afrienduserdata[];
        int k;
        int l;
        ArrayList arraylist = MyFriendsActivity.access$10(MyFriendsActivity.this);
        String s = MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_WAZERS_YOU_MAY_KNOW_PD);
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(j);
        arraylist.add(String.format(s, aobj));
        afrienduserdata = mAddFriendsData.SuggestionFriends;
        k = afrienduserdata.length;
        l = 0;
_L10:
        if (l < k)
        {
            break MISSING_BLOCK_LABEL_492;
        }
_L7:
        MyFriendsActivity.access$16(MyFriendsActivity.this);
        return;
_L5:
        FriendUserData frienduserdata1 = afrienduserdata1[l1];
        if (!MyFriendsActivity.access$15(MyFriendsActivity.this).get(frienduserdata1.getID()))
        {
            if (frienduserdata1.mIsPendingFriend)
            {
                if (!flag)
                {
                    MyFriendsActivity.access$10(MyFriendsActivity.this).add(MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_PENDING_FRIENDS_APPROVAL));
                    flag = true;
                }
            } else
            {
                if (flag1)
                {
                    j1 = MyFriendsActivity.access$10(MyFriendsActivity.this).size();
                    ArrayList arraylist1 = MyFriendsActivity.access$10(MyFriendsActivity.this);
                    String s1 = MyFriendsActivity.access$2(MyFriendsActivity.this).getLanguageString(DisplayStrings.DS_ALL_FRIENDS_PD);
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Integer.valueOf(0);
                    arraylist1.add(String.format(s1, aobj1));
                    flag1 = false;
                }
                i++;
            }
            if (frienduserdata1.mContactID != -1)
            {
                Person person = AddressBook.GetPersonFromID(frienduserdata1.mContactID);
                if (person != null && person.getImage() != null)
                {
                    frienduserdata1.setImage(person.getImage());
                }
            }
            MyFriendsActivity.access$10(MyFriendsActivity.this).add(frienduserdata1);
        }
        l1++;
          goto _L9
        FriendUserData frienduserdata = afrienduserdata[l];
        MyFriendsActivity.access$10(MyFriendsActivity.this).add(frienduserdata);
        MyFriendsActivity.access$0(MyFriendsActivity.this).put(frienduserdata.mID, frienduserdata);
        l++;
          goto _L10
    }

    _cls1.this._cls1()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
