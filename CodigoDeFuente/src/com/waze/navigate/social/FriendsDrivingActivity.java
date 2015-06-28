// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.DriveToNativeManager;
import com.waze.phone.AddressBook;
import com.waze.share.ShareUtility;
import com.waze.share.UserDetailsActivity;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, MyShareDriveActivity, EndDriveData

public class FriendsDrivingActivity extends ActivityBase
{

    ArrayAdapter adapter;
    boolean bIsFollowed;
    private LinearLayout mFriendsSuggestionLayout;
    int mNumber;
    protected String mShareOwner;
    int mType;
    String mUrl;
    ArrayList people;
    String sMeeting;
    protected TextView shareDriveSwitch;

    public FriendsDrivingActivity()
    {
        mUrl = null;
        mType = 0;
        sMeeting = null;
        bIsFollowed = false;
        mNumber = 0;
    }

    private void AddFriend(final FriendUserData fud)
    {
        View view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f030008, null);
        AddFriendsUtils.setNameAndImage(this, view, fud.getName(), fud.getImage());
        View view1;
        int i;
        ImageView imageview;
        if (fud.statusLine == null || fud.statusLine.length() == 0)
        {
            view.findViewById(0x7f090087).setVisibility(8);
        } else
        {
            view.findViewById(0x7f090087).setVisibility(0);
            ((TextView)view.findViewById(0x7f090087)).setText(fud.statusLine);
        }
        view1 = view.findViewById(0x7f09007f);
        if (fud.isOnline)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        view1.setVisibility(i);
        imageview = (ImageView)view.findViewById(0x7f09008a);
        view.findViewById(0x7f090089).setVisibility(8);
        imageview.setVisibility(8);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsDrivingActivity this$0;
            private final FriendUserData val$fud;

            public void onClick(View view2)
            {
                Intent intent = new Intent(FriendsDrivingActivity.this, com/waze/share/UserDetailsActivity);
                intent.putExtra("FriendUserData", fud);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = FriendsDrivingActivity.this;
                fud = frienduserdata;
                super();
            }
        });
        if (fud.mShowETA)
        {
            view.findViewById(0x7f090088).setVisibility(0);
            ((TextView)view.findViewById(0x7f09008c)).setText(fud.arrivedText);
            ((TextView)view.findViewById(0x7f09008d)).setText(fud.arrivedTime);
        } else
        {
            view.findViewById(0x7f090088).setVisibility(8);
        }
        mFriendsSuggestionLayout.addView(view);
    }

    private void readFriend()
    {
        DriveToNativeManager.getInstance().getEndDriveData(new com.waze.navigate.DriveToNativeManager.EndDriveListener() {

            final FriendsDrivingActivity this$0;

            public void onComplete(EndDriveData enddrivedata)
            {
                FriendUserData afrienduserdata[] = enddrivedata.friends;
                int i = afrienduserdata.length;
                int j = 0;
                do
                {
                    if (j >= i)
                    {
                        return;
                    }
                    FriendUserData frienduserdata = afrienduserdata[j];
                    AddFriend(frienduserdata);
                    j++;
                } while (true);
            }

            
            {
                this$0 = FriendsDrivingActivity.this;
                super();
            }
        });
    }

    public void getFriendsList()
    {
        readFriend();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if ((0x10000 & i) == 0) goto _L2; else goto _L1
_L1:
        if ((i & 2) != 0 && j == -1)
        {
            NativeManager.bToUploadContacts = true;
            AddressBook.RequestSync(false);
            ShareUtility.shareLocationOrDrive(this, 16);
        }
        if ((i & 1) != 0 && j == -1)
        {
            ShareUtility.shareLocationOrDrive(this, 16);
        }
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setRequestedOrientation(1);
        setContentView(0x7f03005f);
        ((TitleBar)findViewById(0x7f0902e8)).init(this, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ON_THE_WAY));
        mFriendsSuggestionLayout = (LinearLayout)findViewById(0x7f09007a);
        bIsFollowed = NativeManager.getInstance().isFollowActiveNTV();
        mNumber = DriveToNativeManager.getInstance().getMyShareDriveUsersCountNTV();
        if (bIsFollowed && mNumber > 0)
        {
            ((TextView)findViewById(0x7f0902ec)).setText((new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_YOU_ARE_SHARING_DRIVE_WITH)))).append(" ").append(mNumber).append(" ").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_FRIENDS)).toString());
        } else
        {
            ((TextView)findViewById(0x7f0902ec)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SHARE_YOUR_DRIVE_WITH_FRIENDS_AND_FAMILY));
        }
        findViewById(0x7f0902ea).setOnClickListener(new android.view.View.OnClickListener() {

            final FriendsDrivingActivity this$0;

            public void onClick(View view)
            {
                Analytics.log("ON_THE_WAY_BANNER_CLICK", null, null);
                if (bIsFollowed && mNumber > 0)
                {
                    String s = NativeManager.getInstance().getCurMeetingNTV();
                    Intent intent = new Intent(FriendsDrivingActivity.this, com/waze/navigate/social/MyShareDriveActivity);
                    intent.putExtra("meeting", s);
                    startActivityForResult(intent, 1);
                    return;
                } else
                {
                    ShareUtility.shareLocationOrDrive(FriendsDrivingActivity.this, 16);
                    return;
                }
            }

            
            {
                this$0 = FriendsDrivingActivity.this;
                super();
            }
        });
        getFriendsList();
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

}
