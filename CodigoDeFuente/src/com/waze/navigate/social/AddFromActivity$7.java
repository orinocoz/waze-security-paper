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
    implements com.waze.navigate.er.PersonMappingListener
{

    private final nReadDone val$cb;
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
        DriveToNativeManager.getInstance().getFacebookFriendsList(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

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
                Comparator comparator = suggested. new Comparator() {

                    final _cls1 this$2;
                    private final SparseArray val$suggested;

                    public int compare(PersonBase personbase, PersonBase personbase1)
                    {
                        byte byte0 = -1;
                        byte byte1 = 1;
                        byte byte2;
                        byte byte3;
                        if (suggested.get(personbase.getID()) != null)
                        {
                            byte2 = byte1;
                        } else
                        {
                            byte2 = 0;
                        }
                        if (suggested.get(personbase1.getID()) != null)
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

            
            {
                this$2 = final__pcls1;
                suggested = SparseArray.this;
                super();
            }
                };
                Collections.sort(personArray, comparator);
                cb.onReadDone(suggested.size(), setSelected);
                return;
_L3:
                com.waze.user.FriendUserData frienduserdata;
                frienduserdata = afrienduserdata[j];
                PersonBase personbase1 = (PersonBase)contactsByUid.get(frienduserdata.getID());
                if (personbase1 == null)
                {
                    break; /* Loop/switch isn't completed */
                }
                if (personbase1.getImage() == null)
                {
                    personbase1.setImage(frienduserdata.getImage());
                }
                if (!personbase1.getIsOnWaze() && frienduserdata.getIsOnWaze())
                {
                    personbase1.setIsOnWaze(true);
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
                this$1 = AddFromActivity._cls7.this;
                contactsByUid = sparsearray;
                personArray = arraylist;
                preSelected = sparsearray1;
                setSelected = arraylist1;
                cb = ionreaddone;
                suggested = sparsearray2;
                super();
            }
        });
        return;
_L3:
        PersonBase personbase = (PersonBase)iterator.next();
        val$personArray.add(personbase);
        contactsByUid.put(personbase.getID(), personbase);
        if (val$preSelected.get(personbase.getID()) != null)
        {
            setSelected.add(personbase);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    nReadDone()
    {
        val$personArray = arraylist;
        val$preSelected = sparsearray;
        val$cb = nreaddone;
        val$suggested = sparsearray1;
        super();
    }
}
