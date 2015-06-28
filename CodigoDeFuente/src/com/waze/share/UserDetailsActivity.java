// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.messages.UserMessage;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.DriveToNavigateCallback;
import com.waze.navigate.social.EndDriveData;
import com.waze.navigate.social.MyShareDriveActivity;
import com.waze.navigate.social.ShareDrivingFriendsActivity;
import com.waze.navigate.social.ShareHelpActivity;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.settings.DrillDownSettingView;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.user.UserData;
import com.waze.utils.ImageRepository;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.share:
//            ShareUtility

public class UserDetailsActivity extends ActivityBase
    implements DriveToNavigateCallback
{

    private static final int RES_CODE_DIAL = 1004;
    private static final int RES_CODE_SHARE_HELP = 1002;
    private static final int RES_CODE_SHARING_INFO = 1003;
    private static final int RES_CODE_SIGN_IN = 1005;
    private static final int RES_CODE_STOP_SHARING = 1001;
    private String mImageUrl;
    private NativeManager mNm;
    private LinearLayout mReceivedLocation;
    private SettingsTitleText mReceivedLocationsTitleText;
    private PersonBase mUser;
    String sPhoneNumer;

    public UserDetailsActivity()
    {
        sPhoneNumer = null;
    }

    private void getDestinationData(String s, final WazeTextView toSet)
    {
        DriveToNativeManager.getInstance().getFriendsDriveData(new com.waze.navigate.DriveToNativeManager.EndDriveListener() {

            final UserDetailsActivity this$0;
            private final WazeTextView val$toSet;

            public void onComplete(EndDriveData enddrivedata)
            {
                if (enddrivedata != null)
                {
                    toSet.setText(enddrivedata.address);
                }
            }

            
            {
                this$0 = UserDetailsActivity.this;
                toSet = wazetextview;
                super();
            }
        }, s);
    }

    private View getSharedLocationsView(int i, int j, final AddressItem ai)
    {
        View view;
        view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f0300e8, null);
        TextView textview;
        String s;
        boolean flag;
        byte byte0;
        if (ai.getType().intValue() > 0)
        {
            ((ImageView)view.findViewById(0x7f09062c)).setImageResource(0x7f020194);
        } else
        {
            ((ImageView)view.findViewById(0x7f09062c)).setImageResource(0x7f020010);
        }
        textview = (TextView)view.findViewById(0x7f09062d);
        textview.setText(ai.getTitle());
        textview.setGravity(19);
        s = ai.getAddress();
        if (s != null && s.length() > 0 && !s.equals(ai.getTitle()))
        {
            TextView textview1 = (TextView)view.findViewById(0x7f09062e);
            textview1.setText(ai.getAddress());
            textview1.setGravity(19);
        } else
        {
            view.findViewById(0x7f09062e).setVisibility(8);
        }
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == j - 1)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        flag | byte0;
        JVM INSTR tableswitch 0 3: default 180
    //                   0 251
    //                   1 261
    //                   2 271
    //                   3 281;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        view.setPadding(0, 0, 0, 0);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final UserDetailsActivity this$0;
            private final AddressItem val$ai;

            public void onClick(View view1)
            {
                DriveToNativeManager.getInstance().navigate(ai, UserDetailsActivity.this);
            }

            
            {
                this$0 = UserDetailsActivity.this;
                ai = addressitem;
                super();
            }
        });
        return view;
_L2:
        view.setBackgroundResource(0x7f020224);
        continue; /* Loop/switch isn't completed */
_L3:
        view.setBackgroundResource(0x7f020226);
        continue; /* Loop/switch isn't completed */
_L4:
        view.setBackgroundResource(0x7f020223);
        continue; /* Loop/switch isn't completed */
_L5:
        view.setBackgroundResource(0x7f020225);
        if (true) goto _L1; else goto _L6
_L6:
    }

    private void inviteFriend()
    {
        int ai[] = new int[1];
        ai[0] = mUser.getID();
        String as[] = new String[1];
        as[0] = mUser.getPhone();
        if (mUser.getIsOnWaze())
        {
            String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
            Object aobj1[] = new Object[1];
            aobj1[0] = mUser.getName();
            String s3 = String.format(s2, aobj1);
            MyWazeNativeManager.getInstance().sendSocialAddFriends(ai, s3);
            return;
        } else
        {
            String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_INVITED);
            Object aobj[] = new Object[1];
            aobj[0] = mUser.getName();
            String s1 = String.format(s, aobj);
            MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s1);
            return;
        }
    }

    private void reallyRemoveFriend(PersonBase personbase)
    {
        int ai[] = new int[1];
        ai[0] = personbase.getID();
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_REMOVED);
        Object aobj[] = new Object[1];
        aobj[0] = personbase.getName();
        String s1 = String.format(s, aobj);
        MyWazeNativeManager.getInstance().sendSocialRemoveFriends(ai, s1);
        setResult(201);
        finish();
    }

    private void removeFriend(final PersonBase p)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final UserDetailsActivity this$0;
            private final PersonBase val$p;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    reallyRemoveFriend(p);
                }
            }

            
            {
                this$0 = UserDetailsActivity.this;
                p = personbase;
                super();
            }
        };
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_YOU_WANT_TO_REMOVE_PS_FROM_FRIENDS_LISTQ);
        Object aobj[] = new Object[1];
        aobj[0] = p.getName();
        String s1 = String.format(s, aobj);
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nativemanager.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), s1, true, onclicklistener, nativemanager.getLanguageString(DisplayStrings.DS_YES), nativemanager.getLanguageString(DisplayStrings.DS_NO), -1);
    }

    private void showErrorPopup(DisplayStrings displaystrings)
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final UserDetailsActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                setResult(0);
                finish();
            }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
        };
        MsgBox.openMessageBoxWithCallback(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(displaystrings), false, onclicklistener);
    }

    public void navigateCallback(int i)
    {
        Log.d("WAZE", (new StringBuilder("navigateCallback:rc=")).append(i).toString());
        setResult(-1);
        finish();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 0x10012 || j != -1) goto _L2; else goto _L1
_L1:
        NativeManager.bToUploadContacts = true;
        AddressBook.RequestSync(false);
        if (NativeManager.getInstance().isNavigatingNTV())
        {
            ShareUtility.ShareType sharetype = ShareUtility.ShareType.ShareType_ShareDrive;
            PersonBase apersonbase[] = new PersonBase[1];
            apersonbase[0] = mUser;
            ShareUtility.OpenShareActivity(sharetype, null, null, apersonbase);
        } else
        {
            startActivityForResult(new Intent(this, com/waze/navigate/social/ShareHelpActivity), 1002);
        }
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == -1)
        {
            setResult(-1);
            finish();
        } else
        if (j == 3)
        {
            if (i == 1001)
            {
                setResult(3);
            } else
            {
                setResult(0);
            }
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mNm = NativeManager.getInstance();
        requestWindowFeature(1);
        setContentView(0x7f03005d);
        mUser = (PersonBase)getIntent().getExtras().getSerializable("FriendUserData");
        sPhoneNumer = null;
        String s;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        final boolean bSharingMyDrive;
        ImageView imageview;
        DrillDownSettingView drilldownsettingview;
        DrillDownSettingView drilldownsettingview1;
        if (mUser instanceof FriendUserData)
        {
            FriendUserData frienduserdata = (FriendUserData)mUser;
            s = frienduserdata.statusLine;
            flag1 = frienduserdata.mAllowBeepBeep;
            flag2 = frienduserdata.mAllowPrivatePing;
            flag3 = frienduserdata.mIsPendingFriend;
            if (frienduserdata.mContactID != -1)
            {
                Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                if (person != null)
                {
                    sPhoneNumer = person.getPhone();
                }
            }
            android.view.View.OnClickListener onclicklistener;
            DriveToNativeManager drivetonativemanager;
            int i;
            com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback drivetogetaddressitemarraycallback;
            View view;
            android.view.View.OnClickListener onclicklistener1;
            NativeManager nativemanager;
            android.view.View.OnClickListener onclicklistener3;
            View view1;
            android.view.View.OnClickListener onclicklistener4;
            View view2;
            android.view.View.OnClickListener onclicklistener5;
            View view3;
            android.view.View.OnClickListener onclicklistener6;
            View view4;
            WazeTextView wazetextview;
            android.view.View.OnClickListener onclicklistener7;
            String s1;
            if (frienduserdata.mMeetingIdSharedByMe.length() > 0)
            {
                bSharingMyDrive = true;
            } else
            {
                bSharingMyDrive = false;
            }
            if (frienduserdata.mMeetingIdSharedWithMe.length() > 0)
            {
                flag4 = true;
            } else
            {
                flag4 = false;
            }
        } else
        {
            boolean flag = mUser instanceof UserData;
            s = null;
            if (flag)
            {
                s = ((UserData)mUser).mLastReportText;
            }
            sPhoneNumer = mUser.getPhone();
            flag1 = false;
            flag2 = false;
            flag3 = false;
            flag4 = false;
            bSharingMyDrive = false;
        }
        ((TitleBar)findViewById(0x7f0902d1)).init(this, DisplayStrings.DS_FRIEND);
        mImageUrl = mUser.getImage();
        if (mImageUrl != null && !mImageUrl.isEmpty())
        {
            s1 = Uri.parse(mImageUrl).getScheme();
            if (s1 == null || !s1.equals("content"))
            {
                mImageUrl = DriveToNativeManager.getInstance().getFriendImageNTV(mUser.getID(), (int)(80F * getResources().getDisplayMetrics().density));
            }
        }
        imageview = (ImageView)findViewById(0x7f0902d4);
        if (mUser instanceof UserData)
        {
            imageview.setImageDrawable(MoodManager.getMoodDrawable(this, ((UserData)mUser).mMood));
        } else
        {
            imageview.setVisibility(8);
        }
        ((WazeTextView)findViewById(0x7f0902d5)).setText(mUser.getName());
        ((WazeTextView)findViewById(0x7f0902d6)).setText(s);
        if (flag4)
        {
            view4 = findViewById(0x7f0902d7);
            view4.setVisibility(0);
            ((WazeTextView)findViewById(0x7f0902d9)).setText((new StringBuilder(String.valueOf(mNm.getLanguageString(DisplayStrings.DS_IM_ON_THE_WAY_TO)))).append(" - ").toString());
            wazetextview = (WazeTextView)findViewById(0x7f0902da);
            wazetextview.setText("");
            getDestinationData(((FriendUserData)mUser).mMeetingIdSharedWithMe, wazetextview);
            onclicklistener7 = new android.view.View.OnClickListener() {

                final UserDetailsActivity this$0;

                public void onClick(View view5)
                {
                    Analytics.log("FRIEND_PROFILE_SHARING_DRIVE_WITH_ME_CLICKED", null, null);
                    Intent intent = new Intent(UserDetailsActivity.this, com/waze/navigate/social/ShareDrivingFriendsActivity);
                    intent.putExtra("meeting", ((FriendUserData)mUser).mMeetingIdSharedWithMe);
                    startActivityForResult(intent, 1003);
                }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
            };
            view4.setOnClickListener(onclicklistener7);
        }
        ((SettingsTitleText)findViewById(0x7f0902db)).setText(mNm.getLanguageString(DisplayStrings.DS_GET_IN_TOUCH));
        if (sPhoneNumer != null)
        {
            ((DrillDownSettingView)findViewById(0x7f0902e0)).setVisibility(0);
            ((DrillDownSettingView)findViewById(0x7f0902e0)).setText(mNm.getLanguageString(DisplayStrings.DS_CALL));
            view3 = findViewById(0x7f0902e0);
            onclicklistener6 = new android.view.View.OnClickListener() {

                final UserDetailsActivity this$0;

                public void onClick(View view5)
                {
                    Intent intent = new Intent("android.intent.action.DIAL");
                    intent.setData(Uri.parse((new StringBuilder("tel:")).append(sPhoneNumer).toString()));
                    startActivityForResult(intent, 1004);
                }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
            };
            view3.setOnClickListener(onclicklistener6);
        } else
        {
            ((DrillDownSettingView)findViewById(0x7f0902e0)).setVisibility(8);
        }
        drilldownsettingview = (DrillDownSettingView)findViewById(0x7f0902dc);
        drilldownsettingview.setVisibility(0);
        if (bSharingMyDrive)
        {
            drilldownsettingview.setText(mNm.getLanguageString(DisplayStrings.DS_ON_YOUR_SHARED_DRIVE));
            findViewById(0x7f0902dd).setVisibility(0);
        } else
        {
            drilldownsettingview.setText(mNm.getLanguageString(DisplayStrings.DS_SHARE_MY_DRIVE));
            findViewById(0x7f0902dd).setVisibility(8);
        }
        onclicklistener = new android.view.View.OnClickListener() {

            final UserDetailsActivity this$0;
            private final boolean val$bSharingMyDrive;

            private void doShare(boolean flag5)
            {
                boolean flag6 = NativeManager.getInstance().isNavigatingNTV();
                if (flag5)
                {
                    Analytics.log("FRIEND_PROFILE_SHARING_MY_DRIVE_CLICKED", null, null);
                    Intent intent1 = new Intent(UserDetailsActivity.this, com/waze/navigate/social/MyShareDriveActivity);
                    intent1.putExtra("meeting", ((FriendUserData)mUser).mMeetingIdSharedByMe);
                    startActivityForResult(intent1, 1001);
                    return;
                }
                if (flag6)
                {
                    Analytics.log("FRIEND_PROFILE_SHARE_DRIVE_CLICKED", null, null);
                    ShareUtility.ShareType sharetype = ShareUtility.ShareType.ShareType_ShareDrive;
                    PersonBase apersonbase[] = new PersonBase[1];
                    apersonbase[0] = mUser;
                    ShareUtility.OpenShareActivity(sharetype, null, null, apersonbase);
                    return;
                } else
                {
                    Intent intent = new Intent(UserDetailsActivity.this, com/waze/navigate/social/ShareHelpActivity);
                    startActivityForResult(intent, 1002);
                    return;
                }
            }

            public void onClick(View view5)
            {
                if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
                {
                    if (NativeManager.getInstance().IsAccessToContactsEnableNTV())
                    {
                        doShare(bSharingMyDrive);
                        return;
                    } else
                    {
                        (new PhoneRequestAccessDialog(UserDetailsActivity.this, bSharingMyDrive. new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                            final _cls3 this$1;
                            private final boolean val$bSharingMyDrive;

                            public void onResult(boolean flag)
                            {
                                if (flag)
                                {
                                    doShare(bSharingMyDrive);
                                }
                            }

            
            {
                this$1 = final__pcls3;
                bSharingMyDrive = Z.this;
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


            
            {
                this$0 = UserDetailsActivity.this;
                bSharingMyDrive = flag;
                super();
            }
        };
        drilldownsettingview.setOnClickListener(onclicklistener);
        if (mUser instanceof FriendUserData)
        {
            ((DrillDownSettingView)findViewById(0x7f0902df)).setText(mNm.getLanguageString(DisplayStrings.DS_MESSAGE));
            ((DrillDownSettingView)findViewById(0x7f0902de)).setText(mNm.getLanguageString(DisplayStrings.DS_BEEP_BEEP));
            view1 = findViewById(0x7f0902de);
            onclicklistener4 = new android.view.View.OnClickListener() {

                final UserDetailsActivity this$0;

                public void onClick(View view5)
                {
                    if (!AppService.isNetworkAvailable())
                    {
                        showErrorPopup(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER);
                        return;
                    } else
                    {
                        Analytics.log("BEEP_BEEP_CLICK_FROM", "VAUE", "FRIENDS_LIST");
                        mNm.SendBeepBeep(((UserData)mUser).mLongitude, ((UserData)mUser).mLatitude, ((UserData)mUser).mAzimuth, ((UserData)mUser).mID, new com.waze.NativeManager.IResultCode() {

                            final _cls4 this$1;

                            public void onResult(int i)
                            {
                                if (i >= 0)
                                {
                                    setResult(-1);
                                    finish();
                                }
                            }

            
            {
                this$1 = _cls4.this;
                super();
            }
                        });
                        return;
                    }
                }


            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
            };
            view1.setOnClickListener(onclicklistener4);
            view2 = findViewById(0x7f0902df);
            onclicklistener5 = new android.view.View.OnClickListener() {

                final UserDetailsActivity this$0;

                public void onClick(View view5)
                {
                    UserMessage.startPrivate(UserDetailsActivity.this, (UserData)mUser);
                }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
            };
            view2.setOnClickListener(onclicklistener5);
            if (!flag1 && !flag2)
            {
                findViewById(0x7f0902db).setVisibility(8);
            }
            if (!flag1)
            {
                findViewById(0x7f0902de).setVisibility(8);
            }
            if (!flag2)
            {
                findViewById(0x7f0902df).setVisibility(8);
            }
        } else
        {
            findViewById(0x7f0902db).setVisibility(8);
            findViewById(0x7f0902de).setVisibility(8);
            findViewById(0x7f0902df).setVisibility(8);
        }
        findViewById(0x7f0902e3).setVisibility(8);
        mReceivedLocationsTitleText = (SettingsTitleText)findViewById(0x7f0902e1);
        mReceivedLocationsTitleText.setText(mNm.getLanguageString(DisplayStrings.DS_NAVIGATE));
        ((TextView)findViewById(0x7f0902e4)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_RECEIVED_LOCATIONS_ARE_SAVED_HERE));
        mReceivedLocation = (LinearLayout)findViewById(0x7f0902e2);
        drivetonativemanager = DriveToNativeManager.getInstance();
        i = mUser.getID();
        drivetogetaddressitemarraycallback = new com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

            final UserDetailsActivity this$0;

            public void getAddressItemArrayCallback(AddressItem aaddressitem[])
            {
                if (aaddressitem == null || aaddressitem.length == 0)
                {
                    mReceivedLocationsTitleText.setVisibility(8);
                    mReceivedLocation.setVisibility(8);
                    ((TextView)findViewById(0x7f0902e4)).setVisibility(8);
                    return;
                } else
                {
                    mReceivedLocationsTitleText.setVisibility(0);
                    mReceivedLocation.setVisibility(0);
                    ((TextView)findViewById(0x7f0902e4)).setVisibility(0);
                    populateReceivedLocations(aaddressitem);
                    return;
                }
            }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
        };
        drivetonativemanager.getFriendsSharedPlaces(i, drivetogetaddressitemarraycallback);
        ((DrillDownSettingView)findViewById(0x7f0902e3)).setText(mNm.getLanguageString(DisplayStrings.DS_REQUEST_LOCATION));
        view = findViewById(0x7f0902e3);
        onclicklistener1 = new android.view.View.OnClickListener() {

            final UserDetailsActivity this$0;

            public void onClick(View view5)
            {
                if (!AppService.isNetworkAvailable())
                {
                    showErrorPopup(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER);
                }
            }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
        };
        view.setOnClickListener(onclicklistener1);
        ((SettingsTitleText)findViewById(0x7f0902e5)).setText(mNm.getLanguageString(DisplayStrings.DS_MANAGE));
        drilldownsettingview1 = (DrillDownSettingView)findViewById(0x7f0902e6);
        if (mUser instanceof FriendUserData)
        {
            nativemanager = mNm;
            DisplayStrings displaystrings;
            if (flag3)
            {
                displaystrings = DisplayStrings.DS_CANCEL_FRIEND_REQUEST;
            } else
            {
                displaystrings = DisplayStrings.DS_REMOVE_FRIEND;
            }
            drilldownsettingview1.setText(nativemanager.getLanguageString(displaystrings));
            drilldownsettingview1.setTextColor(0xffff0000);
            onclicklistener3 = new android.view.View.OnClickListener() {

                final UserDetailsActivity this$0;

                public void onClick(View view5)
                {
                    if (!AppService.isNetworkAvailable())
                    {
                        showErrorPopup(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER);
                        return;
                    } else
                    {
                        removeFriend(mUser);
                        return;
                    }
                }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
            };
            drilldownsettingview1.setOnClickListener(onclicklistener3);
            return;
        }
        android.view.View.OnClickListener onclicklistener2;
        if (mUser.getIsOnWaze())
        {
            drilldownsettingview1.setText(mNm.getLanguageString(DisplayStrings.DS_ADD_AS_A_FRIEND));
        } else
        {
            drilldownsettingview1.setText(mNm.getLanguageString(DisplayStrings.DS_INVITE_TO_WAZE));
        }
        onclicklistener2 = new android.view.View.OnClickListener() {

            final UserDetailsActivity this$0;

            public void onClick(View view5)
            {
                if (!AppService.isNetworkAvailable())
                {
                    showErrorPopup(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER);
                    return;
                } else
                {
                    inviteFriend();
                    return;
                }
            }

            
            {
                this$0 = UserDetailsActivity.this;
                super();
            }
        };
        drilldownsettingview1.setOnClickListener(onclicklistener2);
    }

    protected void onResume()
    {
        super.onResume();
        ImageView imageview = (ImageView)findViewById(0x7f0902d3);
        imageview.setImageResource(0x7f0203a3);
        ImageRepository.instance.getImage(mImageUrl, imageview, this);
    }

    protected void populateReceivedLocations(AddressItem aaddressitem[])
    {
        mReceivedLocation.removeAllViews();
        int i = 0;
        do
        {
            if (i >= aaddressitem.length)
            {
                return;
            }
            View view = getSharedLocationsView(i, aaddressitem.length, aaddressitem[i]);
            mReceivedLocation.addView(view);
            android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
            layoutparams.height = (int)getResources().getDimension(0x7f0b001f);
            view.setLayoutParams(layoutparams);
            i++;
        } while (true);
    }








}
