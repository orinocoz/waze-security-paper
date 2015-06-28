// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.MapView;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.Person;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.phone.AddressBook;
import com.waze.share.UserDetailsActivity;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, AddFromActivity, FriendsListData

public class MyShareDriveActivity extends ActivityBase
    implements com.waze.NativeManager.IRefreshFriendsDrivingData
{

    public static final int REQUEST_ADD_DRIVE_SHARE = 2001;
    private boolean IsSetMeeting;
    ArrayAdapter adapter;
    private boolean bIsDriving;
    private DriveToNativeManager dtnm;
    private ImageView increaseMapButton;
    private Button increaseMapOverlay;
    private boolean isDayMode;
    private boolean isMapBig;
    private ImageView leftCorner;
    private ArrayList mFriendsArray;
    private LinearLayout mFriendsLayout;
    private FriendsListData mFriendsListData;
    private boolean mIsChecked;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final MyShareDriveActivity this$0;

        public void event()
        {
            if (!IsSetMeeting)
            {
                dtnm.setMeeting(sMeeting);
                IsSetMeeting = true;
            }
        }

            
            {
                this$0 = MyShareDriveActivity.this;
                super();
            }
    };
    protected String mShareOwner;
    int mType;
    String mUrl;
    private RelativeLayout mapLayout;
    private RelativeLayout mapPlaceholder;
    private MapView mapView;
    private NativeManager nm;
    ArrayList people;
    private ImageView rightCorner;
    String sMeeting;
    protected TextView shareDriveSwitch;

    public MyShareDriveActivity()
    {
        mUrl = null;
        mType = 0;
        sMeeting = null;
        mFriendsListData = null;
        IsSetMeeting = false;
        isMapBig = false;
        mIsChecked = true;
        mFriendsArray = new ArrayList();
        bIsDriving = false;
    }

    private void addAddMoreFriends()
    {
        View view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f030008, null);
        ((TextView)view.findViewById(0x7f090086)).setText(nm.getLanguageString(DisplayStrings.DS_ADD_MORE_PEOPLE));
        view.findViewById(0x7f090087).setVisibility(8);
        view.findViewById(0x7f09007f).setVisibility(4);
        view.findViewById(0x7f090082).setVisibility(8);
        view.findViewById(0x7f090080).setVisibility(4);
        view.findViewById(0x7f090084).setVisibility(0);
        ImageView imageview = (ImageView)view.findViewById(0x7f09008a);
        view.findViewById(0x7f090089).setVisibility(8);
        imageview.setVisibility(8);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final MyShareDriveActivity this$0;

            public void onClick(View view1)
            {
                Analytics.log("SHARE_ADD_FRIENDS_CLICK", null, null);
                Intent intent = new Intent(MyShareDriveActivity.this, com/waze/navigate/social/AddFromActivity);
                intent.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_SHARE);
                intent.putExtra("type", 1);
                startActivityForResult(intent, 2001);
            }

            
            {
                this$0 = MyShareDriveActivity.this;
                super();
            }
        });
        mFriendsLayout.addView(view);
    }

    private void addFriend(final PersonBase p)
    {
        final FriendUserData fud = (FriendUserData)p;
        View view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f030008, null);
        AddFriendsUtils.setNameAndImage(this, view, fud.getName(), fud.getImage());
        View view1;
        int i;
        ImageView imageview;
        View view2;
        if (fud.sharestatusLine == null || fud.sharestatusLine.length() == 0)
        {
            if (fud.statusLine == null || fud.statusLine.length() == 0)
            {
                view.findViewById(0x7f090087).setVisibility(8);
            } else
            {
                view.findViewById(0x7f090087).setVisibility(0);
                ((TextView)view.findViewById(0x7f090087)).setText(fud.statusLine);
            }
        } else
        {
            view.findViewById(0x7f090087).setVisibility(0);
            ((TextView)view.findViewById(0x7f090087)).setText(fud.sharestatusLine);
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
        view2 = view.findViewById(0x7f090089);
        if (!fud.mIsFriend && !fud.mIsPendingFriend && !fud.mIsFbFriend)
        {
            view.setOnClickListener(null);
            view2.setVisibility(8);
            imageview.setVisibility(0);
            imageview.setImageResource(0x7f020009);
            imageview.setOnClickListener(new android.view.View.OnClickListener() {

                final MyShareDriveActivity this$0;
                private final FriendUserData val$fud;
                private final PersonBase val$p;

                public void onClick(View view3)
                {
                    if (p.getID() != -1)
                    {
                        int ai1[] = new int[1];
                        ai1[0] = p.getID();
                        String s2 = nm.getLanguageString(DisplayStrings.DS_PS_ADDED);
                        Object aobj1[] = new Object[1];
                        aobj1[0] = p.getName();
                        String s3 = String.format(s2, aobj1);
                        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai1, s3);
                    } else
                    if (fud.mContactID >= 0)
                    {
                        Person person = AddressBook.GetPersonFromID(fud.mContactID);
                        if (person != null)
                        {
                            int ai[] = new int[1];
                            String as[] = new String[1];
                            ai[0] = person.getID();
                            as[0] = person.getPhone();
                            String s = nm.getLanguageString(DisplayStrings.DS_PS_INVITED);
                            Object aobj[] = new Object[1];
                            aobj[0] = person.getName();
                            String s1 = String.format(s, aobj);
                            MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s1);
                            return;
                        }
                    }
                }

            
            {
                this$0 = MyShareDriveActivity.this;
                p = personbase;
                fud = frienduserdata;
                super();
            }
            });
        } else
        if (fud.mIsPendingFriend)
        {
            view.setOnClickListener(null);
            view2.setVisibility(8);
            imageview.setVisibility(8);
        } else
        {
            view2.setVisibility(8);
            imageview.setVisibility(8);
        }
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final MyShareDriveActivity this$0;
            private final PersonBase val$p;

            public void onClick(View view3)
            {
                Intent intent = new Intent(MyShareDriveActivity.this, com/waze/share/UserDetailsActivity);
                intent.putExtra("FriendUserData", p);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = MyShareDriveActivity.this;
                p = personbase;
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
        mFriendsLayout.addView(view);
    }

    private void friendsListPopulateFriends()
    {
        if (mFriendsArray != null && !mFriendsArray.isEmpty())
        {
            Iterator iterator = mFriendsArray.iterator();
            while (iterator.hasNext()) 
            {
                addFriend((PersonBase)iterator.next());
            }
        }
    }

    private void setMapLayoutListener(View view)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(view.getMeasuredWidth(), view.getMeasuredHeight());
        layoutparams.topMargin = view.getTop();
        layoutparams.leftMargin = view.getLeft();
        mapLayout.setLayoutParams(layoutparams);
    }

    void addToMeeting(ArrayList arraylist)
    {
        if (arraylist != null && !arraylist.isEmpty()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int ai[] = new int[arraylist.size()];
        String as[] = new String[arraylist.size()];
        int ai1[] = new int[arraylist.size()];
        String as1[] = new String[arraylist.size()];
        int i = 0;
        int j = 0;
        Iterator iterator = arraylist.iterator();
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    break label0;
                }
                Analytics.log("SHARE_SENT", null, null);
                if (i > 0)
                {
                    NativeManager.getInstance().AddToMeeting(ai, i, as1, false);
                }
                if (j > 0)
                {
                    NativeManager.getInstance().InviteToMeeting(as, ai1, j, 4);
                    return;
                }
            }
            if (true)
            {
                continue;
            }
            PersonBase personbase = (PersonBase)iterator.next();
            if (!personbase.getIsOnWaze())
            {
                as[j] = personbase.getPhone();
                ai1[j] = personbase.getID();
                j++;
            } else
            {
                as1[i] = personbase.getPhone();
                ai[i] = personbase.getID();
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void increaseMapClicked(View view)
    {
        if (isMapBig)
        {
            isMapBig = false;
            mapView.setHandleTouch(false);
            increaseMapOverlay.setVisibility(0);
            increaseMapButton.setImageResource(0x7f02024e);
            setMapLayoutListener(mapPlaceholder);
            dtnm.setMapMode(true);
            return;
        } else
        {
            isMapBig = true;
            mapView.setHandleTouch(true);
            increaseMapOverlay.setVisibility(8);
            increaseMapButton.setImageResource(0x7f020248);
            setMapLayoutListener(findViewById(0x7f09042f));
            dtnm.setMapMode(false);
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 2001 || j != -1) goto _L2; else goto _L1
_L1:
        addToMeeting((ArrayList)intent.getExtras().getSerializable(AddFromActivity.INTENT_SELECTED));
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
        nm = NativeManager.getInstance();
        dtnm = DriveToNativeManager.getInstance();
        requestWindowFeature(1);
        setRequestedOrientation(1);
        setContentView(0x7f03008e);
        Analytics.log("MY_SHARED_DRIVE_SHOWN", null, null);
        ((TitleBar)findViewById(0x7f090430)).init(this, nm.getLanguageString(DisplayStrings.DS_SHARED_DRIVE_TITLE));
        mType = getIntent().getIntExtra("type", 0);
        sMeeting = getIntent().getStringExtra("meeting");
        ((TextView)findViewById(0x7f090431)).setText(nm.getLanguageString(DisplayStrings.DS_SHARED_DRIVE_STATUS_BAR));
        ((TextView)findViewById(0x7f090435)).setText(nm.getLanguageString(DisplayStrings.DS_STOP_SHARING));
        if (sMeeting != null) goto _L2; else goto _L1
_L1:
        findViewById(0x7f090433).setVisibility(8);
_L4:
        mFriendsLayout = (LinearLayout)findViewById(0x7f090434);
        mapPlaceholder = (RelativeLayout)findViewById(0x7f090432);
        mapLayout = (RelativeLayout)findViewById(0x7f090436);
        mapPlaceholder.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final MyShareDriveActivity this$0;

            public void onGlobalLayout()
            {
                android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(mapPlaceholder.getMeasuredWidth(), mapPlaceholder.getMeasuredHeight());
                layoutparams.topMargin = mapPlaceholder.getTop();
                layoutparams.leftMargin = mapPlaceholder.getLeft();
                mapLayout.setLayoutParams(layoutparams);
                mapPlaceholder.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }

            
            {
                this$0 = MyShareDriveActivity.this;
                super();
            }
        });
        increaseMapOverlay = (Button)findViewById(0x7f090439);
        mapView = (MapView)findViewById(0x7f090437);
        mapView.setHandleTouch(false);
        increaseMapOverlay.setVisibility(0);
        mapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        findViewById(0x7f090435).setOnClickListener(new android.view.View.OnClickListener() {

            final MyShareDriveActivity this$0;

            public void onClick(View view)
            {
                stopMeeting();
            }

            
            {
                this$0 = MyShareDriveActivity.this;
                super();
            }
        });
        isDayMode = dtnm.isDayMode();
        increaseMapButton = (ImageView)findViewById(0x7f090438);
        increaseMapButton.setImageResource(0x7f02024e);
        return;
_L2:
        if (nm.isMeetingActiveNTV(sMeeting))
        {
            bIsDriving = true;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onPause()
    {
        super.onPause();
        mapView.onPause();
        IsSetMeeting = false;
        dtnm.unsetMeeting();
    }

    public void onRefresh()
    {
        dtnm.getMySharedDriveUsers(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final MyShareDriveActivity this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                mFriendsListData = friendslistdata;
                mFriendsArray.clear();
                mFriendsLayout.removeAllViews();
                if (mFriendsListData == null) goto _L2; else goto _L1
_L1:
                if (mFriendsListData.friends == null) goto _L4; else goto _L3
_L3:
                FriendUserData afrienduserdata[];
                int i;
                int j;
                afrienduserdata = mFriendsListData.friends;
                i = afrienduserdata.length;
                j = 0;
_L7:
                if (j < i) goto _L5; else goto _L4
_L4:
                friendsListPopulateFriends();
_L2:
                addAddMoreFriends();
                return;
_L5:
                FriendUserData frienduserdata = afrienduserdata[j];
                if (frienduserdata.mContactID != -1)
                {
                    Person person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                    if (person != null && person.getImage() != null)
                    {
                        frienduserdata.setImage(person.getImage());
                    }
                }
                mFriendsArray.add(frienduserdata);
                j++;
                if (true) goto _L7; else goto _L6
_L6:
            }

            
            {
                this$0 = MyShareDriveActivity.this;
                super();
            }
        });
    }

    protected void onResume()
    {
        super.onResume();
        mapView.onResume();
    }

    void stopMeeting()
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final MyShareDriveActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (i == 1)
                {
                    Analytics.log("MY_SHARED_DRIVE_STOP_SHARING", "VAUE", sMeeting);
                    nm.StopFollow();
                    setResult(3);
                    finish();
                }
            }

            
            {
                this$0 = MyShareDriveActivity.this;
                super();
            }
        };
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nm.getLanguageString(DisplayStrings.DS_CONFIRM_STOP_FOLLOW_TITLE), nm.getLanguageString(DisplayStrings.DS_CONFIRM_STOP_FOLLOW_BODY), true, onclicklistener, nm.getLanguageString(DisplayStrings.DS_YES), nm.getLanguageString(DisplayStrings.DS_NO), -1);
    }












}
