// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.mywaze.social.FacebookActivity;
import com.waze.navigate.DriveToNativeManager;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.settings.DrillDownSettingView;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, AddFriendsData, AddFromActivity

public class AddFriendsActivity extends ActivityBase
    implements com.waze.mywaze.MyWazeNativeManager.IFriendsChanged
{

    private static final int ACTIVITY_RESULT_ADD_FROM_CONTACTS = 1001;
    private static final int ACTIVITY_RESULT_ADD_FROM_FB = 1003;
    private static final int ACTIVITY_RESULT_LOGIN_CONTACTS = 1002;
    private static final int ACTIVITY_RESULT_LOGIN_FB = 1004;
    private static final boolean SHOW_FRIENDS_ADDED_YOU = false;
    protected static final long TIMEOUT_BETWEEN_EVENTS = 100L;
    private LinearLayout AddedFriendsLayout;
    private LayoutInflater inflater;
    protected AddFriendsData mAddFriendsData;
    private LinearLayout mFriendsSuggestionLayout;
    private NativeManager nativeManager;
    private View viewToConfirm;
    private View viewToRemove;

    public AddFriendsActivity()
    {
        viewToRemove = null;
        viewToConfirm = null;
    }

    private void PendingAddFriend(final FriendUserData friend)
    {
        final View friendLayoutInListLayout = inflater.inflate(0x7f030008, null);
        if (friend.mContactID != -1)
        {
            Person person = AddressBook.GetPersonFromID(friend.mContactID);
            if (person != null && person.getImage() != null)
            {
                friend.setImage(person.getImage());
            }
        }
        AddFriendsUtils.setNameAndImage(this, friendLayoutInListLayout, friend.name, friend.pictureUrl);
        friendLayoutInListLayout.findViewById(0x7f090089).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsActivity this$0;
            private final FriendUserData val$friend;
            private final View val$friendLayoutInListLayout;

            public void onClick(View view)
            {
                viewToRemove = friendLayoutInListLayout;
                int ai[] = new int[1];
                ai[0] = friend.getID();
                String s = nativeManager.getLanguageString(DisplayStrings.DS_PS_REMOVED);
                Object aobj[] = new Object[1];
                aobj[0] = friend.getName();
                String s1 = String.format(s, aobj);
                MyWazeNativeManager.getInstance().sendSocialRemoveFriends(ai, s1);
            }

            
            {
                this$0 = AddFriendsActivity.this;
                friendLayoutInListLayout = view;
                friend = frienduserdata;
                super();
            }
        });
        friendLayoutInListLayout.findViewById(0x7f09008a).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsActivity this$0;
            private final FriendUserData val$friend;
            private final View val$friendLayoutInListLayout;

            public void onClick(View view)
            {
                viewToConfirm = friendLayoutInListLayout;
                int ai[] = new int[1];
                ai[0] = friend.getID();
                String s = nativeManager.getLanguageString(DisplayStrings.DS_PS_ADDED);
                Object aobj[] = new Object[1];
                aobj[0] = friend.getName();
                String s1 = String.format(s, aobj);
                MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
            }

            
            {
                this$0 = AddFriendsActivity.this;
                friendLayoutInListLayout = view;
                friend = frienduserdata;
                super();
            }
        });
        AddedFriendsLayout.addView(friendLayoutInListLayout);
    }

    private void RecommendedAddFriend(final FriendUserData friend)
    {
        final View friendLayoutInListLayout = inflater.inflate(0x7f030008, null);
        if (friend.mContactID != -1)
        {
            Person person = AddressBook.GetPersonFromID(friend.mContactID);
            if (person != null && person.getImage() != null)
            {
                friend.setImage(person.getImage());
            }
        }
        AddFriendsUtils.setNameAndImage(this, friendLayoutInListLayout, friend.name, friend.pictureUrl);
        friendLayoutInListLayout.findViewById(0x7f090089).setVisibility(8);
        friendLayoutInListLayout.findViewById(0x7f09008a).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsActivity this$0;
            private final FriendUserData val$friend;
            private final View val$friendLayoutInListLayout;

            public void onClick(View view)
            {
                viewToConfirm = friendLayoutInListLayout;
                int ai[] = new int[1];
                ai[0] = friend.getID();
                String s = nativeManager.getLanguageString(DisplayStrings.DS_PS_ADDED);
                Object aobj[] = new Object[1];
                aobj[0] = friend.getName();
                String s1 = String.format(s, aobj);
                MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s1);
            }

            
            {
                this$0 = AddFriendsActivity.this;
                friendLayoutInListLayout = view;
                friend = frienduserdata;
                super();
            }
        });
        mFriendsSuggestionLayout.addView(friendLayoutInListLayout);
    }

    private void endDrivePopulateFriends()
    {
        int i = 0;
        if (mAddFriendsData != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        mFriendsSuggestionLayout.removeAllViews();
        if (mAddFriendsData.SuggestionFriends.length > 0)
        {
            Analytics.log("ADD_FRIENDS_OPTIONS_SHOWN", "VAUE", mAddFriendsData.SuggestionFriends.length);
        }
        FriendUserData afrienduserdata[] = mAddFriendsData.SuggestionFriends;
        int j = afrienduserdata.length;
        int k = 0;
        do
        {
label0:
            {
                if (k < j)
                {
                    break label0;
                }
                FriendUserData afrienduserdata1[] = mAddFriendsData.WaitingForApprovalFriends;
                int l = afrienduserdata1.length;
                while (i < l) 
                {
                    PendingAddFriend(afrienduserdata1[i]);
                    i++;
                }
            }
            if (true)
            {
                continue;
            }
            RecommendedAddFriend(afrienduserdata[k]);
            k++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void readFriendSuggestions()
    {
        DriveToNativeManager.getInstance().getAddFriendsData(new com.waze.navigate.DriveToNativeManager.AddFriendsListener() {

            final AddFriendsActivity this$0;

            public void onComplete(AddFriendsData addfriendsdata)
            {
                mAddFriendsData = addfriendsdata;
                boolean flag = false;
                if (mAddFriendsData == null || mAddFriendsData.SuggestionFriends.length == 0)
                {
                    findViewById(0x7f090079).setVisibility(8);
                    findViewById(0x7f09007a).setVisibility(8);
                } else
                {
                    findViewById(0x7f090079).setVisibility(0);
                    findViewById(0x7f09007a).setVisibility(0);
                    ((SettingsTitleText)findViewById(0x7f090079)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FRIENDS_SUGGESTIONS));
                    flag = true;
                }
                findViewById(0x7f090076).setVisibility(8);
                findViewById(0x7f090077).setVisibility(8);
                findViewById(0x7f090078).setVisibility(8);
                if (flag)
                {
                    endDrivePopulateFriends();
                }
            }

            
            {
                this$0 = AddFriendsActivity.this;
                super();
            }
        });
    }

    protected void facebookPrivacyClicked()
    {
        MyWazeNativeManager.getInstance().getFacebookSettings(new com.waze.mywaze.MyWazeNativeManager.FacebookCallback() {

            final AddFriendsActivity this$0;

            public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
            {
                Intent intent = new Intent(AddFriendsActivity.this, com/waze/mywaze/social/FacebookActivity);
                intent.putExtra("com.waze.mywaze.facebooksettings", facebooksettings);
                startActivityForResult(intent, 1004);
            }

            
            {
                this$0 = AddFriendsActivity.this;
                super();
            }
        });
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1002 && j == -1)
        {
            setResult(-1);
            finish();
            return;
        }
        if (i == 1004)
        {
            readFriendSuggestions();
            return;
        }
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        if (j == 201)
        {
            setResult(201);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        inflater = (LayoutInflater)getSystemService("layout_inflater");
        nativeManager = NativeManager.getInstance();
        setContentView(0x7f030007);
        ((TitleBar)findViewById(0x7f090073)).init(this, DisplayStrings.DS_ADD_FRIENDS);
        AddedFriendsLayout = (LinearLayout)findViewById(0x7f090077);
        mFriendsSuggestionLayout = (LinearLayout)findViewById(0x7f09007a);
        ((TextView)findViewById(0x7f090074)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ADD_FRIENDS_DESCRIPTION));
        ((DrillDownSettingView)findViewById(0x7f090075)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADD_FROM_CONTACTS));
        findViewById(0x7f090075).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsActivity this$0;

            public void onClick(View view)
            {
                Analytics.log("ADD_FRIENDS_OPTIONS_CONTACTS_CLICK", null, null);
                if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
                {
                    if (NativeManager.getInstance().IsAccessToContactsEnableNTV())
                    {
                        Intent intent1 = new Intent(AddFriendsActivity.this, com/waze/navigate/social/AddFromActivity);
                        intent1.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_DEFAULT);
                        startActivityForResult(intent1, 1001);
                        return;
                    } else
                    {
                        (new PhoneRequestAccessDialog(AddFriendsActivity.this, new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                            final _cls1 this$1;

                            public void onResult(boolean flag)
                            {
                                if (flag)
                                {
                                    NativeManager.bToUploadContacts = true;
                                    AddressBook.RequestSync(false);
                                    Intent intent = new Intent(_fld0, com/waze/navigate/social/AddFromActivity);
                                    intent.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_DEFAULT);
                                    startActivityForResult(intent, 1001);
                                }
                            }

            
            {
                this$1 = _cls1.this;
                super();
            }
                        })).show();
                        return;
                    }
                } else
                {
                    Intent intent = new Intent(AddFriendsActivity.this, com/waze/phone/PhoneNumberSignInActivity);
                    intent.putExtra("type", 1);
                    intent.putExtra("back", 1);
                    intent.putExtra("fon_shon_rea_son", "FEATURE");
                    startActivityForResult(intent, 1002);
                    return;
                }
            }


            
            {
                this$0 = AddFriendsActivity.this;
                super();
            }
        });
        readFriendSuggestions();
        ((SettingsTitleText)findViewById(0x7f09007b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MORE_OPTIONS));
        ((DrillDownSettingView)findViewById(0x7f09007c)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADD_FROM_FACEBOOK));
        findViewById(0x7f09007c).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsActivity this$0;

            public void onClick(View view)
            {
                Analytics.log("ADD_FRIENDS_OPTIONS_FACEBOOK_CLICK", null, null);
                facebookPrivacyClicked();
            }

            
            {
                this$0 = AddFriendsActivity.this;
                super();
            }
        });
        ((DrillDownSettingView)findViewById(0x7f09007d)).setVisibility(8);
        ((DrillDownSettingView)findViewById(0x7f09007d)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEARCH));
        findViewById(0x7f09007d).setOnClickListener(new android.view.View.OnClickListener() {

            final AddFriendsActivity this$0;

            public void onClick(View view)
            {
            }

            
            {
                this$0 = AddFriendsActivity.this;
                super();
            }
        });
        MyWazeNativeManager.getInstance().addFriendsChangedListener(this);
    }

    protected void onDestroy()
    {
        MyWazeNativeManager.getInstance().removeFriendsChangedListener(this);
        super.onDestroy();
    }

    public void onFriendsChanged()
    {
        if (viewToRemove != null)
        {
            AddedFriendsLayout.removeView(viewToRemove);
            viewToRemove = null;
            if (AddedFriendsLayout.getChildCount() == 0)
            {
                findViewById(0x7f090076).setVisibility(8);
                findViewById(0x7f090077).setVisibility(8);
                findViewById(0x7f090078).setVisibility(8);
            }
        }
        if (viewToConfirm != null)
        {
            ImageView imageview = (ImageView)viewToConfirm.findViewById(0x7f09008a);
            imageview.setOnClickListener(null);
            imageview.setImageResource(0x7f020171);
            viewToConfirm.findViewById(0x7f090089).setVisibility(8);
            viewToConfirm = null;
        }
    }




}
