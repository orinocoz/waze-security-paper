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
    implements android.view._cls3
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
              = .ShareType_ShareDrive;
            PersonBase apersonbase[] = new PersonBase[1];
            apersonbase[0] = UserDetailsActivity.access$0(UserDetailsActivity.this);
            ShareUtility.OpenShareActivity(, null, null, apersonbase);
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
                doShare(val$bSharingMyDrive);
                return;
            } else
            {
                (new PhoneRequestAccessDialog(UserDetailsActivity.this, new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                    final UserDetailsActivity._cls3 this$1;
                    private final boolean val$bSharingMyDrive;

                    public void onResult(boolean flag)
                    {
                        if (flag)
                        {
                            doShare(bSharingMyDrive);
                        }
                    }

            
            {
                this$1 = UserDetailsActivity._cls3.this;
                bSharingMyDrive = flag;
                super();
            }
                })).show();
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


    _cls1.val.bSharingMyDrive()
    {
        this$0 = final_userdetailsactivity;
        val$bSharingMyDrive = Z.this;
        super();
    }
}
