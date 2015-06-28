// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.util.SparseArray;
import com.waze.navigate.DriveToNativeManager;
import com.waze.user.PersonBase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

// Referenced classes of package com.waze.navigate.social:
//            FriendsListData, AddFromActivity

class val.suggested
    implements com.waze.navigate..FriendsListListener
{

    final val.setSelected this$1;
    private final eadDone val$cb;
    private final SparseArray val$contactsByUid;
    private final ArrayList val$personArray;
    private final SparseArray val$preSelected;
    private final ArrayList val$setSelected;
    private final SparseArray val$suggested;

    public void onComplete(FriendsListData friendslistdata)
    {
        if (friendslistdata == null) goto _L2; else goto _L1
_L1:
        com.waze.user.FriendUserData afrienduserdata[];
        int i;
        int j;
        afrienduserdata = friendslistdata.friends;
        i = afrienduserdata.length;
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        Comparator comparator = new Comparator() {

            final AddFromActivity._cls7._cls1 this$2;
            private final SparseArray val$suggested;

            public int compare(PersonBase personbase1, PersonBase personbase2)
            {
                byte byte0 = -1;
                byte byte1 = 1;
                byte byte2;
                byte byte3;
                if (suggested.get(personbase1.getID()) != null)
                {
                    byte2 = byte1;
                } else
                {
                    byte2 = 0;
                }
                if (suggested.get(personbase2.getID()) != null)
                {
                    byte3 = byte1;
                } else
                {
                    byte3 = 0;
                }
                if (byte2 != byte3)
                {
                    if (byte2 != 0)
                    {
                        byte1 = byte0;
                    }
                    return byte1;
                }
                if (personbase1.getIsOnWaze() != personbase2.getIsOnWaze())
                {
                    if (!personbase1.getIsOnWaze())
                    {
                        byte0 = byte1;
                    }
                    return byte0;
                } else
                {
                    return personbase1.getName().compareToIgnoreCase(personbase2.getName());
                }
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((PersonBase)obj, (PersonBase)obj1);
            }

            
            {
                this$2 = AddFromActivity._cls7._cls1.this;
                suggested = sparsearray;
                super();
            }
        };
        Collections.sort(val$personArray, comparator);
        val$cb.onReadDone(val$suggested.size(), val$setSelected);
        return;
_L3:
        com.waze.user.FriendUserData frienduserdata;
        frienduserdata = afrienduserdata[j];
        PersonBase personbase = (PersonBase)val$contactsByUid.get(frienduserdata.getID());
        if (personbase == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (personbase.getImage() == null)
        {
            personbase.setImage(frienduserdata.getImage());
        }
        if (!personbase.getIsOnWaze() && frienduserdata.getIsOnWaze())
        {
            personbase.setIsOnWaze(true);
        }
_L6:
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        val$personArray.add(frienduserdata);
        if (val$preSelected.get(frienduserdata.getID()) != null)
        {
            val$setSelected.add(frienduserdata);
        }
          goto _L6
        if (true) goto _L5; else goto _L7
_L7:
    }

    eadDone()
    {
        this$1 = final_eaddone;
        val$contactsByUid = sparsearray;
        val$personArray = arraylist;
        val$preSelected = sparsearray1;
        val$setSelected = arraylist1;
        val$cb = eaddone1;
        val$suggested = SparseArray.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/social/AddFromActivity$7

/* anonymous class */
    class AddFromActivity._cls7
        implements com.waze.navigate.DriveToNativeManager.PersonMappingListener
    {

        private final AddFromActivity.IOnReadDone val$cb;
        private final ArrayList val$personArray;
        private final SparseArray val$preSelected;
        private final SparseArray val$suggested;

        public void onComplete(ArrayList arraylist)
        {
            final ArrayList setSelected;
            final SparseArray contactsByUid;
            setSelected = new ArrayList();
            contactsByUid = new SparseArray(arraylist.size());
            if (arraylist == null) goto _L2; else goto _L1
_L1:
            Iterator iterator = arraylist.iterator();
_L5:
            if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
            DriveToNativeManager.getInstance().getFacebookFriendsList(suggested. new AddFromActivity._cls7._cls1());
            return;
_L3:
            PersonBase personbase = (PersonBase)iterator.next();
            personArray.add(personbase);
            contactsByUid.put(personbase.getID(), personbase);
            if (preSelected.get(personbase.getID()) != null)
            {
                setSelected.add(personbase);
            }
            if (true) goto _L5; else goto _L4
_L4:
        }

            
            {
                personArray = arraylist;
                preSelected = sparsearray;
                cb = ionreaddone;
                suggested = sparsearray1;
                super();
            }
    }

}
