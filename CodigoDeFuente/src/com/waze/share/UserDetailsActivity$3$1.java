// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.social.MyShareDriveActivity;
import com.waze.navigate.social.ShareHelpActivity;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity, ShareUtility

class val.bSharingMyDrive
    implements com.waze.phone..PhoneRequestAccessResultListener
{

    final val.bSharingMyDrive this$1;
    private final boolean val$bSharingMyDrive;

    public void onResult(boolean flag)
    {
        if (flag)
        {
            Share(val$bSharingMyDrive);
        }
    }

    l.bSharingMyDrive()
    {
        this$1 = final_bsharingmydrive;
        val$bSharingMyDrive = Z.this;
        super();
    }

    // Unreferenced inner class com/waze/share/UserDetailsActivity$3

/* anonymous class */
    class UserDetailsActivity._cls3
        implements android.view.View.OnClickListener
    {

        final UserDetailsActivity this$0;
        private final boolean val$bSharingMyDrive;

        private void doShare(boolean flag)
        {
            boolean flag1 = NativeManager.getInstance().isNavigatingNTV();
            if (flag)
            {
                Analytics.log("FRIEND_PROFILE_SHARING_MY_DRIVE_CLICKED", null, null);
                Intent intent1 = new Intent(UserDetailsActivity.this, com/waze/navigate/social/MyShareDriveActivity);
                intent1.putExtra("meeting", ((FriendUserData)UserDetailsActivity.access$0(UserDetailsActivity.this)).mMeetingIdSharedByMe);
                startActivityForResult(intent1, 1001);
                return;
            }
            if (flag1)
            {
                Analytics.log("FRIEND_PROFILE_SHARE_DRIVE_CLICKED", null, null);
                ShareUtility.ShareType sharetype = ShareUtility.ShareType.ShareType_ShareDrive;
                PersonBase apersonbase[] = new PersonBase[1];
                apersonbase[0] = UserDetailsActivity.access$0(UserDetailsActivity.this);
                ShareUtility.OpenShareActivity(sharetype, null, null, apersonbase);
                return;
            } else
            {
                Intent intent = new Intent(UserDetailsActivity.this, com/waze/navigate/social/ShareHelpActivity);
                startActivityForResult(intent, 1002);
                return;
            }
        }

        public void onClick(View view)
        {
            if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
            {
                if (NativeManager.getInstance().IsAccessToContactsEnableNTV())
                {
                    doShare(bSharingMyDrive);
                    return;
                } else
                {
                    (new PhoneRequestAccessDialog(UserDetailsActivity.this, bSharingMyDrive. new UserDetailsActivity._cls3._cls1())).show();
                    return;
                }
            } else
            {
                Intent intent = new Intent(UserDetailsActivity.this, com/waze/phone/PhoneNumberSignInActivity);
                intent.putExtra("type", 1);
                intent.putExtra("back", 1);
                intent.putExtra("fon_shon_rea_son", "FEATURE");
                startActivityForResult(intent, 1005);
                return;
            }
        }


            
            {
                this$0 = final_userdetailsactivity;
                bSharingMyDrive = Z.this;
                super();
            }
    }

}
