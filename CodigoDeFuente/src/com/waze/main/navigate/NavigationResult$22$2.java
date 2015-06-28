// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.content.Intent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.waze.NativeManager;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.social.FriendsListData;
import com.waze.navigate.social.MyShareDriveActivity;
import com.waze.phone.AddressBook;
import com.waze.share.ShareUtility;
import com.waze.user.FriendUserData;
import java.util.ArrayList;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls1
    implements android.view.balLayoutListener
{

    final is._cls0 this$1;

    public void onGlobalLayout()
    {
        NavigationResult.access$8(_fld0).findViewById(0x7f0904ad).getViewTreeObserver().removeGlobalOnLayoutListener(this);
        ShareUtility.shareComponentPopulate(NavigationResult.access$23(_fld0), NavigationResult.access$26(_fld0), NavigationResult.access$29(_fld0), NavigationResult.access$6(_fld0), false, true, null);
        NavigationResult.access$30(_fld0);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/main/navigate/NavigationResult$22

/* anonymous class */
    class NavigationResult._cls22
        implements com.waze.navigate.DriveToNativeManager.FriendsListListener
    {

        final NavigationResult this$0;

        public void onComplete(FriendsListData friendslistdata)
        {
            View view;
            if (NavigationResult.access$8(NavigationResult.this) == null)
            {
                return;
            }
            NavigationResult.access$26(NavigationResult.this).removeAllViews();
            view = NavigationResult.access$8(NavigationResult.this).findViewById(0x7f0904ad);
            if (nm.isFollowActiveNTV())
            {
                ImageButton imagebutton = (ImageButton)view.findViewById(0x7f090698);
                imagebutton.setVisibility(0);
                imagebutton.setOnClickListener(new NavigationResult._cls22._cls1());
            }
            if (friendslistdata == null || friendslistdata.friends == null) goto _L2; else goto _L1
_L1:
            FriendUserData afrienduserdata[];
            int i;
            int j;
            NavigationResult.access$28(NavigationResult.this, new ArrayList(friendslistdata.friends.length));
            afrienduserdata = friendslistdata.friends;
            i = afrienduserdata.length;
            j = 0;
_L6:
            if (j < i) goto _L4; else goto _L3
_L3:
            if (NavigationResult.access$29(NavigationResult.this).size() > 0)
            {
                view.getViewTreeObserver().addOnGlobalLayoutListener(new NavigationResult._cls22._cls2());
            } else
            {
                ShareUtility.shareComponentPopulate(NavigationResult.access$23(NavigationResult.this), NavigationResult.access$26(NavigationResult.this), null, NavigationResult.access$31(NavigationResult.this), false, false, NavigationResult.access$32(NavigationResult.this));
            }
_L2:
            NavigationResult.access$30(NavigationResult.this);
            return;
_L4:
            FriendUserData frienduserdata = afrienduserdata[j];
            if (frienduserdata.mContactID != -1)
            {
                Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                if (person != null && person.getImage() != null)
                {
                    frienduserdata.setImage(person.getImage());
                }
            }
            NavigationResult.access$29(NavigationResult.this).add(frienduserdata);
            j++;
            if (true) goto _L6; else goto _L5
_L5:
        }


            
            {
                this$0 = NavigationResult.this;
                super();
            }

        // Unreferenced inner class com/waze/main/navigate/NavigationResult$22$1

/* anonymous class */
        class NavigationResult._cls22._cls1
            implements android.view.View.OnClickListener
        {

            final NavigationResult._cls22 this$1;

            public void onClick(View view)
            {
                dismissNavigationResultDialogNoAnimation();
                Intent intent = new Intent(NavigationResult.access$23(this$0), com/waze/navigate/social/MyShareDriveActivity);
                intent.putExtra("meeting", NavigationResult.access$27(this$0));
                NavigationResult.access$23(this$0).startActivity(intent);
            }

                    
                    {
                        this$1 = NavigationResult._cls22.this;
                        super();
                    }
        }

    }

}
