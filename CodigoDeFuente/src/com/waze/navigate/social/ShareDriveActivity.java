// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.waze.MapView;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.ContactsCompletionView;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.LocationData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.share.ShareUtility;
import com.waze.social.AddFriendDialog;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.utils.EditTextUtils;
import com.waze.utils.ImageRepository;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity, FriendsListData

public class ShareDriveActivity extends ActivityBase
    implements com.tokenautocomplete.TokenCompleteTextView.TokenListener, android.widget.AdapterView.OnItemClickListener, com.waze.mywaze.MyWazeNativeManager.IFriendsChanged
{

    private static final String TAG = com/waze/navigate/social/ShareDriveActivity.getName();
    private static boolean USE_PEOPLE_APP_DATA = true;
    public static boolean bIsFollow = false;
    private static boolean mAskToAddFriend = true;
    private AddFriendDialog mAddFriendDialog;
    private AddressItem mAddress;
    private PersonBase mAskToAdd;
    private com.waze.NativeManager.PeopleAppData mAskToAddData;
    private ContactsCompletionView mCompletionView;
    private View mCompletionViewContainer;
    private SparseArray mContactsByUid;
    private SparseArray mCurFriendsUids;
    private float mDensity;
    private TextView mDoneBtn;
    private boolean mDoneButtonActive;
    private boolean mDontScroll;
    private DriveToNativeManager mDriveTo;
    private ListView mFriendsListView;
    private boolean mIsPortrait;
    private View mListHeaderMapDetailsView;
    private View mListHeaderSeachBoxView;
    private View mListHeaderView;
    private int mLocContHeight;
    private LocationData mLocation;
    private MapView mMapView;
    private View mMoreBtn;
    private NativeManager mNatMgr;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final ShareDriveActivity this$0;

        public void event()
        {
            if (mType == 0)
            {
                mDriveTo.setMeeting("");
                return;
            } else
            {
                mDriveTo.setAddressOptionsView(0, mLocation.locationX, mLocation.locationY, true);
                postDelayed(new Runnable() {

                    final _cls1 this$1;

                    public void run()
                    {
                        if (mIsPortrait)
                        {
                            mDriveTo.zoomOnMap(mLocation.locationX, mLocation.locationY, 500);
                            return;
                        } else
                        {
                            mDriveTo.zoomOnMap(mLocation.locationX, 500 + mLocation.locationY, 500);
                            return;
                        }
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                }, 100L);
                return;
            }
        }


            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
    };
    private int mNumSuggestions;
    private ArrayList mPersonArray;
    private AddFromActivity.PersonArrayAdapter mPersonArrayAdapter;
    private AddFromActivity.PersonFilteredArrayAdapter mPersonFilteredArrayAdapter;
    private SparseArray mPreSelected;
    private HorizontalScrollView mSearchScroll;
    private View mShareDetailsView;
    private SparseArray mSuggested;
    private TitleBar mTitleBar;
    int mType;
    String mUrl;
    ArrayList people;

    public ShareDriveActivity()
    {
        mUrl = null;
        mType = 0;
        mLocation = null;
        mAddress = null;
        mPreSelected = new SparseArray();
        mSuggested = new SparseArray();
        mDontScroll = false;
        mAskToAddData = null;
        mDoneButtonActive = false;
    }

    private void askToAddAFriend(final PersonBase askToAdd)
    {
        if (USE_PEOPLE_APP_DATA)
        {
            if (mAskToAddData == null)
            {
                mAskToAddData = new com.waze.NativeManager.PeopleAppData();
                mAskToAddData.friendship_suggest_count = 1;
            } else
            {
                com.waze.NativeManager.PeopleAppData peopleappdata = mAskToAddData;
                peopleappdata.friendship_suggest_count = 1 + peopleappdata.friendship_suggest_count;
            }
            mNatMgr.setPeopleAppDataNTV(askToAdd.getID(), askToAdd.getIsOnWaze(), mAskToAddData);
        }
        mAddFriendDialog = new AddFriendDialog(this, askToAdd, new com.waze.social.AddFriendDialog.IAddFriendDialog() {

            final ShareDriveActivity this$0;
            private final PersonBase val$askToAdd;

            public void onNotNowClicked()
            {
                ShareDriveActivity.mAskToAddFriend = false;
                mAddFriendDialog.dismiss();
                Analytics.log("ASK_FRIENDSHIP_FROM_SHARE", "ACTION", "NOT_NOW");
            }

            public void onSendRequestClicked()
            {
                if (askToAdd.getIsOnWaze())
                {
                    int ai1[] = new int[1];
                    ai1[0] = mAskToAdd.getID();
                    if (ai1[0] != 0)
                    {
                        String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
                        Object aobj1[] = new Object[1];
                        aobj1[0] = askToAdd.getName();
                        String s3 = String.format(s2, aobj1);
                        MyWazeNativeManager.getInstance().sendSocialAddFriends(ai1, s3);
                    }
                } else
                {
                    String as[] = new String[1];
                    int ai[] = new int[1];
                    as[0] = askToAdd.getPhone();
                    ai[0] = askToAdd.getID();
                    String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_INVITED);
                    Object aobj[] = new Object[1];
                    aobj[0] = askToAdd.getName();
                    String s1 = String.format(s, aobj);
                    MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s1);
                }
                mAddFriendDialog.dismiss();
                Analytics.log("ASK_FRIENDSHIP_FROM_SHARE", "ACTION", "SEND");
            }

            
            {
                this$0 = ShareDriveActivity.this;
                askToAdd = personbase;
                super();
            }
        });
        mAddFriendDialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final ShareDriveActivity this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                SendMeeting();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mAddFriendDialog.show();
    }

    private void closeKeyboard()
    {
        mTitleBar.setCloseText(null);
        mTitleBar.setCloseVisibility(false);
        EditTextUtils.closeKeyboard(this, mCompletionView);
    }

    private void friendsListPopulateFriends()
    {
        if (mPersonArray != null)
        {
            mPersonArrayAdapter = new AddFromActivity.PersonArrayAdapter(this, mPersonArray, mNumSuggestions, true);
            mPersonArrayAdapter.setHeaderColors(0xffedf5f7, 0xff888888);
            mFriendsListView.setAdapter(mPersonArrayAdapter);
            mFriendsListView.setOnItemClickListener(this);
            mPersonFilteredArrayAdapter = new AddFromActivity.PersonFilteredArrayAdapter(this, mPersonArray);
            mCompletionView.setAdapter(mPersonFilteredArrayAdapter);
            mCompletionView.setTokenListener(this);
            Iterator iterator = mCompletionView.getObjects().iterator();
            while (iterator.hasNext()) 
            {
                PersonBase personbase = (PersonBase)iterator.next();
                mPersonArrayAdapter.setSelected(personbase.getID());
            }
        }
    }

    private void loadPersonArray()
    {
        mPersonArray = new ArrayList();
        AddFromActivity.getFriendsDataFromShare(mPersonArray, mPreSelected, mSuggested, new AddFromActivity.IOnReadDone() {

            final ShareDriveActivity this$0;

            public void onReadDone(int i, ArrayList arraylist)
            {
                mNumSuggestions = i;
                friendsListPopulateFriends();
                Iterator iterator = arraylist.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        return;
                    }
                    PersonBase personbase = (PersonBase)iterator.next();
                    mCompletionView.addObject(personbase);
                } while (true);
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
    }

    private void onScrollChanged()
    {
        View view = mFriendsListView.getChildAt(0);
        View view1 = findViewById(0x7f090690);
        int i;
        if (view == null)
        {
            i = 0;
        } else
        {
            i = view.getTop();
        }
        if (!mIsPortrait)
        {
            if (i < -50 || mFriendsListView.getFirstVisiblePosition() > 0)
            {
                view1.setAlpha(1.0F);
                return;
            } else
            {
                view1.setAlpha((float)i / -50F);
                return;
            }
        }
        if (mFriendsListView.getFirstVisiblePosition() == 0)
        {
            int j = i + mListHeaderSeachBoxView.getTop();
            mCompletionViewContainer.setTranslationY(Math.max(0, j));
            if (j > 0)
            {
                view1.setAlpha(0.0F);
                return;
            }
            if (j < -50)
            {
                view1.setAlpha(1.0F);
                return;
            } else
            {
                view1.setAlpha((float)j / -50F);
                return;
            }
        } else
        {
            mCompletionViewContainer.setTranslationY(0.0F);
            view1.setAlpha(1.0F);
            return;
        }
    }

    private void openKeyboard()
    {
        EditTextUtils.openKeyboard(this, mCompletionView);
        mTitleBar.setCloseText(mNatMgr.getLanguageString(DisplayStrings.DS_OK));
        mTitleBar.setCloseTextColor(114, 210, 238);
        mTitleBar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final ShareDriveActivity this$0;

            public void onClick(View view)
            {
                closeKeyboard();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
    }

    private void setDoneButtonClickableOrNot()
    {
        boolean flag = true;
        List list = mCompletionView.getObjects();
        NativeManager nativemanager;
        boolean flag1;
        boolean flag2;
        if (list != null)
        {
            if (list.size() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }
        nativemanager = NativeManager.getInstance();
        mCompletionView.postDelayed(new Runnable() {

            final ShareDriveActivity this$0;

            public void run()
            {
                if (mSearchScroll != null && mCompletionView != null)
                {
                    mSearchScroll.smoothScrollTo(mCompletionView.getWidth(), 0);
                }
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        }, 10L);
        flag1 = mDoneButtonActive;
        if (flag)
        {
            flag2 = false;
        } else
        {
            flag2 = true;
        }
        if (flag1 == flag2)
        {
            if (mDoneButtonActive)
            {
                setDoneText(list, nativemanager);
            }
            return;
        }
        boolean flag3;
        TextView textview;
        boolean flag4;
        ViewFlipper viewflipper;
        if (flag)
        {
            flag3 = false;
        } else
        {
            flag3 = true;
        }
        mDoneButtonActive = flag3;
        textview = mDoneBtn;
        flag4 = false;
        if (!flag)
        {
            flag4 = true;
        }
        textview.setClickable(flag4);
        viewflipper = (ViewFlipper)findViewById(0x7f090227);
        if (flag)
        {
            mDoneBtn.setText(nativemanager.getLanguageString(DisplayStrings.DS_SEND));
            AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.5F);
            alphaanimation1.setDuration(300L);
            alphaanimation1.setInterpolator(new DecelerateInterpolator());
            alphaanimation1.setFillAfter(true);
            mDoneBtn.startAnimation(alphaanimation1);
            viewflipper.showPrevious();
            return;
        } else
        {
            setDoneText(list, nativemanager);
            AlphaAnimation alphaanimation = new AlphaAnimation(0.5F, 1.0F);
            alphaanimation.setDuration(300L);
            alphaanimation.setInterpolator(new DecelerateInterpolator());
            alphaanimation.setFillAfter(true);
            mDoneBtn.startAnimation(alphaanimation);
            viewflipper.showNext();
            return;
        }
    }

    private void setDoneText(List list, NativeManager nativemanager)
    {
        int i = list.size();
        String s1;
        if (i == 1)
        {
            PersonBase personbase = (PersonBase)list.get(0);
            String s2 = nativemanager.getLanguageString(DisplayStrings.DS_SEND_LOCATION_SEND_TO_PS);
            Object aobj1[] = new Object[1];
            aobj1[0] = ShareUtility.getFirstName(personbase.getName());
            s1 = String.format(s2, aobj1);
        } else
        {
            String s = nativemanager.getLanguageString(DisplayStrings.DS_SEND_LOCATION_SEND_TO_PD);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            s1 = String.format(s, aobj);
        }
        mDoneBtn.setText(s1);
    }

    void SendMeeting()
    {
        List list = mCompletionView.getObjects();
        if (list == null)
        {
            setResult(-1);
            finish();
            return;
        }
        int ai[] = new int[list.size()];
        String as[] = new String[list.size()];
        int ai1[] = new int[list.size()];
        int i = 0;
        int j = 0;
        String as1[] = new String[list.size()];
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                if (i > 0 || j > 0)
                {
                    PersonBase personbase;
                    String s;
                    String s1;
                    NativeManager nativemanager;
                    if (mType == 0)
                    {
                        Analytics.log("SHARE_DRIVE_SENT", null, null);
                        s = "ShareDrive";
                    } else
                    {
                        Analytics.log("SHARE_LOCATION_SENT", null, null);
                        s = "ShareLocation";
                    }
                    s1 = MyWazeNativeManager.getInstance().GetLastShareURL();
                    nativemanager = NativeManager.getInstance();
                    if (mType == 0 && nativemanager.isFollowActiveNTV() && s1 != null && !s1.equals(""))
                    {
                        if (i > 0)
                        {
                            nativemanager.AddToMeeting(ai, i, as1, false);
                        }
                        if (j > 0)
                        {
                            nativemanager.InviteToMeeting(as, ai1, j, 4);
                        }
                    } else
                    {
                        nativemanager.CreateMeetingBulk(mLocation.locationName, s, mLocation.locationX, mLocation.locationY, ai, as, ai1, i, j, true, as1, mLocation.mStreet, mLocation.mCity, null, true, mLocation.mVenueId);
                    }
                }
                setResult(-1);
                finish();
                return;
            }
            personbase = (PersonBase)iterator.next();
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
    }

    public void SendURL(String s)
    {
        bIsFollow = true;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", "");
        intent.putExtra("android.intent.extra.TEXT", s);
        intent.putExtra("exit_on_sent", true);
        startActivityForResult(Intent.createChooser(intent, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SHARE)), 4000);
    }

    boolean canAskToAdd()
    {
        mAskToAdd = null;
        Iterator iterator = mCompletionView.getObjects().iterator();
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    return false;
                }
                PersonBase personbase = (PersonBase)iterator.next();
                FriendUserData frienduserdata;
                boolean flag;
                if (personbase instanceof FriendUserData)
                {
                    frienduserdata = (FriendUserData)personbase;
                } else
                {
                    frienduserdata = (FriendUserData)mCurFriendsUids.get(personbase.getID());
                }
                flag = false;
                if (frienduserdata != null)
                {
                    if ((frienduserdata.mIsFriend || frienduserdata.mIsPendingFriend) && !frienduserdata.mIsPendingMy)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                }
            } while (flag);
            if (USE_PEOPLE_APP_DATA)
            {
                mAskToAddData = mNatMgr.getPeopleAppDataNTV(personbase.getID(), personbase.getIsOnWaze());
            }
            if (mAskToAddData == null || mAskToAddData.friendship_suggest_count == 0)
            {
                mAskToAdd = personbase;
                return true;
            }
            mAskToAddData = null;
        } while (true);
    }

    public void onBackPressed()
    {
        if (!bIsFollow)
        {
            NativeManager.getInstance().StopFollow();
        }
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        Iterator iterator;
        super.onCreate(bundle);
        mDensity = getResources().getDisplayMetrics().density;
        boolean flag;
        java.io.Serializable serializable;
        AlphaAnimation alphaanimation;
        android.view.View.OnClickListener onclicklistener;
        String s2;
        Object aobj[];
        if (getResources().getConfiguration().orientation == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mIsPortrait = flag;
        mDriveTo = DriveToNativeManager.getInstance();
        mNatMgr = NativeManager.getInstance();
        requestWindowFeature(1);
        setContentView(0x7f0300fe);
        if (mNatMgr.isFollowActiveNTV())
        {
            bIsFollow = true;
        } else
        {
            bIsFollow = false;
        }
        serializable = getIntent().getExtras().getSerializable("FriendUserDataList");
        if (!(serializable instanceof ArrayList)) goto _L2; else goto _L1
_L1:
        iterator = ((ArrayList)serializable).iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        if (getIntent().getExtras().getBoolean("selected", false))
        {
            mPreSelected = mSuggested;
            mSuggested = new SparseArray(0);
        }
        mUrl = getIntent().getStringExtra("link");
        mType = getIntent().getExtras().getInt("type");
        mLocation = (LocationData)getIntent().getExtras().get("LocationData");
        mAddress = (AddressItem)getIntent().getExtras().get("AddressItem");
        mShareDetailsView = findViewById(0x7f090685);
        mMapView = (MapView)findViewById(0x7f090689);
        mMapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        mMapView.setHandleTouch(false);
        mDoneBtn = (TextView)findViewById(0x7f09068c);
        mDoneBtn.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SEND));
        mDoneBtn.setOnClickListener(new android.view.View.OnClickListener() {

            final ShareDriveActivity this$0;

            public void onClick(View view)
            {
                if (!ShareDriveActivity.mAskToAddFriend || !canAskToAdd())
                {
                    SendMeeting();
                    return;
                } else
                {
                    askToAddAFriend(mAskToAdd);
                    return;
                }
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mDoneBtn.setClickable(false);
        alphaanimation = new AlphaAnimation(1.0F, 0.5F);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        mDoneBtn.startAnimation(alphaanimation);
        ((TextView)findViewById(0x7f090224)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_SELECT_CONTACTS_TO));
        mCompletionViewContainer = findViewById(0x7f09068e);
        mSearchScroll = (HorizontalScrollView)findViewById(0x7f090225);
        mCompletionView = (ContactsCompletionView)findViewById(0x7f090226);
        mCompletionView.setHint(mNatMgr.getLanguageString(DisplayStrings.DS_SEARCH_FRIENDS));
        if (android.os.Build.VERSION.SDK_INT <= 19)
        {
            mCompletionView.setDropDownBackgroundDrawable(new ColorDrawable(Color.parseColor("#cbd6da")));
        }
        mCompletionView.allowDuplicates(false);
        mCompletionView.setDropDownAnchor(0x7f09068e);
        mCompletionView.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final ShareDriveActivity this$0;

            public boolean onEditorAction(TextView textview1, int i, KeyEvent keyevent)
            {
                if (mCompletionView.enoughToFilter() && mPersonFilteredArrayAdapter != null && mPersonFilteredArrayAdapter.getCount() > 0)
                {
                    PersonBase personbase1 = mPersonFilteredArrayAdapter.getItem(0);
                    if (!mCompletionView.getObjects().contains(personbase1))
                    {
                        mCompletionView.performCompletion();
                        mPersonArrayAdapter.notifyDataSetChanged();
                    }
                } else
                {
                    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(mCompletionView.getWindowToken(), 0);
                }
                return true;
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mCompletionView.setIOnBackPressed(new com.waze.autocomplete.ContactsCompletionView.IOnBackPressed() {

            final ShareDriveActivity this$0;

            public void onBackPressed()
            {
                closeKeyboard();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mCompletionView.setIGetViewForObject(new com.waze.autocomplete.ContactsCompletionView.IGetViewForObject() {

            final ShareDriveActivity this$0;

            public View getViewForObject(Object obj1)
            {
                PersonBase personbase1 = (PersonBase)obj1;
                LinearLayout linearlayout = (LinearLayout)((LayoutInflater)mCompletionView.getContext().getSystemService("layout_inflater")).inflate(0x7f030043, (ViewGroup)mCompletionView.getParent(), false);
                ((TextView)linearlayout.findViewById(0x7f090236)).setText(personbase1.getName());
                ImageView imageview = (ImageView)linearlayout.findViewById(0x7f090235);
                imageview.setImageResource(0x7f02011b);
                ImageRepository.instance.getImage(personbase1.getImage(), true, imageview, null, ShareDriveActivity.this);
                linearlayout.findViewById(0x7f090234).setPadding(0, 0, 0, 0);
                return linearlayout;
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mCompletionView.setOnClickListener(new android.view.View.OnClickListener() {

            final ShareDriveActivity this$0;

            public void onClick(View view)
            {
                if (mFriendsListView.getFirstVisiblePosition() == 0)
                {
                    mFriendsListView.smoothScrollToPositionFromTop(1, (int)(64F * mDensity));
                }
                openKeyboard();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mCompletionView.requestFocus();
        mCompletionViewContainer.setOnClickListener(new android.view.View.OnClickListener() {

            final ShareDriveActivity this$0;

            public void onClick(View view)
            {
                mCompletionView.performClick();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        findViewById(0x7f090228).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareDriveActivity this$0;

            public void onClick(View view)
            {
                mCompletionView.performClick();
                mCompletionView.requestFocus();
                mCompletionView.setSelection(mCompletionView.getText().length());
                mSearchScroll.smoothScrollTo(mCompletionView.getWidth(), 0);
                openKeyboard();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mFriendsListView = (ListView)findViewById(0x7f09068d);
        mListHeaderView = findViewById(0x7f090691);
        mListHeaderMapDetailsView = mListHeaderView.findViewById(0x7f090692);
        mListHeaderSeachBoxView = mListHeaderView.findViewById(0x7f090693);
        if (mIsPortrait)
        {
            mFriendsListView.setOnTouchListener(new android.view.View.OnTouchListener() {

                final ShareDriveActivity this$0;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if (motionevent.getAction() != 2) goto _L2; else goto _L1
_L1:
                    boolean flag1 = mDontScroll;
_L4:
                    return flag1;
_L2:
                    int i;
                    if (motionevent.getAction() == 1)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    i = motionevent.getAction();
                    flag1 = false;
                    if (i != 3) goto _L4; else goto _L3
_L3:
                    mDontScroll = false;
                    return false;
                }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
            });
            mListHeaderMapDetailsView.setOnTouchListener(new android.view.View.OnTouchListener() {

                final ShareDriveActivity this$0;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if (motionevent.getAction() == 0)
                    {
                        mDontScroll = true;
                    }
                    if (motionevent.getAction() == 1 || motionevent.getAction() == 3)
                    {
                        mDontScroll = false;
                    }
                    return false;
                }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
            });
            ((RelativeLayout)mListHeaderView.getParent()).removeView(mListHeaderView);
            mListHeaderView.setLayoutParams(new android.widget.AbsListView.LayoutParams(-2, -2));
            mFriendsListView.addHeaderView(mListHeaderView);
        }
        mFriendsListView.setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

            final ShareDriveActivity this$0;

            public void onScroll(AbsListView abslistview, int i, int j, int k)
            {
                onScrollChanged();
            }

            public void onScrollStateChanged(AbsListView abslistview, int i)
            {
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        String s;
        String s1;
        TextView textview;
        Object obj;
        PersonBase personbase;
        if (mNatMgr.IsAccessToContactsEnableNTV())
        {
            loadPersonArray();
        } else
        {
            (new PhoneRequestAccessDialog(this, new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                final ShareDriveActivity this$0;

                public void onResult(boolean flag1)
                {
                    if (flag1)
                    {
                        loadPersonArray();
                        return;
                    } else
                    {
                        setResult(0);
                        finish();
                        return;
                    }
                }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
            })).show();
        }
        onclicklistener = new android.view.View.OnClickListener() {

            final ShareDriveActivity this$0;

            public void onClick(View view)
            {
                String s3;
                String s4;
                if (mType == 0)
                {
                    s3 = "DRIVE";
                } else
                {
                    s3 = "LOCATION";
                }
                Analytics.log("SHARE_MORE_OPTIONS", "TYPE", s3);
                s4 = MyWazeNativeManager.getInstance().GetLastShareURL();
                if (mType == 0 && mNatMgr.isFollowActiveNTV() && s4 != null && !s4.equals(""))
                {
                    ShareUtility.BuildShareURL(com.waze.share.ShareUtility.ShareType.ShareType_ShareDrive, s4, null);
                    return;
                }
                if (mType == 0)
                {
                    mNatMgr.CreateMeeting(mLocation.locationName, "ShareDrive", mLocation.locationX, mLocation.locationY, mLocation.mStreet, mLocation.mCity, null, mLocation.mVenueId);
                    return;
                } else
                {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    intent.putExtra("android.intent.extra.SUBJECT", "");
                    intent.putExtra("android.intent.extra.TEXT", mUrl);
                    intent.putExtra("exit_on_sent", true);
                    startActivityForResult(Intent.createChooser(intent, mNatMgr.getLanguageString(DisplayStrings.DS_SHARE)), 4000);
                    return;
                }
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        };
        mMoreBtn = findViewById(0x7f09068b);
        mMoreBtn.setOnClickListener(onclicklistener);
        mTitleBar = (TitleBar)findViewById(0x7f090073);
        if (mType == 0)
        {
            mTitleBar.init(this, mNatMgr.getLanguageString(DisplayStrings.DS_SEND_LOCATION_TITLE_ETA), false);
        } else
        {
            mTitleBar.init(this, mNatMgr.getLanguageString(DisplayStrings.DS_SEND_LOCATION_TITLE), false);
        }
        s = "";
        if (mAddress != null)
        {
            s = mAddress.getTitle();
            if (s == null || s.equals(""))
            {
                s = mAddress.getAddress();
            }
        } else
        if (mLocation.locationName != null && mLocation.locationName.length() > 0)
        {
            s = mLocation.locationName;
        }
        s1 = NativeManager.getInstance().getLanguageString(s);
        textview = (TextView)findViewById(0x7f090687);
        if (mType == 0)
        {
            s2 = mNatMgr.getLanguageString(DisplayStrings.DS_SEND_DRIVE_DISPLAY_TEXT);
            aobj = new Object[2];
            aobj[0] = s1;
            aobj[1] = mLocation.locationEta;
            textview.setText(String.format(s2, aobj));
        } else
        {
            textview.setText(String.format(mNatMgr.getLanguageString(DisplayStrings.DS_SEND_LOCATION_DISPLAY_TEXT), new Object[] {
                s1
            }));
        }
        mFriendsListView.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final ShareDriveActivity this$0;

            public void onGlobalLayout()
            {
                mFriendsListView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                mLocContHeight = findViewById(0x7f090685).getHeight();
                mListHeaderMapDetailsView.getLayoutParams().height = mLocContHeight;
                onScrollChanged();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        mDriveTo.getFriendsListData(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final ShareDriveActivity this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                mCurFriendsUids = new SparseArray(friendslistdata.friends.length);
                if (friendslistdata == null || friendslistdata.friends.length <= 0) goto _L2; else goto _L1
_L1:
                FriendUserData afrienduserdata[];
                int i;
                int j;
                afrienduserdata = friendslistdata.friends;
                i = afrienduserdata.length;
                j = 0;
_L5:
                if (j < i) goto _L3; else goto _L2
_L2:
                return;
_L3:
                FriendUserData frienduserdata = afrienduserdata[j];
                mCurFriendsUids.put(frienduserdata.getID(), frienduserdata);
                j++;
                if (true) goto _L5; else goto _L4
_L4:
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        });
        return;
_L3:
        obj = iterator.next();
        if (obj instanceof PersonBase)
        {
            personbase = (PersonBase)obj;
            mSuggested.put(personbase.getID(), personbase);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onFriendsChanged()
    {
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        CheckBox checkbox;
        if (!(view instanceof TextView))
        {
            if ((checkbox = (CheckBox)view.findViewById(0x7f09008f)) != null)
            {
                PersonBase personbase = (PersonBase)view.getTag();
                if (checkbox.isChecked())
                {
                    checkbox.setChecked(false);
                    mCompletionView.removeObject(personbase);
                    Iterator iterator1 = mCompletionView.getObjects().iterator();
                    while (iterator1.hasNext()) 
                    {
                        Object obj1 = iterator1.next();
                        if (((PersonBase)obj1).getID() == personbase.getID())
                        {
                            mCompletionView.removeObject(obj1);
                        }
                    }
                } else
                {
                    checkbox.setChecked(true);
                    Iterator iterator = mCompletionView.getObjects().iterator();
                    do
                    {
                        Object obj;
                        do
                        {
                            if (!iterator.hasNext())
                            {
                                mCompletionView.addObject(personbase);
                                return;
                            }
                            obj = iterator.next();
                        } while (((PersonBase)obj).getID() != personbase.getID());
                        mCompletionView.removeObject(obj);
                    } while (true);
                }
            }
        }
    }

    protected void onPause()
    {
        mMapView.onPause();
        super.onPause();
        if (mType == 0)
        {
            mDriveTo.unsetMeeting();
            return;
        } else
        {
            mDriveTo.unsetAddressOptionsView();
            return;
        }
    }

    protected void onResume()
    {
        mMapView.onResume();
        super.onResume();
        postDelayed(new Runnable() {

            final ShareDriveActivity this$0;

            public void run()
            {
                setDoneButtonClickableOrNot();
            }

            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
        }, 100L);
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable((new StringBuilder(String.valueOf(TAG))).append(".mAskToAdd").toString(), mAskToAdd);
    }

    public void onTokenAdded(Object obj)
    {
        PersonBase personbase = (PersonBase)obj;
        mPersonArrayAdapter.setSelected(personbase.getID());
        View view = mFriendsListView.findViewWithTag(obj);
        if (view != null)
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(true);
        }
        setDoneButtonClickableOrNot();
    }

    public void onTokenRemoved(Object obj)
    {
        PersonBase personbase = (PersonBase)obj;
        mPersonArrayAdapter.setUnselected(personbase.getID());
        View view = mFriendsListView.findViewWithTag(obj);
        if (view != null)
        {
            ((CheckBox)view.findViewById(0x7f09008f)).setChecked(false);
        }
        setDoneButtonClickableOrNot();
    }






























}
