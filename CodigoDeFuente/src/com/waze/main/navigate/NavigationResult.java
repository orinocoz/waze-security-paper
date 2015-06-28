// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.ConfigManager;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.TinyTooltip;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.social.AddFromActivity;
import com.waze.navigate.social.FriendsListData;
import com.waze.navigate.social.MyShareDriveActivity;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneRequestAccessDialog;
import com.waze.share.ShareNativeManager;
import com.waze.share.ShareUtility;
import com.waze.social.KeepYourFriendsDialog;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.timer.TimerView;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.waze.main.navigate:
//            EventOnRoute, LocationData

public class NavigationResult
{

    protected static final long TIMEOUT_BETWEEN_EVENTS = 100L;
    private static final int TRAFFIC_EVENT_ANIMATION_DURATION = 500;
    public static boolean mFillQaData = false;
    public static boolean mForceShowTooltipEta = false;
    private Runnable eventAnimationTask;
    private List eventImages;
    private int iEvent;
    private boolean isRecoverTooltipAfterOrientationChange;
    private ArrayList mAlreadyShared;
    private boolean mCalculating;
    private String mConfigImage;
    private ActivityBase mContext;
    private Dialog mDialog;
    private String mDistance;
    private String mDistanceUnit;
    private boolean mEtaShown;
    private boolean mFacebookLoggedIn;
    private String mFinalEta;
    private String mFinalTitle;
    private String mFreeText;
    private LinearLayout mFreqFriendsLayout;
    private FriendUserData mFriendsData[];
    private int mFriendsDrivingCount;
    private int mFriendsOnline;
    private boolean mGoOnReturnFromAddMore;
    private String mGoodMorning;
    private Handler mHandler;
    private boolean mIsTripServerResult;
    private boolean mIsWaypoint;
    private KeepYourFriendsDialog mKeepFriends;
    private String mMeetingId;
    private int mMinutes;
    private String mNote;
    private int mNoteID;
    private boolean mOfflineRoute;
    private String mPictureFirstFriendUrl;
    private String mPictureSecondFriendUrl;
    private String mPictureUserUrl;
    private int mRouteLenght;
    private ArrayList mSelected;
    private TinyTooltip mSendEtaTip;
    private View mShareTooltipAnchor;
    private FriendUserData mShareTooltipFud;
    private boolean mShareTooltipNoSuggestions;
    private boolean mShowDisclaimer;
    private boolean mShownAgain;
    private ArrayList mSuggestions;
    private int mTimeOut;
    private String mTitle;
    private boolean mTooltipEtaOkToShow;
    private int mTooltipEtaTimesToShow;
    private String mVia;
    private String mViaToll;
    private boolean mWasTooltipDismissed;
    private String mWaypointDistance;
    private String mWaypointDistanceUnit;
    private String mWaypointEta;
    private int mWaypointLength;
    private String mWaypointTitle;
    private com.waze.share.ShareUtility.IFriendSelected miFriendSelected;
    final NativeManager nm = NativeManager.getInstance();
    int numAdd;
    int numInvite;
    private Runnable updateTimeTask;

    public NavigationResult(ActivityBase activitybase)
    {
        mContext = null;
        mEtaShown = false;
        mDialog = null;
        mKeepFriends = null;
        mHandler = new Handler();
        mOfflineRoute = false;
        mShowDisclaimer = false;
        mIsTripServerResult = false;
        eventImages = new ArrayList();
        iEvent = 0;
        mFriendsData = null;
        mShownAgain = false;
        mFacebookLoggedIn = false;
        mCalculating = false;
        mTooltipEtaTimesToShow = ConfigManager.getInstance().checkConfigDisplayCounter(3, false);
        mTooltipEtaOkToShow = ShareNativeManager.getInstance().isOkToShowShareDriveTip();
        mShareTooltipFud = null;
        mWasTooltipDismissed = false;
        isRecoverTooltipAfterOrientationChange = false;
        mGoOnReturnFromAddMore = false;
        numAdd = 0;
        numInvite = 0;
        updateTimeTask = new Runnable() {

            final NavigationResult this$0;

            public void run()
            {
                swapEtaTimeDisplay();
                mHandler.postDelayed(this, 2000L);
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        };
        eventAnimationTask = new Runnable() {

            final NavigationResult this$0;

            public void run()
            {
                if (iEvent >= eventImages.size())
                {
                    return;
                } else
                {
                    ImageView imageview = (ImageView)eventImages.get(iEvent);
                    imageview.setVisibility(0);
                    AnimationUtils.overshootCustomPopView(imageview);
                    NavigationResult navigationresult = NavigationResult.this;
                    navigationresult.iEvent = 1 + navigationresult.iEvent;
                    mHandler.postDelayed(eventAnimationTask, 100L);
                    return;
                }
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        };
        miFriendSelected = new com.waze.share.ShareUtility.IFriendSelected() {

            final NavigationResult this$0;

            public boolean onFriendSelected(Object obj, boolean flag)
            {
                if (obj == null)
                {
                    mGoOnReturnFromAddMore = false;
                    openAddFromActivity();
                    return false;
                }
                if (flag)
                {
                    mSelected.add((PersonBase)obj);
                } else
                {
                    mSelected.remove((PersonBase)obj);
                }
                stopTimer();
                return true;
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        };
        mContext = activitybase;
    }

    private void addSuggestions()
    {
        Iterator iterator;
        if (mSelected != null && !mSelected.isEmpty())
        {
            break MISSING_BLOCK_LABEL_292;
        }
        iterator = mSuggestions.iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ShareUtility.shareComponentPopulate(mContext, mFreqFriendsLayout, null, mSuggestions, false, false, miFriendSelected);
_L4:
        View view = mFreqFriendsLayout.getChildAt(0);
        if (mShareTooltipAnchor == null && view != null)
        {
            mShareTooltipNoSuggestions = false;
            mShareTooltipAnchor = view;
            if (mSuggestions != null && mSuggestions.size() > 0)
            {
                PersonBase personbase1 = (PersonBase)mSuggestions.get(0);
                NativeManager nativemanager = NativeManager.getInstance();
                PersonBase personbase;
                FriendUserData frienduserdata;
                Person person;
                boolean flag;
                if (ConfigManager.getInstance().checkConfigDisplayCounter(5, true) > 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    String s = nativemanager.getLanguageString(DisplayStrings.DS_NAV_RESULT_TIP_SEND_ETA_PS);
                    Object aobj[] = new Object[1];
                    aobj[0] = ShareUtility.getShortened(personbase1.getName());
                    String s1 = String.format(s, aobj);
                    mSendEtaTip = new TinyTooltip(mContext, s1);
                    mSendEtaTip.show(view);
                    view.postDelayed(new Runnable() {

                        final NavigationResult this$0;

                        public void run()
                        {
                            if (mSendEtaTip != null && mSendEtaTip.isShowing())
                            {
                                mSendEtaTip.dismiss(true);
                                mSendEtaTip = null;
                            }
                        }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
                    }, 5000L);
                }
            }
        }
        friendsListInsertAddMore();
        return;
_L2:
        personbase = (PersonBase)iterator.next();
        if (personbase instanceof FriendUserData)
        {
            frienduserdata = (FriendUserData)personbase;
            if (frienduserdata.mContactID != -1)
            {
                person = AddressBook.GetPersonFromID(frienduserdata.mContactID);
                if (person != null && person.getImage() != null)
                {
                    frienduserdata.setImage(person.getImage());
                }
            }
        }
          goto _L3
        ShareUtility.shareComponentPopulate(mContext, mFreqFriendsLayout, null, mSelected, true, true, miFriendSelected);
          goto _L4
    }

    private void dismissNavigationResultDialog()
    {
        AnimationUtils.closeNavResultsToRectangle(mDialog.findViewById(0x7f09047f), new android.view.animation.Animation.AnimationListener() {

            final NavigationResult this$0;

            public void onAnimationEnd(Animation animation)
            {
                dismissNavigationResultDialogNoAnimation();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        });
    }

    private void displayEventsOnRoute()
    {
        final RelativeLayout trafficEventsLayout = (RelativeLayout)mDialog.findViewById(0x7f0904a9);
        trafficEventsLayout.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final NavigationResult this$0;
            private final RelativeLayout val$trafficEventsLayout;

            public void onGlobalLayout()
            {
                DriveToNativeManager.getInstance().getEventsOnRoute(new com.waze.navigate.DriveToNativeManager.EventsOnRouteListener() {

                    final _cls19 this$1;

                    public void onComplete(EventOnRoute aeventonroute[])
                    {
                        populateEventsOnRoute(aeventonroute);
                    }

            
            {
                this$1 = _cls19.this;
                super();
            }
                });
                trafficEventsLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }


            
            {
                this$0 = NavigationResult.this;
                trafficEventsLayout = relativelayout;
                super();
            }
        });
    }

    private void fillDataForQATest()
    {
        FriendUserData frienduserdata = new FriendUserData();
        frienduserdata.arrivedText = "bla";
        frienduserdata.arrivedTime = "18:00";
        frienduserdata.mAddonName = "bla";
        frienduserdata.mJoinedStr = "bla";
        frienduserdata.mLastReportIcon = "bla";
        frienduserdata.mLastReportText = "bla";
        frienduserdata.mMood = "bla";
        frienduserdata.mNickName = "bla";
        frienduserdata.mPtsStr = "bla";
        frienduserdata.mRankStr = "bla";
        frienduserdata.mSpeedStr = "bla";
        frienduserdata.name = "bla";
        frienduserdata.pictureUrl = "file:///storage/emulated/0/myApp/ProfileImageCapture.tmp";
        frienduserdata.statusLine = "bla";
        mFriendsData = (new FriendUserData[] {
            frienduserdata
        });
    }

    private void friendsListInsertAddMore()
    {
        View view = ShareUtility.buildShareComponentAddMoreFriendsButton(mContext, new android.view.View.OnClickListener() {

            final NavigationResult this$0;

            public void onClick(View view1)
            {
                Analytics.log("SHARE_ADD_FRIENDS_CLICK", null, null);
                stopTimer();
                if (MyWazeNativeManager.getInstance().getContactLoggedInNTV())
                {
                    if (NativeManager.getInstance().IsAccessToContactsEnableNTV())
                    {
                        mGoOnReturnFromAddMore = false;
                        openAddFromActivity();
                        return;
                    } else
                    {
                        (new PhoneRequestAccessDialog(mContext, new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                            final _cls20 this$1;

                            public void onResult(boolean flag)
                            {
                                if (flag)
                                {
                                    mGoOnReturnFromAddMore = false;
                                    openAddFromActivity();
                                }
                            }

            
            {
                this$1 = _cls20.this;
                super();
            }
                        })).show();
                        return;
                    }
                } else
                {
                    Intent intent = new Intent(mContext, com/waze/phone/PhoneNumberSignInActivity);
                    intent.putExtra("type", 1);
                    intent.putExtra("back", 1);
                    intent.putExtra("fon_shon_rea_son", "FEATURE");
                    AppService.getMainActivity().startActivityForResult(intent, 32791);
                    return;
                }
            }


            
            {
                this$0 = NavigationResult.this;
                super();
            }
        });
        if (mShareTooltipAnchor == null)
        {
            mShareTooltipNoSuggestions = true;
            mShareTooltipAnchor = view;
        }
        mFreqFriendsLayout.addView(view);
    }

    private int getAllInMin(String s)
    {
        int i = 0;
        if (s != null)
        {
            String as[] = s.split(" ");
            if (as.length == 1 || as.length == 2)
            {
                i = Integer.parseInt(as[0]);
            } else
            {
                int j = as.length;
                i = 0;
                if (j == 4)
                {
                    return 60 * Integer.parseInt(as[0]) + Integer.parseInt(as[2]);
                }
            }
        }
        return i;
    }

    private void onClose()
    {
        if (!mShownAgain)
        {
            if (mIsTripServerResult)
            {
                NativeManager.Post(new Runnable() {

                    final NavigationResult this$0;

                    public void run()
                    {
                        AppService.getNativeManager().stopTripServerNavigationNTV();
                    }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
                });
            } else
            {
                NativeManager.Post(new Runnable() {

                    final NavigationResult this$0;

                    public void run()
                    {
                        AppService.getNativeManager().stopNavigationNTV();
                    }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
                });
            }
        }
        stopTimer();
        if (mDialog == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        ((TimerView)mDialog.findViewById(0x7f0904b6)).stop();
        if (!mShownAgain)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        dismissNavigationResultDialog();
        return;
        try
        {
            dismissNavigationResultDialogNoAnimation();
            return;
        }
        catch (Exception exception)
        {
            mDialog = null;
        }
        return;
    }

    private void populateEventsOnRoute(EventOnRoute aeventonroute[])
    {
        while (aeventonroute == null || mDialog == null) 
        {
            return;
        }
        RelativeLayout relativelayout = (RelativeLayout)mDialog.findViewById(0x7f0904a9);
        RelativeLayout relativelayout1 = (RelativeLayout)mDialog.findViewById(0x7f0904aa);
        int i = relativelayout.getMeasuredWidth();
        boolean flag = false;
        int j = aeventonroute.length;
        int k = 0;
        do
        {
            EventOnRoute eventonroute;
            if (k >= j)
            {
                if (flag)
                {
                    mHandler.postDelayed(eventAnimationTask, 500L);
                    return;
                } else
                {
                    mHandler.postDelayed(eventAnimationTask, 0L);
                    return;
                }
            }
            eventonroute = aeventonroute[k];
            if (eventonroute != null)
            {
                if (eventonroute.alertType == 4)
                {
                    flag = true;
                    android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams((int)((double)(i * (eventonroute.end - eventonroute.start)) / 100D), -1);
                    ImageView imageview1 = new ImageView(mDialog.getContext());
                    layoutparams1.setMargins((int)(((double)eventonroute.start / 100D) * (double)i), 0, 0, 0);
                    imageview1.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
                    if (eventonroute.severity == 2)
                    {
                        imageview1.setImageResource(0x7f02041b);
                    } else
                    if (eventonroute.severity == 1)
                    {
                        imageview1.setImageResource(0x7f02041a);
                    } else
                    if (eventonroute.severity == 0)
                    {
                        imageview1.setImageResource(0x7f020419);
                    }
                    imageview1.setLayoutParams(layoutparams1);
                    relativelayout.addView(imageview1);
                    AnimationUtils.stretchViewHorizontally(imageview1, 500);
                } else
                {
                    int l;
                    android.widget.RelativeLayout.LayoutParams layoutparams;
                    double d;
                    ImageView imageview;
                    if (eventonroute.alertType == 1)
                    {
                        l = 0x7f02002b;
                    } else
                    if (eventonroute.alertType == 2)
                    {
                        l = 0x7f020026;
                    } else
                    if (eventonroute.alertType == 3)
                    {
                        l = 0x7f020029;
                    } else
                    if (eventonroute.alertType == 5)
                    {
                        l = 0x7f020028;
                    } else
                    if (eventonroute.alertType == 12)
                    {
                        l = 0x7f020333;
                    } else
                    {
                        l = 0x7f02002a;
                    }
                    layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                    d = eventonroute.start;
                    if (d > 85D)
                    {
                        d = 85D;
                    }
                    imageview = new ImageView(mDialog.getContext());
                    layoutparams.setMargins((int)((d / 100D) * (double)i), 0, 0, 0);
                    imageview.setImageResource(l);
                    imageview.setLayoutParams(layoutparams);
                    relativelayout1.addView(imageview);
                    imageview.setVisibility(4);
                    eventImages.add(imageview);
                }
            }
            k++;
        } while (true);
    }

    private void setDistStr(String s)
    {
        String as[];
        if (s != null)
        {
            if ((as = s.split(" ")).length == 2)
            {
                mDistance = as[0];
                mDistanceUnit = as[1];
                return;
            }
        }
    }

    private void setDistance()
    {
        ((TextView)mDialog.findViewById(0x7f090492)).setText(mDistance);
        ((TextView)mDialog.findViewById(0x7f090493)).setText(mDistanceUnit);
    }

    private void setDlgData()
    {
        mDialog.setContentView(0x7f030098);
        mDialog.getWindow().setLayout(-1, -1);
        String s;
        String s1;
        boolean flag;
        boolean flag1;
        boolean flag2;
        TextView textview;
        ImageView imageview;
        int i;
        SimpleDateFormat simpledateformat;
        if (mCalculating)
        {
            mDialog.findViewById(0x7f090494).setVisibility(8);
            mDialog.findViewById(0x7f09048b).setVisibility(8);
            mDialog.findViewById(0x7f090488).setVisibility(0);
            ((TextView)mDialog.findViewById(0x7f09048a)).setText(NativeManager.getInstance().getLanguageString("Calculating Route..."));
        } else
        if (mIsWaypoint)
        {
            mDialog.findViewById(0x7f090494).setVisibility(0);
            mDialog.findViewById(0x7f090488).setVisibility(8);
            mDialog.findViewById(0x7f09048b).setVisibility(8);
            ((TextView)mDialog.findViewById(0x7f09049c)).setText(mWaypointDistance);
            ((TextView)mDialog.findViewById(0x7f09049d)).setText(mWaypointDistanceUnit);
            setFinalDistance();
        } else
        {
            mDialog.findViewById(0x7f090494).setVisibility(8);
            mDialog.findViewById(0x7f090488).setVisibility(8);
            mDialog.findViewById(0x7f09048b).setVisibility(0);
        }
        s = nm.getLanguageString(DisplayStrings.DS_ROUTES);
        ((TextView)mDialog.findViewById(0x7f0904b3)).setText(s);
        s1 = nm.getLanguageString(DisplayStrings.DS_GO);
        ((TextView)mDialog.findViewById(0x7f0904b5)).setText(s1);
        ((TextView)mDialog.findViewById(0x7f090481)).setText(mTitle);
        ((TextView)mDialog.findViewById(0x7f090485)).setText(mVia);
        if (mFillQaData)
        {
            fillDataForQATest();
            mFillQaData = false;
        }
        mFreqFriendsLayout = (LinearLayout)mDialog.findViewById(0x7f090696);
        flag = nm.ShareRideFeatureEnabledNTV();
        flag1 = false;
        if (flag)
        {
            if (mFriendsData != null && mFriendsData.length > 0)
            {
                flag1 = true;
            } else
            {
                boolean flag3 = mShownAgain;
                flag1 = false;
                if (flag3)
                {
                    flag1 = true;
                }
            }
        }
        flag2 = nm.isFollowActiveNTV();
        if (!mCalculating && flag1 || flag2)
        {
            mDialog.findViewById(0x7f0904ad).setVisibility(0);
            mDialog.findViewById(0x7f0904ae).setVisibility(8);
            View view1;
            android.view.View.OnClickListener onclicklistener1;
            View view2;
            android.view.View.OnClickListener onclicklistener2;
            View view4;
            View view5;
            TextView textview1;
            Calendar calendar;
            String s2;
            View view6;
            android.view.View.OnClickListener onclicklistener4;
            if (flag2)
            {
                ((TextView)mDialog.findViewById(0x7f090695)).setText(nm.getLanguageString(DisplayStrings.DS_NAVIGATION_RESULT_SHARE_TITLE_LIVE));
                mMeetingId = nm.getCurMeetingNTV();
                if (mMeetingId != null)
                {
                    loadMySharedDriveData();
                }
            } else
            {
                ((TextView)mDialog.findViewById(0x7f090695)).setText(nm.getLanguageString(DisplayStrings.DS_NAVIGATION_RESULT_SHARE_TITLE));
                ViewTreeObserver viewtreeobserver = mDialog.findViewById(0x7f090696).getViewTreeObserver();
                android.view.ViewTreeObserver.OnGlobalLayoutListener ongloballayoutlistener = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final NavigationResult this$0;

                    public void onGlobalLayout()
                    {
                        mDialog.findViewById(0x7f090696).getViewTreeObserver().removeGlobalOnLayoutListener(this);
                        addSuggestions();
                    }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
                };
                viewtreeobserver.addOnGlobalLayoutListener(ongloballayoutlistener);
            }
        } else
        {
            mDialog.findViewById(0x7f0904ad).setVisibility(4);
            mDialog.findViewById(0x7f0904ae).setVisibility(0);
            ((TextView)mDialog.findViewById(0x7f0904b0)).setText(nm.getLanguageString(DisplayStrings.DS_SHARE_YOUR_DRIVE_WITH_FRIENDS_AND_FAMILY_PROMO));
            android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

                final NavigationResult this$0;

                public void onClick(View view7)
                {
                    if (mCalculating)
                    {
                        return;
                    } else
                    {
                        Analytics.log("SHARE_PROMOTION_CLICK", null, null);
                        stopTimer();
                        mDialog.findViewById(0x7f0904b4).performClick();
                        ShareUtility.shareLocationOrDrive(AppService.getMainActivity(), 16);
                        return;
                    }
                }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
            };
            mDialog.findViewById(0x7f0904ae).setOnClickListener(onclicklistener);
            if (mShareTooltipAnchor == null)
            {
                mShareTooltipNoSuggestions = true;
                View view = mDialog.findViewById(0x7f0904af);
                view.setOnClickListener(onclicklistener);
                mShareTooltipAnchor = view;
            }
        }
        setDistance();
        textview = (TextView)mDialog.findViewById(0x7f090487);
        if (textview != null)
        {
            if (mFreeText != null && mFreeText.length() > 0)
            {
                textview.setText(mFreeText);
                textview.setVisibility(0);
            } else
            {
                textview.setVisibility(8);
            }
        }
        imageview = (ImageView)mDialog.findViewById(0x7f090486);
        if (imageview != null)
        {
            if (mViaToll != null && mViaToll.length() > 0)
            {
                imageview.setVisibility(0);
            } else
            {
                imageview.setVisibility(8);
            }
        }
        if (mCalculating)
        {
            mDialog.findViewById(0x7f0904b4).setAlpha(0.5F);
            mDialog.findViewById(0x7f0904b2).setAlpha(0.5F);
        } else
        {
            mDialog.findViewById(0x7f0904b4).setAlpha(1.0F);
            mDialog.findViewById(0x7f0904b2).setAlpha(1.0F);
        }
        view1 = mDialog.findViewById(0x7f0904b4);
        onclicklistener1 = new android.view.View.OnClickListener() {

            final NavigationResult this$0;

            public void onClick(View view7)
            {
                if (!mCalculating)
                {
                    boolean flag4 = ((TimerView)mDialog.findViewById(0x7f0904b6)).hasExpired();
                    boolean flag5 = nm.isMovingNTV();
                    int j;
                    if (mSelected != null)
                    {
                        j = mSelected.size();
                    } else
                    {
                        j = 0;
                    }
                    if (j == 0)
                    {
                        mShareTooltipFud = ShareNativeManager.getInstance().getReceivedLocationSender();
                        if (mShareTooltipFud != null)
                        {
                            mTooltipEtaOkToShow = true;
                        }
                    }
                    if (!flag4 && mTooltipEtaOkToShow && !mShownAgain && j == 0 && !mWasTooltipDismissed && !flag5 || NavigationResult.mForceShowTooltipEta)
                    {
                        stopTimer();
                        showTooltipEta();
                    } else
                    {
                        SendMeeting();
                        if (mShownAgain)
                        {
                            if (mDialog != null)
                            {
                                try
                                {
                                    dismissNavigationResultDialog();
                                    return;
                                }
                                catch (Exception exception1)
                                {
                                    mDialog = null;
                                }
                                return;
                            }
                        } else
                        {
                            Analytics.log("GO_ETA");
                            if (!mIsTripServerResult)
                            {
                                NativeManager.Post(new Runnable() {

                                    final _cls9 this$1;

                                    public void run()
                                    {
                                        AppService.getNativeManager().navigateMainPlayStartNTV();
                                        AppService.getNativeManager().navigateMainGetCouponNTV();
                                    }

            
            {
                this$1 = _cls9.this;
                super();
            }
                                });
                            }
                            NativeManager.Post(new Runnable() {

                                final _cls9 this$1;

                                public void run()
                                {
                                    AppService.getNativeManager().startTripServerNavigationNTV();
                                }

            
            {
                this$1 = _cls9.this;
                super();
            }
                            });
                            if (mDialog != null)
                            {
                                stopTimer();
                                try
                                {
                                    dismissNavigationResultDialog();
                                }
                                catch (Exception exception)
                                {
                                    mDialog = null;
                                }
                            }
                            NavBarManager.showNavBar();
                            return;
                        }
                    }
                }
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        };
        view1.setOnClickListener(onclicklistener1);
        view2 = mDialog.findViewById(0x7f0904b2);
        onclicklistener2 = new android.view.View.OnClickListener() {

            final NavigationResult this$0;

            public void onClick(View view7)
            {
                if (!mCalculating)
                {
                    Analytics.log("ROUTES_ETA");
                    DriveToNativeManager.getInstance().requestRoute(mIsTripServerResult);
                    NativeManager.Post(new Runnable() {

                        final _cls10 this$1;

                        public void run()
                        {
                            AppService.getNativeManager().navigateMainGetCouponNTV();
                        }

            
            {
                this$1 = _cls10.this;
                super();
            }
                    });
                    stopTimer();
                    if (mDialog != null)
                    {
                        try
                        {
                            dismissNavigationResultDialogNoAnimation();
                        }
                        catch (Exception exception)
                        {
                            mDialog = null;
                        }
                    }
                    NavBarManager.showNavBar();
                }
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        };
        view2.setOnClickListener(onclicklistener2);
        if (mShownAgain)
        {
            s2 = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_OK);
            ((TextView)mDialog.findViewById(0x7f0904b5)).setText(s2);
            view6 = mDialog.findViewById(0x7f090482);
            onclicklistener4 = new android.view.View.OnClickListener() {

                final NavigationResult this$0;

                public void onClick(View view7)
                {
                    stopTimer();
                    if (mDialog == null)
                    {
                        break MISSING_BLOCK_LABEL_24;
                    }
                    dismissNavigationResultDialog();
                    return;
                    Exception exception;
                    exception;
                    mDialog = null;
                    return;
                }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
            };
            view6.setOnClickListener(onclicklistener4);
        } else
        {
            View view3 = mDialog.findViewById(0x7f090482);
            android.view.View.OnClickListener onclicklistener3 = new android.view.View.OnClickListener() {

                final NavigationResult this$0;

                public void onClick(View view7)
                {
                    Analytics.log("CANCEL_ETA");
                    Analytics.logAdsContextNav("ADS_NAVIGATE_CANCEL_ETA");
                    if (mIsTripServerResult)
                    {
                        NativeManager.Post(new Runnable() {

                            final _cls12 this$1;

                            public void run()
                            {
                                AppService.getNativeManager().stopTripServerNavigationNTV();
                            }

            
            {
                this$1 = _cls12.this;
                super();
            }
                        });
                    } else
                    {
                        NativeManager.Post(new Runnable() {

                            final _cls12 this$1;

                            public void run()
                            {
                                AppService.getNativeManager().stopNavigationNTV();
                            }

            
            {
                this$1 = _cls12.this;
                super();
            }
                        });
                    }
                    stopTimer();
                    if (mDialog == null)
                    {
                        break MISSING_BLOCK_LABEL_55;
                    }
                    dismissNavigationResultDialogNoAnimation();
                    return;
                    Exception exception;
                    exception;
                    mDialog = null;
                    return;
                }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
            };
            view3.setOnClickListener(onclicklistener3);
        }
        if (mTimeOut == -1 || mShownAgain || mCalculating)
        {
            ((TimerView)mDialog.findViewById(0x7f0904b6)).stop();
        } else
        {
            ((TimerView)mDialog.findViewById(0x7f0904b6)).reset();
            ((TimerView)mDialog.findViewById(0x7f0904b6)).setTime(mTimeOut);
            ((TimerView)mDialog.findViewById(0x7f0904b6)).start();
            mWasTooltipDismissed = false;
        }
        view4 = mDialog.findViewById(0x7f0904b7);
        if (mCalculating)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        view4.setVisibility(i);
        mFinalEta = null;
        mWaypointEta = null;
        mMinutes = mRouteLenght / 60;
        setTime(mMinutes);
        if (mIsWaypoint)
        {
            setWaypointTime(mWaypointLength / 60, mMinutes);
        }
        view5 = mDialog.findViewById(0x7f0904a7);
        if (view5 != null && mShownAgain)
        {
            view5.setVisibility(8);
        }
        textview1 = (TextView)mDialog.findViewById(0x7f0904a8);
        if (DateFormat.is24HourFormat(AppService.getAppContext()))
        {
            simpledateformat = new SimpleDateFormat("H:mm");
        } else
        {
            simpledateformat = new SimpleDateFormat("h:mm a");
        }
        calendar = Calendar.getInstance();
        calendar.add(12, mMinutes);
        textview1.setText(simpledateformat.format(calendar.getTime()));
        displayEventsOnRoute();
        ((TextView)mDialog.findViewById(0x7f09048d)).setVisibility(4);
    }

    private void setETA(String s)
    {
        ((TextView)mDialog.findViewById(0x7f09048d)).setVisibility(0);
        TextView textview = (TextView)mDialog.findViewById(0x7f09048e);
        textview.setVisibility(0);
        textview.setText(s);
        ((TextView)mDialog.findViewById(0x7f09048f)).setVisibility(8);
        ((TextView)mDialog.findViewById(0x7f090490)).setVisibility(8);
        ((TextView)mDialog.findViewById(0x7f090491)).setVisibility(8);
    }

    private void setEtaStr(String s, boolean flag)
    {
        if (s == null)
        {
            return;
        }
        String s1 = s.trim();
        if (flag)
        {
            mWaypointEta = s1;
            return;
        } else
        {
            mFinalEta = s1;
            return;
        }
    }

    private void setFinalDistance()
    {
        ((TextView)mDialog.findViewById(0x7f0904a4)).setText(mDistance);
        ((TextView)mDialog.findViewById(0x7f0904a5)).setText(mDistanceUnit);
    }

    private void setTime(int i)
    {
        int j = i / 60;
        int k = i - j * 60;
        ((TextView)mDialog.findViewById(0x7f09048d)).setVisibility(4);
        TextView textview = (TextView)mDialog.findViewById(0x7f09048e);
        TextView textview1 = (TextView)mDialog.findViewById(0x7f09048f);
        if (j != 0)
        {
            textview.setVisibility(0);
            textview1.setVisibility(0);
            textview.setText(String.valueOf(j));
            textview1.setText("h.");
        } else
        {
            textview.setVisibility(8);
            textview1.setVisibility(8);
        }
        if (mNoteID != 1)
        {
            TextView textview3 = (TextView)mDialog.findViewById(0x7f090490);
            textview3.setText(String.valueOf(k));
            textview3.setVisibility(0);
            TextView textview4 = (TextView)mDialog.findViewById(0x7f090491);
            textview4.setText("min.");
            textview4.setVisibility(0);
            return;
        } else
        {
            TextView textview2 = (TextView)mDialog.findViewById(0x7f090490);
            textview2.setText("NA");
            textview2.setVisibility(0);
            ((TextView)mDialog.findViewById(0x7f090491)).setVisibility(4);
            return;
        }
    }

    private void setWaypointETA(String s, String s1)
    {
        ((TextView)mDialog.findViewById(0x7f09049f)).setVisibility(0);
        TextView textview = (TextView)mDialog.findViewById(0x7f0904a0);
        textview.setVisibility(0);
        textview.setText(s1);
        ((TextView)mDialog.findViewById(0x7f0904a1)).setVisibility(8);
        ((TextView)mDialog.findViewById(0x7f0904a2)).setVisibility(8);
        ((TextView)mDialog.findViewById(0x7f0904a3)).setVisibility(8);
        ((TextView)mDialog.findViewById(0x7f090496)).setVisibility(0);
        TextView textview1 = (TextView)mDialog.findViewById(0x7f090498);
        textview1.setVisibility(0);
        textview1.setText(s);
        ((TextView)mDialog.findViewById(0x7f090499)).setVisibility(8);
        ((TextView)mDialog.findViewById(0x7f09049a)).setVisibility(8);
        ((TextView)mDialog.findViewById(0x7f09049b)).setVisibility(8);
    }

    private void setWaypointTime(int i, int j)
    {
        int k = j - i;
        int l = i / 60;
        int i1 = i - l * 60;
        int j1 = k / 60;
        int k1 = k - j1 * 60;
        ((TextView)mDialog.findViewById(0x7f09049f)).setVisibility(4);
        ((TextView)mDialog.findViewById(0x7f090496)).setVisibility(4);
        TextView textview = (TextView)mDialog.findViewById(0x7f0904a0);
        TextView textview1 = (TextView)mDialog.findViewById(0x7f0904a1);
        TextView textview3;
        TextView textview4;
        if (j1 != 0)
        {
            textview.setVisibility(0);
            textview1.setVisibility(0);
            textview.setText(String.valueOf(j1));
            textview1.setText(NativeManager.getInstance().getLanguageString("h."));
        } else
        {
            textview.setVisibility(8);
            textview1.setVisibility(8);
        }
        if (mNoteID != 1)
        {
            TextView textview8 = (TextView)mDialog.findViewById(0x7f0904a2);
            textview8.setText(String.valueOf(k1));
            textview8.setVisibility(0);
            TextView textview9 = (TextView)mDialog.findViewById(0x7f0904a3);
            textview9.setText(NativeManager.getInstance().getLanguageString("min."));
            textview9.setVisibility(0);
        } else
        {
            TextView textview2 = (TextView)mDialog.findViewById(0x7f0904a2);
            textview2.setText("NA");
            textview2.setVisibility(0);
            ((TextView)mDialog.findViewById(0x7f0904a3)).setVisibility(4);
        }
        textview3 = (TextView)mDialog.findViewById(0x7f090498);
        textview4 = (TextView)mDialog.findViewById(0x7f090499);
        if (l != 0)
        {
            textview3.setVisibility(0);
            textview4.setVisibility(0);
            textview3.setText(String.valueOf(l));
            textview4.setText(NativeManager.getInstance().getLanguageString("h."));
        } else
        {
            textview3.setVisibility(8);
            textview4.setVisibility(8);
        }
        if (mNoteID != 1)
        {
            TextView textview6 = (TextView)mDialog.findViewById(0x7f09049a);
            textview6.setText(String.valueOf(i1));
            textview6.setVisibility(0);
            TextView textview7 = (TextView)mDialog.findViewById(0x7f09049b);
            textview7.setText(NativeManager.getInstance().getLanguageString("min."));
            textview7.setVisibility(0);
            return;
        } else
        {
            TextView textview5 = (TextView)mDialog.findViewById(0x7f09049a);
            textview5.setText("NA");
            textview5.setVisibility(0);
            ((TextView)mDialog.findViewById(0x7f09049b)).setVisibility(4);
            return;
        }
    }

    private void showToolTipEtaOnce()
    {
        boolean flag = DriveToNativeManager.getInstance().isDrivingHomeNTV();
        String s;
        String s2;
        int i;
        KeepYourFriendsDialog keepyourfriendsdialog;
        boolean flag1;
        if (mShareTooltipFud != null)
        {
            String s4 = nm.getLanguageString(DisplayStrings.DS_KEEP_LOCATION_SENDER_POSTED_TITLE_PS);
            Object aobj2[] = new Object[1];
            aobj2[0] = mShareTooltipFud.getName();
            s = String.format(s4, aobj2);
            String s5 = nm.getLanguageString(DisplayStrings.DS_ON_MY_WAY_TEXT__ETA_PS);
            Object aobj3[] = new Object[1];
            aobj3[0] = mFinalEta;
            s2 = String.format(s5, aobj3);
            i = 0x7f02037c;
            ShareNativeManager.getInstance().shownReceivedLocationShareTip();
        } else
        if (flag)
        {
            s = nm.getLanguageString(DisplayStrings.DS_KEEP_YOUR_FAMILY_POSTED_TITLE);
            String s3 = nm.getLanguageString(DisplayStrings.DS_ON_MY_WAY_HOME_TEXT__ETA_PS);
            Object aobj1[] = new Object[1];
            aobj1[0] = mFinalEta;
            s2 = String.format(s3, aobj1);
            i = 0x7f02037b;
        } else
        {
            s = nm.getLanguageString(DisplayStrings.DS_KEEP_YOUR_FRIENDS_POSTED_TITLE);
            String s1 = nm.getLanguageString(DisplayStrings.DS_ON_MY_WAY_TEXT__ETA_PS);
            Object aobj[] = new Object[1];
            aobj[0] = mFinalEta;
            s2 = String.format(s1, aobj);
            i = 0x7f02037c;
        }
        mKeepFriends = new KeepYourFriendsDialog(mContext, s, s2, i, mShareTooltipFud, new android.view.View.OnClickListener() {

            final NavigationResult this$0;

            public void onClick(View view)
            {
                mKeepFriends.dismiss();
                if (mShareTooltipFud != null)
                {
                    mSelected.add(mShareTooltipFud);
                    mDialog.findViewById(0x7f0904b4).performClick();
                    return;
                }
                mGoOnReturnFromAddMore = true;
                if (!nm.IsAccessToContactsEnableNTV())
                {
                    (new PhoneRequestAccessDialog(AppService.getMainActivity(), new com.waze.phone.PhoneRequestAccessDialog.PhoneRequestAccessResultListener() {

                        final _cls17 this$1;

                        public void onResult(boolean flag)
                        {
                            if (flag)
                            {
                                AppService.getMainActivity().getLayoutMgr().navResultOpenAddFromActivity();
                            }
                        }

            
            {
                this$1 = _cls17.this;
                super();
            }
                    })).show();
                    return;
                } else
                {
                    openAddFromActivity();
                    return;
                }
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        });
        keepyourfriendsdialog = mKeepFriends;
        if (mTooltipEtaTimesToShow > 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        keepyourfriendsdialog.setShowAgain(flag1);
        if (mShareTooltipAnchor != null)
        {
            int ai[] = new int[2];
            mShareTooltipAnchor.getLocationOnScreen(ai);
            mKeepFriends.show(ai[0] + mShareTooltipAnchor.getWidth() / 2, ai[1] + mShareTooltipAnchor.getHeight() / 2);
        } else
        {
            mKeepFriends.show(0, 0);
        }
        mKeepFriends.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final NavigationResult this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                tooltipDismissed();
                mDialog.findViewById(0x7f0904b4).performClick();
            }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
        });
        isRecoverTooltipAfterOrientationChange = true;
    }

    private void stopTimer()
    {
        mHandler.removeCallbacks(updateTimeTask, null);
        if (mDialog != null)
        {
            ((TimerView)mDialog.findViewById(0x7f0904b6)).stop();
        }
    }

    void SendMeeting()
    {
        stopTimer();
        if (mSelected != null && !mSelected.isEmpty()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        final int addUids[];
        final String invitePhones[];
        final int inviteIds[];
        final String wazesPhones[];
        Iterator iterator;
        ArrayList arraylist = mSelected;
        addUids = new int[arraylist.size()];
        invitePhones = new String[arraylist.size()];
        inviteIds = new int[arraylist.size()];
        wazesPhones = new String[arraylist.size()];
        numAdd = 0;
        numInvite = 0;
        iterator = arraylist.iterator();
_L4:
label0:
        {
            if (iterator.hasNext())
            {
                break label0;
            }
            Analytics.log("SHARE_SENT", null, null);
            String s = MyWazeNativeManager.getInstance().GetLastShareURL();
            PersonBase personbase;
            Person person;
            if (NativeManager.getInstance().isFollowActiveNTV() && s != null && !s.equals(""))
            {
                if (numAdd > 0)
                {
                    NativeManager.getInstance().AddToMeeting(addUids, numAdd, wazesPhones, false);
                }
                if (numInvite > 0)
                {
                    NativeManager.getInstance().InviteToMeeting(invitePhones, inviteIds, numInvite, 4);
                    return;
                }
            } else
            {
                DriveToNativeManager.getInstance().getLocationData(1, Integer.valueOf(0), Integer.valueOf(0), new com.waze.navigate.DriveToNativeManager.LocationDataListener() {

                    final NavigationResult this$0;
                    private final int val$addUids[];
                    private final int val$inviteIds[];
                    private final String val$invitePhones[];
                    private final String val$wazesPhones[];

                    public void onComplete(LocationData locationdata)
                    {
                        NativeManager.getInstance().CreateMeetingBulk(locationdata.locationName, "ShareDrive", locationdata.locationX, locationdata.locationY, addUids, invitePhones, inviteIds, numAdd, numInvite, true, wazesPhones, locationdata.mStreet, locationdata.mCity, null, true, locationdata.mVenueId);
                    }

            
            {
                this$0 = NavigationResult.this;
                addUids = ai;
                invitePhones = as;
                inviteIds = ai1;
                wazesPhones = as1;
                super();
            }
                }, null);
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        personbase = (PersonBase)iterator.next();
        if (personbase.getIsOnWaze() && personbase.getID() >= 0)
        {
            wazesPhones[numAdd] = personbase.getPhone();
            addUids[numAdd] = personbase.getID();
            numAdd = 1 + numAdd;
        } else
        {
            if ((personbase instanceof FriendUserData) && personbase.getID() < 0)
            {
                person = AddressBook.GetPersonFromID(((FriendUserData)personbase).mContactID);
                invitePhones[numInvite] = person.getPhone();
                inviteIds[numInvite] = person.getID();
            } else
            {
                invitePhones[numInvite] = personbase.getPhone();
                inviteIds[numInvite] = personbase.getID();
            }
            numInvite = 1 + numInvite;
        }
          goto _L4
    }

    public void dismissNavigationResultDialogNoAnimation()
    {
        if (mKeepFriends != null)
        {
            mKeepFriends.dismissNow();
            mKeepFriends = null;
        }
        if (mSendEtaTip != null)
        {
            mSendEtaTip.dismiss(false);
            mSendEtaTip = null;
        }
        if (mDialog != null)
        {
            mDialog.dismiss();
        }
        isRecoverTooltipAfterOrientationChange = false;
        mShareTooltipAnchor = null;
    }

    public FriendUserData[] getNotifyFriends()
    {
        return mFriendsData;
    }

    public void loadMySharedDriveData()
    {
        DriveToNativeManager.getInstance().getMySharedDriveUsers(new com.waze.navigate.DriveToNativeManager.FriendsListListener() {

            final NavigationResult this$0;

            public void onComplete(FriendsListData friendslistdata)
            {
                View view;
                if (mDialog == null)
                {
                    return;
                }
                mFreqFriendsLayout.removeAllViews();
                view = mDialog.findViewById(0x7f0904ad);
                if (nm.isFollowActiveNTV())
                {
                    ImageButton imagebutton = (ImageButton)view.findViewById(0x7f090698);
                    imagebutton.setVisibility(0);
                    imagebutton.setOnClickListener(new android.view.View.OnClickListener() {

                        final _cls22 this$1;

                        public void onClick(View view)
                        {
                            dismissNavigationResultDialogNoAnimation();
                            Intent intent = new Intent(mContext, com/waze/navigate/social/MyShareDriveActivity);
                            intent.putExtra("meeting", mMeetingId);
                            mContext.startActivity(intent);
                        }

            
            {
                this$1 = _cls22.this;
                super();
            }
                    });
                }
                if (friendslistdata == null || friendslistdata.friends == null) goto _L2; else goto _L1
_L1:
                FriendUserData afrienduserdata[];
                int i;
                int j;
                mAlreadyShared = new ArrayList(friendslistdata.friends.length);
                afrienduserdata = friendslistdata.friends;
                i = afrienduserdata.length;
                j = 0;
_L6:
                if (j < i) goto _L4; else goto _L3
_L3:
                if (mAlreadyShared.size() > 0)
                {
                    view.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                        final _cls22 this$1;

                        public void onGlobalLayout()
                        {
                            mDialog.findViewById(0x7f0904ad).getViewTreeObserver().removeGlobalOnLayoutListener(this);
                            ShareUtility.shareComponentPopulate(mContext, mFreqFriendsLayout, mAlreadyShared, mSelected, false, true, null);
                            friendsListInsertAddMore();
                        }

            
            {
                this$1 = _cls22.this;
                super();
            }
                    });
                } else
                {
                    ShareUtility.shareComponentPopulate(mContext, mFreqFriendsLayout, null, mSuggestions, false, false, miFriendSelected);
                }
_L2:
                friendsListInsertAddMore();
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
                mAlreadyShared.add(frienduserdata);
                j++;
                if (true) goto _L6; else goto _L5
_L5:
            }


            
            {
                this$0 = NavigationResult.this;
                super();
            }
        });
    }

    public void onOrientationChanged(int i)
    {
        if (mDialog != null)
        {
            ((TimerView)mDialog.findViewById(0x7f0904b6)).stop();
            setDlgData();
            mShareTooltipAnchor = null;
            if (mKeepFriends != null)
            {
                mKeepFriends.initLayout();
                ((TimerView)mDialog.findViewById(0x7f0904b6)).stop();
                return;
            }
        }
    }

    public void openAddFromActivity()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        Intent intent = new Intent(mContext, com/waze/navigate/social/AddFromActivity);
        intent.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_SHARE);
        intent.putExtra(AddFromActivity.INTENT_SELECTED, mSelected);
        if (mAlreadyShared == null)
        {
            intent.putExtra(AddFromActivity.INTENT_SUGGESTED, mSuggestions);
        }
        intent.putExtra("type", 1);
        mainactivity.startActivityForResult(intent, 32786);
    }

    void shareRide()
    {
        stopTimer();
        Analytics.log("SHARE_MY_DRIVE_ETA");
        NativeManager.getInstance().SendShareMyRide();
    }

    public void show(String s, String s1, String s2, String s3, String s4, int i, String s5, 
            int j, boolean flag, boolean flag1, String s6, String s7, int k, String s8, 
            String s9, int l, boolean flag2, int i1, boolean flag3, String s10, String s11, 
            String s12, int j1, int k1, String s13, String s14, String s15, FriendUserData afrienduserdata[], 
            boolean flag4, boolean flag5)
    {
        if (mDialog != null)
        {
            ((TimerView)mDialog.findViewById(0x7f0904b6)).stop();
        }
        if (mDialog == null)
        {
            mDialog = new Dialog(mContext, 0x7f06000f) {

                final NavigationResult this$0;

                public void onBackPressed()
                {
                    onClose();
                }

            
            {
                this$0 = NavigationResult.this;
                super(context, i);
            }
            };
            mDialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

                final NavigationResult this$0;

                public void onCancel(DialogInterface dialoginterface)
                {
                    onClose();
                }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
            });
        }
        mCalculating = flag5;
        mFriendsData = afrienduserdata;
        mNoteID = i1;
        mConfigImage = s14;
        mNote = s;
        mGoodMorning = s1;
        mTitle = s2;
        mOfflineRoute = flag4;
        mDistance = s3;
        mDistanceUnit = s4;
        mVia = s5;
        mRouteLenght = i;
        mShowDisclaimer = flag;
        mIsWaypoint = flag1;
        mWaypointDistance = s6;
        mWaypointDistanceUnit = s7;
        mWaypointLength = k;
        mWaypointTitle = s8;
        mFinalTitle = s9;
        mIsTripServerResult = flag2;
        mTimeOut = j / 1000;
        mShownAgain = flag3;
        mPictureUserUrl = s10;
        mPictureFirstFriendUrl = s11;
        mPictureSecondFriendUrl = s12;
        mFriendsDrivingCount = k1;
        mFriendsOnline = j1;
        boolean flag6;
        if (MyWazeNativeManager.getInstance().getFacebookLoggedInNTV() && MyWazeNativeManager.getInstance().getContactLoggedInNTV())
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        mFacebookLoggedIn = flag6;
        mViaToll = s13;
        mFreeText = s15;
        mSelected = new ArrayList();
        mAlreadyShared = null;
        if (mFriendsData != null)
        {
            mSuggestions = new ArrayList(Arrays.asList(mFriendsData));
        } else
        {
            mSuggestions = new ArrayList();
        }
        setDlgData();
        mHandler.removeCallbacks(updateTimeTask);
        mHandler.postDelayed(updateTimeTask, 2000L);
        if (mShownAgain)
        {
            Analytics.log("BOTTOM_ETA_BOX_CLICKED");
        }
        if (mIsTripServerResult)
        {
            Analytics.log("NAVIGATE", "SOURCE", "TRIP_SRV");
        }
        if (!mDialog.isShowing())
        {
            mDialog.show();
            mDialog.findViewById(0x7f09047f).getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final NavigationResult this$0;

                public void onGlobalLayout()
                {
                    View view = mDialog.findViewById(0x7f09047f);
                    view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    AnimationUtils.openNavResultsFromRectangle(view, new android.view.animation.Animation.AnimationListener() {

                        final _cls16 this$1;

                        public void onAnimationEnd(Animation animation)
                        {
                            Analytics.log("ETA_SHOWN_AND_READY");
                        }

                        public void onAnimationRepeat(Animation animation)
                        {
                        }

                        public void onAnimationStart(Animation animation)
                        {
                        }

            
            {
                this$1 = _cls16.this;
                super();
            }
                    });
                }

            
            {
                this$0 = NavigationResult.this;
                super();
            }
            });
        }
    }

    public void showTooltipEta()
    {
        if (mForceShowTooltipEta)
        {
            showToolTipEtaOnce();
            mForceShowTooltipEta = false;
        } else
        if (mTooltipEtaOkToShow)
        {
            showToolTipEtaOnce();
            return;
        }
    }

    public void swapEtaTimeDisplay()
    {
        if (mNoteID == 1)
        {
            setETA("NA");
            return;
        }
        if (mEtaShown)
        {
            setTime(mMinutes);
            if (mIsWaypoint)
            {
                setWaypointTime(mWaypointLength / 60, mMinutes);
            }
            mEtaShown = false;
            return;
        }
        ((TextView)mDialog.findViewById(0x7f09048d)).setVisibility(0);
        SimpleDateFormat simpledateformat;
        if (DateFormat.is24HourFormat(AppService.getAppContext()))
        {
            simpledateformat = new SimpleDateFormat("H:mm");
        } else
        {
            simpledateformat = new SimpleDateFormat("h:mm a");
        }
        if (mFinalEta == null)
        {
            Calendar calendar1 = Calendar.getInstance();
            calendar1.add(12, mMinutes);
            mFinalEta = simpledateformat.format(calendar1.getTime());
        }
        setETA(mFinalEta);
        if (mIsWaypoint)
        {
            if (mWaypointEta == null)
            {
                Calendar calendar = Calendar.getInstance();
                calendar.add(12, mWaypointLength / 60);
                mWaypointEta = simpledateformat.format(calendar.getTime());
            }
            setWaypointETA(mWaypointEta, mFinalEta);
        }
        mEtaShown = true;
    }

    void tooltipDismissed()
    {
        if (mKeepFriends != null)
        {
            if (mKeepFriends.shouldShowAgain())
            {
                if (mTooltipEtaTimesToShow > 1)
                {
                    ShareNativeManager.getInstance().shownShareDriveTip();
                    mTooltipEtaOkToShow = false;
                }
            } else
            {
                mTooltipEtaTimesToShow = 0;
                mTooltipEtaOkToShow = false;
                ShareNativeManager.getInstance().shownShareDriveTip();
                ConfigManager.getInstance().setConfigDisplayCounter(3, 0x7fffffff);
            }
            if (mKeepFriends.isShowing())
            {
                mKeepFriends.dismiss();
            }
        }
        mWasTooltipDismissed = true;
        mKeepFriends = null;
    }

    public void updateData(String s, String s1, String s2, boolean flag)
    {
        Log.d("WAZE", (new StringBuilder("in NavigationResult::updateData with eta: ")).append(s).append(" time: ").append(s1).append(" distance: ").append(s2).append(" waypoint: ").append(flag).toString());
        if (mDialog != null && mDialog.isShowing())
        {
            if (s != null)
            {
                setEtaStr(s, flag);
            }
            if (s1 != null && !flag)
            {
                mMinutes = getAllInMin(s1);
            }
            if (s2 != null && !flag)
            {
                setDistStr(s2);
                setDistance();
            }
            mDialog.show();
        }
    }

    public void updateShare(ArrayList arraylist)
    {
        mSelected = arraylist;
        if (mAlreadyShared != null)
        {
            ShareUtility.shareComponentPopulate(mContext, mFreqFriendsLayout, mAlreadyShared, mSelected, true, true, miFriendSelected);
        } else
        {
            ShareUtility.shareComponentPopulate(mContext, mFreqFriendsLayout, null, mSelected, true, true, miFriendSelected);
        }
        friendsListInsertAddMore();
        if (mGoOnReturnFromAddMore)
        {
            mDialog.findViewById(0x7f0904b4).performClick();
        }
    }


































}
