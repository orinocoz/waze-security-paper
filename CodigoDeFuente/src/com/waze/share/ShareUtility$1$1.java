// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.LocationData;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.social.FriendsListData;
import com.waze.phone.AddressBook;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.waze.share:
//            ShareUtility

class val.intent
    implements com.waze.navigate.ger.FriendsListListener
{

    final Image this$1;
    private final Intent val$intent;

    public void onComplete(FriendsListData friendslistdata)
    {
        FriendUserData afrienduserdata[] = friendslistdata.friends;
        int i = afrienduserdata.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                val$intent.putExtra("FriendUserDataList", new ArrayList(Arrays.asList(friendslistdata.friends)));
                AppService.getActiveActivity().startActivityForResult(val$intent, 1);
                return;
            }
            FriendUserData frienduserdata = afrienduserdata[j];
            if (frienduserdata.mContactID != -1)
            {
                Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                if (person != null && person.getImage() != null)
                {
                    frienduserdata.setImage(person.getImage());
                }
            }
            j++;
        } while (true);
    }

    l.Sharefriends()
    {
        this$1 = final_sharefriends;
        val$intent = Intent.this;
        super();
    }

    // Unreferenced inner class com/waze/share/ShareUtility$1

/* anonymous class */
    class ShareUtility._cls1
        implements com.waze.navigate.DriveToNativeManager.LocationDataListener
    {

        private final PersonBase val$Sharefriends[];
        private final String val$Url;
        private final AddressItem val$addressItem;
        private final Intent val$intent;
        private final ShareUtility.ShareType val$type;

        public void onComplete(LocationData locationdata)
        {
            String s;
            ShareUtility.access$2(locationdata);
            s = "";
            if (ShareUtility.access$3() == null)
            {
                return;
            }
            if ((ShareUtility.access$3().mVenueId == null || ShareUtility.access$3().mVenueId.isEmpty()) && addressItem != null && addressItem.VanueID != null)
            {
                ShareUtility.access$3().mVenueId = addressItem.VanueID;
            }
            if (type == ShareUtility.ShareType.ShareType_PickUp || type == ShareUtility.ShareType.ShareType_ShareDrive) goto _L2; else goto _L1
_L1:
            if (ShareUtility.access$4() != 1) goto _L4; else goto _L3
_L3:
            s = ShareUtility.access$5().getLanguageString(DisplayStrings.DS_IVE_SENT_YOU_A_LOCATION);
_L14:
            String s1;
            if (ShareUtility.access$4() == 1)
            {
                s = (new StringBuilder(String.valueOf(s))).append(" ").append(ShareUtility.access$3().destinationName).append(",").toString();
            } else
            if (ShareUtility.access$4() == 2)
            {
                s = (new StringBuilder(String.valueOf(s))).append(" ").append(ShareUtility.access$3().locationName).append(",").toString();
            } else
            if (ShareUtility.access$4() == 3 && addressItem != null)
            {
                s = (new StringBuilder(String.valueOf(s))).append(" ").append(ShareUtility.access$6()).append(",").toString();
            }
            if (ShareUtility.access$4() == 2)
            {
                s1 = (new StringBuilder(String.valueOf(s))).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_HERE_WITH_WAZE)).append(" ").append(ShareUtility.access$3().smsLocationUrlPrefix).append("/h").append(ShareUtility.access$3().locationHash).toString();
            } else
            {
                s1 = (new StringBuilder(String.valueOf(s))).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ALREADY_HAVE_WAZEQ_TAP)).append(" ").append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_THERE_WITH_WAZE)).append(" ").append(ShareUtility.access$3().smsLocationUrlPrefix).append("/h").append(ShareUtility.access$3().locationHash).toString();
            }
_L9:
            if (ShareUtility.access$4() == 3 && addressItem != null && !addressItem.getTitle().isEmpty())
            {
                ShareUtility.access$3().locationName = addressItem.getTitle();
            }
            intent.putExtra("link", s1);
            intent.putExtra("LocationData", ShareUtility.access$3());
            intent.putExtra("AddressItem", addressItem);
            if (type != ShareUtility.ShareType.ShareType_ShareDrive) goto _L6; else goto _L5
_L5:
            if (Sharefriends == null) goto _L8; else goto _L7
_L7:
            intent.putExtra("FriendUserDataList", new ArrayList(Arrays.asList(Sharefriends)));
            intent.putExtra("selected", true);
_L11:
            AppService.getActiveActivity().startActivityForResult(intent, 1);
            return;
_L4:
            if (ShareUtility.access$4() == 2)
            {
                s = ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ISM_AT);
            } else
            if (ShareUtility.access$4() == 3)
            {
                s = ShareUtility.access$5().getLanguageString(DisplayStrings.DS_IVE_SENT_YOU_A_LOCATION);
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (type == ShareUtility.ShareType.ShareType_ShareDrive)
            {
                StringBuilder stringbuilder = new StringBuilder();
                stringbuilder.append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_IM_ON_THE_WAY_TO));
                stringbuilder.append(" ");
                stringbuilder.append(ShareUtility.access$3().destinationName);
                stringbuilder.append(", ");
                stringbuilder.append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_ISLL_BE_THERE_AT));
                stringbuilder.append(" ");
                stringbuilder.append(ShareUtility.access$3().locationEta);
                stringbuilder.append(". ");
                stringbuilder.append(ShareUtility.access$5().getLanguageString(DisplayStrings.DS_TRACK_MY_LOCATIONC));
                if (Url != null)
                {
                    stringbuilder.append(" ");
                    stringbuilder.append(Url);
                }
                s1 = stringbuilder.toString();
            } else
            {
                s1 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SMS_TEXT)))).append(" ").toString()))).append(Url).toString();
            }
              goto _L9
_L8:
            if (AppService.getMainActivity() == null || AppService.getMainActivity().getLayoutMgr() == null || AppService.getMainActivity().getLayoutMgr().getNotifyFriends() == null) goto _L11; else goto _L10
_L10:
            FriendUserData afrienduserdata[];
            int i;
            int j;
            afrienduserdata = AppService.getMainActivity().getLayoutMgr().getNotifyFriends();
            i = afrienduserdata.length;
            j = 0;
_L12:
label0:
            {
                if (j < i)
                {
                    break label0;
                }
                intent.putExtra("FriendUserDataList", new ArrayList(Arrays.asList(afrienduserdata)));
                intent.putExtra("selected", false);
            }
              goto _L11
            FriendUserData frienduserdata = afrienduserdata[j];
            if (frienduserdata.mContactID != -1)
            {
                Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                if (person != null && person.getImage() != null)
                {
                    frienduserdata.setImage(person.getImage());
                }
            }
            j++;
              goto _L12
_L6:
            DriveToNativeManager.getInstance().getShareFriendsListData(ShareUtility.access$3().locationX, ShareUtility.access$3().locationY, intent. new ShareUtility._cls1._cls1());
            return;
            if (true) goto _L14; else goto _L13
_L13:
        }

            
            {
                addressItem = addressitem;
                type = sharetype;
                Url = s;
                intent = intent1;
                Sharefriends = apersonbase;
                super();
            }
    }

}
