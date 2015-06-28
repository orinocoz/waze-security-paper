// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.Person;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.social.EndDriveData;
import com.waze.phone.AddressBook;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze:
//            LayoutManager, AppService

class DriveData
    implements android.view.GlobalLayoutListener
{

    final is._cls0 this$1;
    private final EndDriveData val$data;
    private final RelativeLayout val$endDriveFriendsLayout;

    public void onGlobalLayout()
    {
        val$endDriveFriendsLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        FriendUserData afrienduserdata[] = val$data.friends;
        int i = afrienduserdata.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                LayoutManager.access$31(_fld0, val$data.myEtaSeconds, LayoutManager.access$30(_fld0), val$data.myPictureUrl, null, true);
                return;
            }
            FriendUserData frienduserdata = afrienduserdata[j];
            int k = frienduserdata.mEtaSeconds;
            String s = frienduserdata.getImage();
            if (frienduserdata.mContactID != -1)
            {
                Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                if (person != null && person.getImage() != null)
                {
                    s = person.getImage();
                }
            }
            String s1 = frienduserdata.getName();
            LayoutManager.access$31(_fld0, k, LayoutManager.access$30(_fld0), s, s1, false);
            j++;
        } while (true);
    }

    DriveData()
    {
        this$1 = final_drivedata;
        val$endDriveFriendsLayout = relativelayout;
        val$data = EndDriveData.this;
        super();
    }

    // Unreferenced inner class com/waze/LayoutManager$19

/* anonymous class */
    class LayoutManager._cls19
        implements com.waze.navigate.DriveToNativeManager.EndDriveListener
    {

        final LayoutManager this$0;

        public void onComplete(EndDriveData enddrivedata)
        {
            int i = AppService.getAppContext().getResources().getConfiguration().orientation;
            final RelativeLayout endDriveFriendsLayout;
            if (i == 1)
            {
                endDriveFriendsLayout = (RelativeLayout)LayoutManager.access$9(LayoutManager.this).findViewById(0x7f090395);
            } else
            {
                endDriveFriendsLayout = (RelativeLayout)LayoutManager.access$9(LayoutManager.this).findViewById(0x7f09039d);
            }
            endDriveFriendsLayout.removeAllViews();
            endDriveFriendsLayout.requestLayout();
            if (enddrivedata.friends.length == 0)
            {
                LayoutManager.access$26(LayoutManager.this, 0);
            }
            if (enddrivedata.friends.length == 0 || i == 2)
            {
                LayoutManager.access$9(LayoutManager.this).findViewById(0x7f09038d).setVisibility(8);
                endDriveFriendsLayout.setVisibility(8);
                LayoutManager.access$9(LayoutManager.this).findViewById(0x7f090397).setVisibility(8);
                LayoutManager.access$27(LayoutManager.this, false);
                return;
            }
            if (!LayoutManager.access$28(LayoutManager.this))
            {
                LayoutManager.access$27(LayoutManager.this, true);
                Analytics.log("FRIENDS_DRIVING_BAR_SHOWN");
            }
            boolean flag = DriveToNativeManager.getInstance().isDayMode();
            LayoutManager.access$29(LayoutManager.this, false);
            if (flag)
            {
                ((ImageView)LayoutManager.access$9(LayoutManager.this).findViewById(0x7f09038d)).setImageResource(0x7f020177);
            } else
            {
                ((ImageView)LayoutManager.access$9(LayoutManager.this).findViewById(0x7f09038d)).setImageResource(0x7f020178);
            }
            LayoutManager.access$9(LayoutManager.this).findViewById(0x7f09038d).setVisibility(0);
            endDriveFriendsLayout.setVisibility(0);
            LayoutManager.access$9(LayoutManager.this).findViewById(0x7f090397).setVisibility(0);
            if (LayoutManager.access$30(LayoutManager.this) == 0 || enddrivedata.maxEtaSeconds > LayoutManager.access$30(LayoutManager.this))
            {
                LayoutManager.access$26(LayoutManager.this, enddrivedata.maxEtaSeconds);
            }
            endDriveFriendsLayout.getViewTreeObserver().addOnGlobalLayoutListener(enddrivedata. new LayoutManager._cls19._cls1());
        }


            
            {
                this$0 = LayoutManager.this;
                super();
            }
    }

}
