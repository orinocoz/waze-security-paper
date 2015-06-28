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
//            AddFromActivity, FriendsListData

class val.suggested
    implements Comparator
{

    final compare this$2;
    private final SparseArray val$suggested;

    public int compare(PersonBase personbase, PersonBase personbase1)
    {
        byte byte0 = -1;
        byte byte1 = 1;
        byte byte2;
        byte byte3;
        if (val$suggested.get(personbase.getID()) != null)
        {
            byte2 = byte1;
        } else
        {
            byte2 = 0;
        }
        if (val$suggested.get(personbase1.getID()) != null)
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
        if (personbase.getIsOnWaze() != personbase1.getIsOnWaze())
        {
            if (!personbase.getIsOnWaze())
            {
                byte0 = byte1;
            }
            return byte0;
        } else
        {
            return personbase.getName().compareToIgnoreCase(personbase1.getName());
        }
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((PersonBase)obj, (PersonBase)obj1);
    }

    suggested()
    {
        this$2 = final_suggested1;
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


    // Unreferenced inner class com/waze/navigate/social/AddFromActivity$7$1

/* anonymous class */
    class AddFromActivity._cls7._cls1
        implements com.waze.navigate.DriveToNativeManager.FriendsListListener
    {

        final AddFromActivity._cls7 this$1;
        private final AddFromActivity.IOnReadDone val$cb;
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
            AddFromActivity._cls7._cls1._cls1 _lcls1 = suggested. new AddFromActivity._cls7._cls1._cls1();
            Collections.sort(personArray, _lcls1);
            cb.onReadDone(suggested.size(), setSelected);
            return;
_L3:
            com.waze.user.FriendUserData frienduserdata;
            frienduserdata = afrienduserdata[j];
            PersonBase personbase = (PersonBase)contactsByUid.get(frienduserdata.getID());
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
            personArray.add(frienduserdata);
            if (preSelected.get(frienduserdata.getID()) != null)
            {
                setSelected.add(frienduserdata);
            }
              goto _L6
            if (true) goto _L5; else goto _L7
_L7:
        }

            
            {
                this$1 = final__pcls7;
                contactsByUid = sparsearray;
                personArray = arraylist;
                preSelected = sparsearray1;
                setSelected = arraylist1;
                cb = ionreaddone;
                suggested = SparseArray.this;
                super();
            }
    }

}
