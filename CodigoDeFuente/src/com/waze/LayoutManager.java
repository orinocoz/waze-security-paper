// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.analytics.Analytics;
import com.waze.animation.easing.AnimationEasingManager;
import com.waze.animation.easing.Bounce;
import com.waze.autocomplete.Person;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.NavigationResult;
import com.waze.menus.MainMenu;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navbar.NavBar;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.social.AddFriendsActivity;
import com.waze.navigate.social.EndDriveData;
import com.waze.navigate.social.FriendsDrivingActivity;
import com.waze.navigate.social.MyFriendsActivity;
import com.waze.notificationbar.NotificationBar;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.reports.ClosureMap;
import com.waze.reports.ReportMenu;
import com.waze.rtalerts.RTAlertsAlertData;
import com.waze.rtalerts.RTAlertsCommentData;
import com.waze.rtalerts.RTAlertsNativeManager;
import com.waze.rtalerts.RTAlertsThumbsUpData;
import com.waze.settings.SettingsVoiceCommandsActivity;
import com.waze.share.ShareUtility;
import com.waze.strings.DisplayStrings;
import com.waze.ticker.MessageTicker;
import com.waze.user.FriendUserData;
import com.waze.user.UserData;
import com.waze.utils.ImageRepository;
import com.waze.view.bottom.BottomNotification;
import com.waze.view.bottom.BottomNotificationOnClickIntent;
import com.waze.view.button.SwipeableButton;
import com.waze.view.map.MovingImageButton;
import com.waze.view.map.ProgressAnimation;
import com.waze.view.navbar.BottomBar;
import com.waze.view.navbar.TrafficBarView;
import com.waze.view.popups.AlertPopUp;
import com.waze.view.popups.AlertTicker;
import com.waze.view.popups.AlerterPopUp;
import com.waze.view.popups.BeepPopUp;
import com.waze.view.popups.BonusWebPopUP;
import com.waze.view.popups.CommentPopUP;
import com.waze.view.popups.EtaUpdatePopUp;
import com.waze.view.popups.FriendsOnlinePopUp;
import com.waze.view.popups.MyPageAdapter;
import com.waze.view.popups.PingPopUP;
import com.waze.view.popups.PoiPopUp;
import com.waze.view.popups.PopUp;
import com.waze.view.popups.SharePopup;
import com.waze.view.popups.SystemMessageWeb;
import com.waze.view.popups.ThumbsUpPopUP;
import com.waze.view.popups.TrafficDetectionPopUp;
import com.waze.view.popups.UpdateGasPopup;
import com.waze.view.popups.UserPopUp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Semaphore;

// Referenced classes of package com.waze:
//            TooltipType, AppService, MapViewWrapper, MainActivity, 
//            NativeManager, NavBarManager, EditBox, WzWebView, 
//            PopupAction, MapView, ConfigManager

public final class LayoutManager
{
    class QueuedTooltip
    {

        final long cb;
        final int intParam;
        final int numUsers;
        final LayoutManager this$0;
        final TooltipType type;
        final FriendUserData userData;

        public QueuedTooltip(TooltipType tooltiptype, int i, FriendUserData frienduserdata, long l, int j)
        {
            this$0 = LayoutManager.this;
            super();
            type = tooltiptype;
            numUsers = i;
            userData = frienduserdata;
            cb = l;
            intParam = j;
        }
    }

    public static class WazeRect
    {

        public int maxx;
        public int maxy;
        public int minx;
        public int miny;

        WazeRect(int i, int j, int k, int l)
        {
            minx = i;
            maxx = k;
            miny = j;
            maxy = l;
        }
    }


    private static int $SWITCH_TABLE$com$waze$TooltipType[];
    private static final int TOOLTIP_AUTO_CLOSE_TIMEOUT = 10000;
    public static final float WAZE_LAYOUT_EDIT_HEIGHT = 50F;
    public static final float WAZE_LAYOUT_EDIT_SIDE_MARGIN = 2F;
    public static final int WAZE_LAYOUT_EDIT_TYPE_SIMPLE = 0;
    public static final int WAZE_LAYOUT_EDIT_TYPE_VOICE = 1;
    private final int FILL_PARENT = -1;
    private MyPageAdapter adapter;
    private boolean bIsClosureRunning;
    private boolean bIsFriendsBarInitialized;
    private boolean bIsFriendsBarShown;
    private boolean bIsFriendsBarShownFirstTime;
    private boolean bIsPopUpShow;
    private boolean bIsTicker;
    private boolean bIsWaitingFriendsShown;
    private boolean bRefreshPageTime;
    private boolean bWasFriendsBarRefreshedAtLeastOnce;
    private ActivityBase context;
    private ReportMenu delayedReportMenu;
    private LayoutInflater inflater;
    private boolean isFriendsBarVisible;
    private boolean isSearchBarVisible;
    private boolean isSplashVisible;
    private boolean isTooltipFriendsShown;
    private boolean isTooltipMainMenuShown;
    private boolean isTooltipRoadClosureShown;
    private boolean isTooltipShareShown;
    private MapViewWrapper mAppView;
    private int mDotsAnimationOffCount;
    private int mDotsAnimationOnCount;
    private View mEditBoxView;
    private Handler mHandler;
    private int mIndexTickers[];
    private int mInterruptTime;
    boolean mIsToolTipDisplayed;
    private int mLastPageNumber;
    private RelativeLayout mMainLayout;
    private NavBar mNavBar;
    private NavigationResult mNavResult;
    private NotificationBar mNotifBar;
    private boolean mOrientationEventPending;
    private ImageView mPages[];
    private Runnable mRefreshPageRunnable;
    HashSet mReportedViewingFriendsIds;
    private boolean mShouldRestoreNearing;
    private boolean mShouldShowTrafficBar;
    private int mShowFriendsTip;
    private MessageTicker mTicker;
    ArrayList mToolTipQueue;
    private LinearLayout mTooltipFriends;
    private LinearLayout mTooltipFriends_ls;
    private LinearLayout mTooltipMainMenu;
    private LinearLayout mTooltipRoadClosure;
    private LinearLayout mTooltipShare;
    private TrafficBarView mTrafficBarView;
    private int mTypesTickers[];
    private View mViews[];
    private WzWebView mWebView;
    private ClosureMap m_closureMap;
    private volatile MainMenu mainMenu;
    private boolean mbPaused;
    private int nMaxETA;
    private int nMenuType;
    private int nNumberOfViews;
    private int nOptionalNumber;
    private int nPageNumber;
    private int nTickers;
    private boolean pendingAddStop;
    protected boolean pendingReportSwipe;
    private volatile boolean popupShown;
    private List popups;
    private volatile ReportMenu reportMenu;
    private Semaphore sm;
    private boolean useSwipeableButtons;

    static int[] $SWITCH_TABLE$com$waze$TooltipType()
    {
        int ai[] = $SWITCH_TABLE$com$waze$TooltipType;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[TooltipType.values().length];
        try
        {
            ai1[TooltipType.ARRIVAL_SENT.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[TooltipType.ETA.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[TooltipType.ETA_UPDATE_SENT.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[TooltipType.FRIENDS.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[TooltipType.MAIN_MENU.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[TooltipType.NEW_USER_VIEWING.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[TooltipType.ROAD_CLOSURE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[TooltipType.SHARE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        $SWITCH_TABLE$com$waze$TooltipType = ai1;
        return ai1;
    }

    public LayoutManager(ActivityBase activitybase)
    {
        delayedReportMenu = null;
        mNotifBar = null;
        mTicker = null;
        mOrientationEventPending = false;
        mNavResult = null;
        popups = new ArrayList();
        popupShown = false;
        bIsClosureRunning = false;
        pendingReportSwipe = false;
        mbPaused = true;
        isSplashVisible = false;
        isFriendsBarVisible = true;
        bIsFriendsBarInitialized = false;
        nNumberOfViews = 0;
        mHandler = new Handler();
        bIsWaitingFriendsShown = false;
        bIsTicker = false;
        bIsPopUpShow = false;
        nMaxETA = 0;
        nPageNumber = 0;
        nTickers = 0;
        bRefreshPageTime = true;
        bIsFriendsBarShown = false;
        bIsFriendsBarShownFirstTime = true;
        mLastPageNumber = -1;
        nMenuType = 0;
        mInterruptTime = 7;
        nOptionalNumber = 0;
        isSearchBarVisible = false;
        mShouldRestoreNearing = false;
        sm = new Semaphore(0);
        mShowFriendsTip = 1;
        mTrafficBarView = null;
        mShouldShowTrafficBar = true;
        mReportedViewingFriendsIds = new HashSet(4);
        mMainLayout = null;
        mAppView = null;
        mWebView = null;
        mEditBoxView = null;
        context = null;
        useSwipeableButtons = true;
        pendingAddStop = false;
        mToolTipQueue = new ArrayList(4);
        mIsToolTipDisplayed = false;
        context = activitybase;
        init();
    }

    private void AddUserToTimeline(int i, int j, String s, String s1, boolean flag)
    {
        RelativeLayout relativelayout;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        double d;
        float f;
        int k;
        int l;
        int i1;
        RelativeLayout relativelayout1;
        int j1;
        ImageView imageview;
        if (AppService.getAppContext().getResources().getConfiguration().orientation == 1)
        {
            relativelayout = (RelativeLayout)mMainLayout.findViewById(0x7f090395);
        } else
        {
            relativelayout = (RelativeLayout)mMainLayout.findViewById(0x7f09039d);
        }
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        d = 1.0D - (double)i / (double)j;
        if (d > 0.84999999999999998D)
        {
            d = 0.84999999999999998D;
        }
        f = context.getResources().getDisplayMetrics().density;
        k = (int)(f * (float)40);
        l = (int)(f * (float)5);
        i1 = relativelayout.getHeight() - k;
        relativelayout1 = (RelativeLayout)inflater.inflate(0x7f03005e, relativelayout, false);
        j1 = 0;
        if (flag)
        {
            j1 = l;
            l = 0;
        }
        layoutparams.setMargins(j1, i1 - (int)(d * (double)i1), l, 0);
        relativelayout1.setLayoutParams(layoutparams);
        imageview = (ImageView)relativelayout1.findViewById(0x7f09028b);
        if (!flag)
        {
            TextView textview = (TextView)relativelayout1.findViewById(0x7f0902e7);
            textview.setText(ShareUtility.getInitials(s1));
            textview.setVisibility(0);
            ImageRepository.instance.getImage(s, true, imageview, null, AppService.getMainActivity());
        } else
        {
            imageview.setVisibility(8);
            ((ImageView)relativelayout1.findViewById(0x7f09028c)).setImageResource(0x7f020167);
        }
        relativelayout1.setVisibility(0);
        relativelayout.addView(relativelayout1);
        relativelayout.requestLayout();
        relativelayout.invalidate();
    }

    private void InitPages()
    {
        mPages[0] = (ImageView)mMainLayout.findViewById(0x7f0903a7);
        mPages[1] = (ImageView)mMainLayout.findViewById(0x7f0903a8);
        mPages[2] = (ImageView)mMainLayout.findViewById(0x7f0903a9);
        mPages[3] = (ImageView)mMainLayout.findViewById(0x7f0903aa);
        mPages[4] = (ImageView)mMainLayout.findViewById(0x7f0903ab);
    }

    public static void OpenAboutPopup(String s)
    {
        final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
        dialog.setContentView(0x7f030000);
        ((WebView)dialog.findViewById(0x7f09002e)).loadData(s, "text/html; charset=utf-8", "UTF-8");
        dialog.findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            private final Dialog val$dialog;

            public void onClick(View view)
            {
                dialog.cancel();
                dialog.dismiss();
            }

            
            {
                dialog = dialog1;
                super();
            }
        });
        dialog.show();
    }

    private void closeTooltip(boolean flag, final TooltipType type)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        $SWITCH_TABLE$com$waze$TooltipType()[type.ordinal()];
        JVM INSTR tableswitch 1 8: default 60
    //                   1 157
    //                   2 189
    //                   3 173
    //                   4 205
    //                   5 60
    //                   6 189
    //                   7 189
    //                   8 189;
           goto _L3 _L4 _L5 _L6 _L7 _L3 _L5 _L5 _L5
_L3:
        final LinearLayout tooltipLayout;
        final LinearLayout tooltipLayout_ls;
        tooltipLayout = null;
        tooltipLayout_ls = null;
_L9:
        if (tooltipLayout != null)
        {
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setDuration(300L);
            alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final LayoutManager this$0;
                private final LinearLayout val$tooltipLayout;
                private final TooltipType val$type;

                public void onAnimationEnd(Animation animation)
                {
                    tooltipLayout.setVisibility(8);
                    toolTipClosed(type);
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$0 = LayoutManager.this;
                tooltipLayout = linearlayout;
                type = tooltiptype;
                super();
            }
            });
            tooltipLayout.startAnimation(alphaanimation);
        }
        if (tooltipLayout_ls != null)
        {
            AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation1.setDuration(300L);
            alphaanimation1.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final LayoutManager this$0;
                private final LinearLayout val$tooltipLayout_ls;
                private final TooltipType val$type;

                public void onAnimationEnd(Animation animation)
                {
                    tooltipLayout_ls.setVisibility(8);
                    toolTipClosed(type);
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$0 = LayoutManager.this;
                tooltipLayout_ls = linearlayout;
                type = tooltiptype;
                super();
            }
            });
            tooltipLayout_ls.startAnimation(alphaanimation1);
        }
_L2:
        return;
_L4:
        tooltipLayout = mTooltipRoadClosure;
        isTooltipRoadClosureShown = false;
        tooltipLayout_ls = null;
        continue; /* Loop/switch isn't completed */
_L6:
        tooltipLayout = mTooltipMainMenu;
        isTooltipMainMenuShown = false;
        tooltipLayout_ls = null;
        continue; /* Loop/switch isn't completed */
_L5:
        tooltipLayout = mTooltipShare;
        isTooltipShareShown = false;
        tooltipLayout_ls = null;
        continue; /* Loop/switch isn't completed */
_L7:
        tooltipLayout = mTooltipFriends;
        tooltipLayout_ls = mTooltipFriends_ls;
        isTooltipFriendsShown = false;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private InputMethodManager getInputMethodManager()
    {
        return (InputMethodManager)context.getSystemService("input_method");
    }

    private int[] getLocation(int i)
    {
        View view = mMainLayout.findViewById(i);
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        ai[0] = ai[0] + view.getWidth() / 2;
        ai[1] = ai[1] + view.getHeight() / 2;
        return ai;
    }

    private void init()
    {
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mMainLayout = (RelativeLayout)inflater.inflate(0x7f03007b, null);
        mAppView = (MapViewWrapper)mMainLayout.findViewById(0x7f090387);
        mTrafficBarView = (TrafficBarView)mMainLayout.findViewById(0x7f09039e);
        mMainLayout.findViewById(0x7f0903bd).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().asrCancel();
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        mViews = new View[5];
        mPages = new ImageView[5];
        mIndexTickers = new int[5];
        mTypesTickers = new int[5];
        mMainLayout.findViewById(0x7f09038d).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;

            public void onClick(View view)
            {
                Analytics.log("FRIENDS_DRIVING_BAR_CLICKED");
                Intent intent = new Intent(context, com/waze/navigate/social/FriendsDrivingActivity);
                context.startActivity(intent);
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        mMainLayout.findViewById(0x7f090397).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;

            public void onClick(View view)
            {
                Analytics.log("FRIENDS_DRIVING_BAR_CLICKED");
                Intent intent = new Intent(context, com/waze/navigate/social/FriendsDrivingActivity);
                context.startActivity(intent);
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        mMainLayout.findViewById(0x7f09038f).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;

            public void onClick(View view)
            {
                closeTooltip(isTooltipFriendsShown, TooltipType.FRIENDS);
                if (!MyWazeNativeManager.getInstance().getFacebookLoggedInNTV() && !MyWazeNativeManager.getInstance().getContactLoggedInNTV() && MyWazeNativeManager.getInstance().getNumberOfFriends() == 0)
                {
                    Intent intent2 = new Intent(context, com/waze/phone/PhoneNumberSignInActivity);
                    intent2.putExtra("type", 1);
                    intent2.putExtra("back", 1);
                    intent2.putExtra("fon_shon_rea_son", "FEATURE");
                    context.startActivity(intent2);
                    return;
                }
                if (MyWazeNativeManager.getInstance().getNumberOfFriends() == 0 && MyWazeNativeManager.getInstance().getNumberOfFriendsPending() == 0)
                {
                    Intent intent1 = new Intent(context, com/waze/navigate/social/AddFriendsActivity);
                    context.startActivity(intent1);
                    return;
                } else
                {
                    Intent intent = new Intent(context, com/waze/navigate/social/MyFriendsActivity);
                    context.startActivity(intent);
                    return;
                }
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        InitPages();
        mMainLayout.findViewById(0x7f090398).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;

            public void onClick(View view)
            {
                closeTooltip(isTooltipFriendsShown, TooltipType.FRIENDS);
                Intent intent = new Intent(context, com/waze/navigate/social/MyFriendsActivity);
                intent.putExtra("type", 0);
                context.startActivity(intent);
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        SwipeableButton swipeablebutton = (SwipeableButton)mMainLayout.findViewById(0x7f0903b6);
        swipeablebutton.bringToFront();
        swipeablebutton.setVisibility(8);
        swipeablebutton.setOnClickListener(new com.waze.view.button.SwipeableButton.SwipeableButtonListener() {

            final LayoutManager this$0;

            public void onClick()
            {
                closeTooltip(isTooltipRoadClosureShown, TooltipType.ROAD_CLOSURE);
                AppService.getNativeManager().savePoiPosition(true);
            }

            public void onSwipe()
            {
                closeTooltip(isTooltipRoadClosureShown, TooltipType.ROAD_CLOSURE);
                pendingReportSwipe = true;
                AppService.getNativeManager().savePoiPosition(true);
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        SwipeableButton swipeablebutton1 = (SwipeableButton)mMainLayout.findViewById(0x7f0903b3);
        swipeablebutton1.bringToFront();
        swipeablebutton1.setVisibility(8);
        swipeablebutton1.setOnClickListener(new com.waze.view.button.SwipeableButton.SwipeableButtonListener() {

            final LayoutManager this$0;

            public void onClick()
            {
                if (nMenuType == 0)
                {
                    closeTooltip(isTooltipMainMenuShown, TooltipType.MAIN_MENU);
                }
                if (IsPopupsShown())
                {
                    callCloseAllPopups(1);
                }
                openMainMenu();
            }

            public void onSwipe()
            {
                closeTooltip(isTooltipMainMenuShown, TooltipType.MAIN_MENU);
                if (IsPopupsShown())
                {
                    callCloseAllPopups(1);
                }
                if (AppService.getNativeManager() != null)
                {
                    AppService.getNativeManager().asrCancel();
                }
                if (AppService.getMainActivity() != null)
                {
                    AppService.getMainActivity().startNavigateActivity();
                }
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        mMainLayout.findViewById(0x7f0903b8).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;

            public void onClick(View view)
            {
                openDelayedReportMenu();
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        mMainLayout.findViewById(0x7f0903b9).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;

            public void onClick(View view)
            {
                openRoadRecordingMenu();
                removeRoadPavingTab();
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        mMainLayout.findViewById(0x7f0903a2).setVisibility(8);
        mMainLayout.findViewById(0x7f0903ac).setVisibility(8);
        mMainLayout.findViewById(0x7f0903a3).setVisibility(8);
        setSplash();
    }

    private boolean isAnyTouchClosesToolTip(TooltipType tooltiptype)
    {
        return tooltiptype == TooltipType.MAIN_MENU || tooltiptype == TooltipType.FRIENDS;
    }

    private boolean isAutoCloseToolTip(TooltipType tooltiptype)
    {
        return tooltiptype == TooltipType.SHARE || tooltiptype == TooltipType.ROAD_CLOSURE || tooltiptype == TooltipType.ETA_UPDATE_SENT || tooltiptype == TooltipType.ARRIVAL_SENT || tooltiptype == TooltipType.NEW_USER_VIEWING;
    }

    private void openDelayedReportMenu()
    {
        if (delayedReportMenu == null)
        {
            return;
        }
        if (IsClosureRunning())
        {
            Intent intent = new Intent(context, com/waze/reports/ClosureMap);
            ClosureMap.SetReportMenu(reportMenu);
            AppService.getMainActivity().startActivityForResult(intent, 1);
            return;
        } else
        {
            reportMenu = delayedReportMenu;
            delayedReportMenu.show();
            delayedReportMenu.open(true);
            return;
        }
    }

    private void openRoadRecordingMenu()
    {
        if (delayedReportMenu == null)
        {
            return;
        } else
        {
            reportMenu = delayedReportMenu;
            delayedReportMenu.show();
            delayedReportMenu.showRoadRecording();
            return;
        }
    }

    private void popupsAdd(PopUp popup)
    {
        if (!popups.contains(popup))
        {
            popups.add(popup);
        }
        setPopupShown();
    }

    private void popupsDismissAll()
    {
        do
        {
            if (popups.size() <= 0)
            {
                setPopupShown();
                return;
            }
            PopUp _tmp = (PopUp)popups.get(0);
            ((PopUp)popups.remove(0)).hide();
        } while (true);
    }

    private void popupsRemove(PopUp popup)
    {
        if (popups.contains(popup))
        {
            popups.remove(popup);
        }
        setPopupShown();
    }

    private int popupsSize()
    {
        return popups.size();
    }

    private void setCloseToolTipClickListener(View view, final Runnable runnable)
    {
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;
            private final Runnable val$runnable;

            public void onClick(View view1)
            {
                runnable.run();
            }

            
            {
                this$0 = LayoutManager.this;
                runnable = runnable1;
                super();
            }
        });
    }

    private void setCloseTooltipEvents(final TooltipType type, LinearLayout linearlayout)
    {
        Runnable runnable = new Runnable() {

            final LayoutManager this$0;
            private final TooltipType val$type;

            public void run()
            {
                closeTooltip(true, type);
            }

            
            {
                this$0 = LayoutManager.this;
                type = tooltiptype;
                super();
            }
        };
        if (isAutoCloseToolTip(type))
        {
            mIsToolTipDisplayed = true;
            AppService.Post(runnable, 10000L);
        }
        if (isAnyTouchClosesToolTip(type))
        {
            View view = mMainLayout.findViewById(0x7f0903c1);
            view.setVisibility(0);
            view.bringToFront();
            view.setOnTouchListener(new android.view.View.OnTouchListener() {

                final LayoutManager this$0;

                public boolean onTouch(View view1, MotionEvent motionevent)
                {
                    closeTooltip(isTooltipFriendsShown, TooltipType.FRIENDS);
                    closeTooltip(isTooltipMainMenuShown, TooltipType.MAIN_MENU);
                    mMainLayout.findViewById(0x7f0903c1).setVisibility(8);
                    return false;
                }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
            });
        }
        setCloseToolTipClickListener(linearlayout, runnable);
    }

    private void setSplash()
    {
        NativeManager nativemanager = AppService.getNativeManager();
        if (nativemanager == null)
        {
            isSplashVisible = true;
            return;
        } else
        {
            cancelSplash();
            nativemanager.getNavBarManager().restore(this);
            return;
        }
    }

    private void setTooltipShowEvents(final LinearLayout currentTooltip, final LinearLayout currentTooltip_ls, final String text)
    {
        AppService.Post(new Runnable() {

            final LayoutManager this$0;
            private final LinearLayout val$currentTooltip;
            private final LinearLayout val$currentTooltip_ls;
            private final String val$text;

            private void showAnimatedTooltip(LinearLayout linearlayout, String s)
            {
                linearlayout.setVisibility(0);
                linearlayout.bringToFront();
                ((TextView)linearlayout.findViewById(0x7f09072b)).setText(s);
                com.waze.view.anim.AnimationUtils.slideTooltip(linearlayout);
            }

            public void run()
            {
                showAnimatedTooltip(currentTooltip, text);
                if (currentTooltip_ls != null)
                {
                    showAnimatedTooltip(currentTooltip_ls, text);
                }
            }

            
            {
                this$0 = LayoutManager.this;
                currentTooltip = linearlayout;
                text = s;
                currentTooltip_ls = linearlayout1;
                super();
            }
        });
    }

    public void ChangeFriendsBarButtonType(boolean flag)
    {
        Drawable drawable;
        Drawable drawable1;
        if (!flag)
        {
            drawable = context.getResources().getDrawable(0x7f020176);
            if (bIsWaitingFriendsShown)
            {
                drawable1 = context.getResources().getDrawable(0x7f02017a);
            } else
            {
                drawable1 = context.getResources().getDrawable(0x7f020178);
            }
        } else
        {
            drawable = context.getResources().getDrawable(0x7f020175);
            if (bIsWaitingFriendsShown)
            {
                drawable1 = context.getResources().getDrawable(0x7f020179);
            } else
            {
                drawable1 = context.getResources().getDrawable(0x7f020177);
            }
        }
        ((ImageView)mMainLayout.findViewById(0x7f09038d)).setImageDrawable(drawable1);
        ((ImageView)mMainLayout.findViewById(0x7f09038f)).setImageDrawable(drawable);
        ((ImageView)mMainLayout.findViewById(0x7f090398)).setImageDrawable(drawable);
    }

    public void ChangeReportMenuButton(boolean flag)
    {
        SwipeableButton swipeablebutton = (SwipeableButton)mMainLayout.findViewById(0x7f0903b6);
        Drawable drawable;
        if (flag)
        {
            drawable = context.getResources().getDrawable(0x7f020327);
        } else
        {
            drawable = context.getResources().getDrawable(0x7f020328);
        }
        if (drawable != null)
        {
            swipeablebutton.setButtonDrawable(drawable);
            if (reportMenu != null)
            {
                reportMenu.setMenuButtonDrawable(drawable);
            }
        }
    }

    public void ChangeSearchBarOrientation(int i)
    {
label0:
        {
            if (isSearchBarVisible)
            {
                if (i != 1)
                {
                    break label0;
                }
                mMainLayout.findViewById(0x7f09039f).setVisibility(0);
                mMainLayout.findViewById(0x7f0903af).setVisibility(8);
                ((TextView)mMainLayout.findViewById(0x7f0903a1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS__PLACE_OR_CONTACT));
            }
            return;
        }
        mMainLayout.findViewById(0x7f09039f).setVisibility(8);
        mMainLayout.findViewById(0x7f0903af).setVisibility(0);
        ((TextView)mMainLayout.findViewById(0x7f0903b1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS__PLACE_OR_CONTACT));
    }

    public void CloseAlertTicker()
    {
        if (AlertTicker.getInstance(context, this).IsShown())
        {
            AlertTicker.getInstance(context, this).RemoveAlertTicker(0);
            AlertTicker.getInstance(context, this).Refresh();
        }
        if (mShouldRestoreNearing)
        {
            mShouldRestoreNearing = false;
            if (mNavBar != null && mNavBar.isShown())
            {
                mNavBar.restoreNearingPanel();
            }
        }
    }

    public void CloseNavResultPopup()
    {
        if (mNavResult != null)
        {
            mNavResult.dismissNavigationResultDialogNoAnimation();
        }
    }

    public void ClosureMapEnableButton(int i)
    {
        m_closureMap.EnableNextButton(i);
    }

    public EditBox CreateEditBox(int i)
    {
        i;
        JVM INSTR tableswitch 0 1: default 24
    //                   0 44
    //                   1 62;
           goto _L1 _L2 _L3
_L1:
        mEditBoxView = new EditBox(context);
_L5:
        return getEditBox();
_L2:
        mEditBoxView = new EditBox(context);
        continue; /* Loop/switch isn't completed */
_L3:
        mEditBoxView = View.inflate(context, 0x7f03004b, null);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public WzWebView CreateWebView(int i)
    {
        mWebView = new WzWebView(context, i);
        WzWebView.WebViewBackCallback webviewbackcallback = new WzWebView.WebViewBackCallback() {

            final LayoutManager this$0;

            public boolean onBackEvent(KeyEvent keyevent)
            {
                return mAppView.getMapView().onKeyDown(4, keyevent);
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        };
        mWebView.setBackCallback(webviewbackcallback);
        return mWebView;
    }

    public void HideEditBox()
    {
        if (mEditBoxView != null)
        {
            getEditBox().HideSoftInput();
            mMainLayout.removeView(mEditBoxView);
            mMainLayout.requestLayout();
            mEditBoxView = null;
        }
    }

    public void HideSoftInput(View view)
    {
        getInputMethodManager().hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public void HideWebView()
    {
        if (mWebView != null)
        {
            HideSoftInput(mWebView);
            mWebView.setVisibility(8);
            mMainLayout.removeView(mWebView);
            mWebView.destroy();
            mWebView = null;
            mMainLayout.requestLayout();
            System.gc();
        }
    }

    public void InitMainMenu()
    {
        if (mainMenu == null)
        {
            mainMenu = new MainMenu(context, this);
        }
    }

    public void InitPagesDots(int i, boolean flag)
    {
        int j = 0;
_L5:
        if (j < nNumberOfViews) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        int k = 0;
_L6:
        if (k < 5 - nNumberOfViews)
        {
            break MISSING_BLOCK_LABEL_77;
        }
_L4:
        return;
_L2:
        mPages[j].setVisibility(0);
        if (j == i)
        {
            mPages[j].setImageResource(0x7f02012a);
        } else
        {
            mPages[j].setImageResource(0x7f020129);
        }
        j++;
          goto _L5
        mPages[-1 + (5 - k)].setVisibility(8);
        k++;
          goto _L6
    }

    public void InitReportMenu(boolean flag, boolean flag1, boolean flag2)
    {
        if (reportMenu == null)
        {
            reportMenu = new ReportMenu(context, this, flag, flag1, flag2);
        }
    }

    public boolean IsAlerterShown()
    {
        return AlerterPopUp.IsAlerterShown();
    }

    public boolean IsClosureRunning()
    {
        return bIsClosureRunning;
    }

    public boolean IsPopupsShown()
    {
        return bIsPopUpShow;
    }

    public void OpenClosure(boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        if (reportMenu == null)
        {
            reportMenu = new ReportMenu(context, this, flag, flag1, flag2);
        }
        ClosureMap.launch(AppService.getMainActivity(), reportMenu, this, flag3);
    }

    public void OpenFriendsOnlinePopUp(int i)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            FriendsOnlinePopUp friendsonlinepopup = FriendsOnlinePopUp.getInstance(context, this);
            mViews[nNumberOfViews] = friendsonlinepopup.GetView();
            friendsonlinepopup.setPopUpTimer(i);
            nNumberOfViews = 1 + nNumberOfViews;
            friendsonlinepopup.setCloseTime(i);
            return;
        }
    }

    public void OpenImageView(Drawable drawable)
    {
        final Dialog dialog = new Dialog(context, 0x7f06000f);
        dialog.setContentView(0x7f030069);
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLOSE);
        ((TextView)dialog.findViewById(0x7f090322)).setText(s);
        ((ImageView)dialog.findViewById(0x7f09017b)).setImageDrawable(drawable);
        dialog.findViewById(0x7f090032).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                dialog.cancel();
                dialog.dismiss();
            }

            
            {
                this$0 = LayoutManager.this;
                dialog = dialog1;
                super();
            }
        });
        dialog.show();
    }

    public void OpenNavResultPopup(String s, String s1, String s2, String s3, String s4, int i, String s5, 
            int j, boolean flag, boolean flag1, String s6, String s7, int k, String s8, 
            String s9, int l, boolean flag2, int i1, boolean flag3, String s10, String s11, 
            String s12, int j1, int k1, String s13, String s14, String s15, FriendUserData afrienduserdata[], 
            boolean flag4, boolean flag5)
    {
        if (pendingAddStop)
        {
            pendingAddStop = false;
            AppService.getMainActivity().startStopPointActivity(true);
            return;
        }
        if (mNavResult == null)
        {
            mNavResult = new NavigationResult(context);
        }
        mNavResult.show(s, s1, s2, s3, s4, i, s5, j, flag, flag1, s6, s7, k, s8, s9, l, flag2, i1, flag3, s10, s11, s12, j1, k1, s13, s14, s15, afrienduserdata, flag4, flag5);
    }

    public void OpenPave(boolean flag, boolean flag1, boolean flag2)
    {
        if (reportMenu == null)
        {
            reportMenu = new ReportMenu(context, this, flag, flag1, flag2);
        }
        reportMenu.showRoadRecording();
    }

    public void OpenPopUps()
    {
        ViewPager viewpager;
        RefreshBar(MyWazeNativeManager.getInstance().getNumberOfFriendsOnline(), MyWazeNativeManager.getInstance().getNumberOfFriendsPending());
        adapter = new MyPageAdapter(nNumberOfViews, mViews);
        viewpager = (ViewPager)mMainLayout.findViewById(0x7f09023f);
        slideToBottom(mMainLayout.findViewById(0x7f0903a4));
        viewpager.setVisibility(0);
        viewpager.setAdapter(adapter);
        InitPagesDots(0, true);
        viewpager.setCurrentItem(0);
        if (nNumberOfViews != 1 || !(mViews[0] instanceof PoiPopUp) || ((PopUp)mViews[0]).GetTimer() > 0)
        {
            NativeManager.getInstance().PopupAction(PopupAction.popup_shown.ordinal(), 0, 0);
            mLastPageNumber = 0;
            CloseAlertTicker();
        }
        if (mViews[0] == null)
        {
            return;
        }
        if (nNumberOfViews <= 1) goto _L2; else goto _L1
_L1:
        mMainLayout.findViewById(0x7f0903a6).setVisibility(0);
        if (((PopUp)mViews[0]).GetTimer() > 0)
        {
            SwitchPagePeriodicly();
        }
_L4:
        viewpager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final LayoutManager this$0;

            public void onPageScrollStateChanged(int j)
            {
                if (j == 1)
                {
                    bRefreshPageTime = false;
                }
            }

            public void onPageScrolled(int j, float f, int k)
            {
            }

            public void onPageSelected(int j)
            {
                if (mLastPageNumber == -1)
                {
                    return;
                }
                if (j != mLastPageNumber && mLastPageNumber >= 0)
                {
                    NativeManager.getInstance().PopupAction(PopupAction.popup_hidden.ordinal(), mLastPageNumber, 0);
                }
                NativeManager.getInstance().PopupAction(PopupAction.popup_shown.ordinal(), j, 0);
                CloseAlertTicker();
                SwitchDot(j, mLastPageNumber);
                mLastPageNumber = j;
                nPageNumber = j;
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        });
        int i = ((PopUp)mViews[0]).GetHeight();
        (RelativeLayout)mMainLayout.findViewById(0x7f0903a4);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, i);
        if (NativeManager.getInstance().isNavigatingNTV())
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            layoutparams.setMargins(0, (int)(context.getResources().getDisplayMetrics().density * (float)55), 0, 0);
        }
        viewpager.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, i));
        viewpager.setPadding(0, 0, 0, 0);
        mMainLayout.findViewById(0x7f0903a4).setLayoutParams(layoutparams);
        return;
_L2:
        mMainLayout.findViewById(0x7f0903a6).setVisibility(8);
        if (((PopUp)mViews[0]).GetTimer() > 0)
        {
            SwitchPagePeriodicly();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void OpenSwipePopups()
    {
        if (mViews != null && mViews[0] != null)
        {
            SearchBarChangeStatus(false);
            bIsPopUpShow = true;
            mLastPageNumber = 0;
            bRefreshPageTime = true;
            mMainLayout.findViewById(0x7f0903ae).setVisibility(0);
            if (NativeManager.getInstance().isNavigatingNTV() || NativeManager.getInstance().isNearNTV())
            {
                if (mNavBar != null)
                {
                    mNavBar.AlertAnimation(true, new android.view.animation.Animation.AnimationListener() {

                        final LayoutManager this$0;

                        public void onAnimationEnd(Animation animation)
                        {
                        }

                        public void onAnimationRepeat(Animation animation)
                        {
                        }

                        public void onAnimationStart(Animation animation)
                        {
                            mMainLayout.findViewById(0x7f0903a4).postDelayed(new Runnable() {

                                final _cls13 this$1;

                                public void run()
                                {
                                    OpenPopUps();
                                }

            
            {
                this$1 = _cls13.this;
                super();
            }
                            }, 100L);
                        }


            
            {
                this$0 = LayoutManager.this;
                super();
            }
                    });
                    return;
                }
            } else
            {
                OpenPopUps();
                return;
            }
        }
    }

    public void OpenSystemMessageWebPopUp(String s)
    {
        SystemMessageWeb.getInstance(context, this).show(s);
    }

    public void OpenUpdatePricesPopUp(long l, long l1)
    {
        UpdateGasPopup updategaspopup = UpdateGasPopup.getInstance(context, this);
        updategaspopup.show(l, l1);
        updategaspopup.setCloseTime(15);
    }

    public void RefreshBar(int i, int j)
    {
        if (!NativeManager.getInstance().isNavigatingNTV())
        {
            nMaxETA = 0;
        }
        if ((MyWazeNativeManager.getInstance().getFacebookLoggedInNTV() || MyWazeNativeManager.getInstance().getContactLoggedInNTV()) && !isSplashVisible && !IsAlerterShown() && !IsPopupsShown() && !NativeManager.getInstance().GetShowScreenIconsNTV())
        {
            ((ImageView)mMainLayout.findViewById(0x7f09039b)).setImageResource(0x7f02017b);
            ((ImageView)mMainLayout.findViewById(0x7f090392)).setImageResource(0x7f02017b);
            ((TextView)mMainLayout.findViewById(0x7f090393)).setVisibility(0);
            ((TextView)mMainLayout.findViewById(0x7f09039c)).setVisibility(0);
            showFriendsTooltip();
            if (i > 0)
            {
                DriveToNativeManager.getInstance().getEndDriveData(new com.waze.navigate.DriveToNativeManager.EndDriveListener() {

                    final LayoutManager this$0;

                    public void onComplete(EndDriveData enddrivedata)
                    {
                        int l = AppService.getAppContext().getResources().getConfiguration().orientation;
                        final RelativeLayout endDriveFriendsLayout;
                        if (l == 1)
                        {
                            endDriveFriendsLayout = (RelativeLayout)mMainLayout.findViewById(0x7f090395);
                        } else
                        {
                            endDriveFriendsLayout = (RelativeLayout)mMainLayout.findViewById(0x7f09039d);
                        }
                        endDriveFriendsLayout.removeAllViews();
                        endDriveFriendsLayout.requestLayout();
                        if (enddrivedata.friends.length == 0)
                        {
                            nMaxETA = 0;
                        }
                        if (enddrivedata.friends.length == 0 || l == 2)
                        {
                            mMainLayout.findViewById(0x7f09038d).setVisibility(8);
                            endDriveFriendsLayout.setVisibility(8);
                            mMainLayout.findViewById(0x7f090397).setVisibility(8);
                            bIsFriendsBarShown = false;
                            return;
                        }
                        if (!bIsFriendsBarShown)
                        {
                            bIsFriendsBarShown = true;
                            Analytics.log("FRIENDS_DRIVING_BAR_SHOWN");
                        }
                        boolean flag = DriveToNativeManager.getInstance().isDayMode();
                        bIsWaitingFriendsShown = false;
                        if (flag)
                        {
                            ((ImageView)mMainLayout.findViewById(0x7f09038d)).setImageResource(0x7f020177);
                        } else
                        {
                            ((ImageView)mMainLayout.findViewById(0x7f09038d)).setImageResource(0x7f020178);
                        }
                        mMainLayout.findViewById(0x7f09038d).setVisibility(0);
                        endDriveFriendsLayout.setVisibility(0);
                        mMainLayout.findViewById(0x7f090397).setVisibility(0);
                        if (nMaxETA == 0 || enddrivedata.maxEtaSeconds > nMaxETA)
                        {
                            nMaxETA = enddrivedata.maxEtaSeconds;
                        }
                        endDriveFriendsLayout.getViewTreeObserver().addOnGlobalLayoutListener(enddrivedata. new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                            final _cls19 this$1;
                            private final EndDriveData val$data;
                            private final RelativeLayout val$endDriveFriendsLayout;

                            public void onGlobalLayout()
                            {
                                endDriveFriendsLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                                FriendUserData afrienduserdata[] = data.friends;
                                int i = afrienduserdata.length;
                                int j = 0;
                                do
                                {
                                    if (j >= i)
                                    {
                                        AddUserToTimeline(data.myEtaSeconds, nMaxETA, data.myPictureUrl, null, true);
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
                                    AddUserToTimeline(k, nMaxETA, s, s1, false);
                                    j++;
                                } while (true);
                            }

            
            {
                this$1 = final__pcls19;
                endDriveFriendsLayout = relativelayout;
                data = EndDriveData.this;
                super();
            }
                        });
                    }


            
            {
                this$0 = LayoutManager.this;
                super();
            }
                });
            } else
            {
                RelativeLayout relativelayout = (RelativeLayout)mMainLayout.findViewById(0x7f090395);
                relativelayout.removeAllViews();
                relativelayout.requestLayout();
                mMainLayout.findViewById(0x7f09038d).setVisibility(8);
                mMainLayout.findViewById(0x7f090397).setVisibility(8);
            }
            if (j > 0)
            {
                ((TextView)mMainLayout.findViewById(0x7f090391)).setVisibility(0);
                ((TextView)mMainLayout.findViewById(0x7f09039a)).setVisibility(0);
                ((TextView)mMainLayout.findViewById(0x7f09039a)).setText(Integer.toString(j));
                ((TextView)mMainLayout.findViewById(0x7f090391)).setText(Integer.toString(j));
            } else
            {
                ((TextView)mMainLayout.findViewById(0x7f09039a)).setVisibility(8);
                ((TextView)mMainLayout.findViewById(0x7f090391)).setVisibility(8);
            }
            ((TextView)mMainLayout.findViewById(0x7f090393)).setText(Integer.toString(i));
            ((TextView)mMainLayout.findViewById(0x7f09039c)).setText(Integer.toString(i));
            if (isFriendsBarVisible)
            {
                if (AppService.getAppContext().getResources().getConfiguration().orientation == 1)
                {
                    mMainLayout.findViewById(0x7f09038c).setVisibility(0);
                    mMainLayout.findViewById(0x7f090396).setVisibility(8);
                } else
                {
                    mMainLayout.findViewById(0x7f090396).setVisibility(0);
                    mMainLayout.findViewById(0x7f09038c).setVisibility(8);
                }
                bIsFriendsBarInitialized = true;
            }
            return;
        }
        if (!MyWazeNativeManager.getInstance().getFacebookLoggedInNTV() && !MyWazeNativeManager.getInstance().getContactLoggedInNTV() && !isSplashVisible && !IsAlerterShown() && !IsPopupsShown() && !NativeManager.getInstance().GetShowScreenIconsNTV())
        {
            showFriendsTooltip();
            int k = AppService.getAppContext().getResources().getConfiguration().orientation;
            mMainLayout.findViewById(0x7f09038d).setVisibility(8);
            mMainLayout.findViewById(0x7f090397).setVisibility(8);
            if (k == 1)
            {
                mMainLayout.findViewById(0x7f09038c).setVisibility(0);
                mMainLayout.findViewById(0x7f090396).setVisibility(8);
            } else
            {
                mMainLayout.findViewById(0x7f090396).setVisibility(0);
                mMainLayout.findViewById(0x7f09038c).setVisibility(8);
            }
            ((ImageView)mMainLayout.findViewById(0x7f09039b)).setImageResource(0x7f02017c);
            ((ImageView)mMainLayout.findViewById(0x7f090392)).setImageResource(0x7f02017c);
            ((TextView)mMainLayout.findViewById(0x7f090393)).setVisibility(8);
            ((TextView)mMainLayout.findViewById(0x7f09039c)).setVisibility(8);
            return;
        } else
        {
            mMainLayout.findViewById(0x7f09038c).setVisibility(8);
            mMainLayout.findViewById(0x7f090396).setVisibility(8);
            return;
        }
    }

    public void ResizeWebView(WazeRect wazerect)
    {
        if (mWebView == null)
        {
            return;
        } else
        {
            int i = 1 + (wazerect.maxx - wazerect.minx);
            int j = 1 + (wazerect.maxy - wazerect.miny);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)mWebView.getLayoutParams();
            layoutparams.width = i;
            layoutparams.height = j;
            layoutparams.leftMargin = wazerect.minx;
            layoutparams.topMargin = wazerect.miny;
            mWebView.setLayoutParams(layoutparams);
            mMainLayout.requestLayout();
            return;
        }
    }

    public void RunDotOffAnimation(final ImageView image, final int ImagesId[])
    {
        mDotsAnimationOffCount = 0;
        final Handler hn = new Handler();
        hn.postDelayed(new Runnable() {

            final LayoutManager this$0;
            private final int val$ImagesId[];
            private final Handler val$hn;
            private final ImageView val$image;

            public void run()
            {
                if (mDotsAnimationOffCount < ImagesId.length)
                {
                    image.setImageResource(ImagesId[(-1 + ImagesId.length) - mDotsAnimationOffCount]);
                    LayoutManager layoutmanager = LayoutManager.this;
                    layoutmanager.mDotsAnimationOffCount = 1 + layoutmanager.mDotsAnimationOffCount;
                    hn.postDelayed(this, 30L);
                    return;
                } else
                {
                    mDotsAnimationOffCount = 0;
                    return;
                }
            }

            
            {
                this$0 = LayoutManager.this;
                ImagesId = ai;
                image = imageview;
                hn = handler;
                super();
            }
        }, 30L);
    }

    public void RunDotOnAnimation(final ImageView image, final int ImagesId[])
    {
        mDotsAnimationOnCount = 0;
        final Handler hn = new Handler();
        hn.postDelayed(new Runnable() {

            final LayoutManager this$0;
            private final int val$ImagesId[];
            private final Handler val$hn;
            private final ImageView val$image;

            public void run()
            {
                if (mDotsAnimationOnCount < ImagesId.length)
                {
                    image.setImageResource(ImagesId[mDotsAnimationOnCount]);
                    LayoutManager layoutmanager = LayoutManager.this;
                    layoutmanager.mDotsAnimationOnCount = 1 + layoutmanager.mDotsAnimationOnCount;
                    hn.postDelayed(this, 100L);
                    return;
                } else
                {
                    mDotsAnimationOnCount = 0;
                    return;
                }
            }

            
            {
                this$0 = LayoutManager.this;
                ImagesId = ai;
                image = imageview;
                hn = handler;
                super();
            }
        }, 100L);
    }

    public void SearchBarChangeStatus(boolean flag)
    {
        if (IsPopupsShown())
        {
            return;
        }
        View view = mMainLayout.findViewById(0x7f09039f);
        View view1 = mMainLayout.findViewById(0x7f0903af);
        if (flag)
        {
            isSearchBarVisible = true;
            ((TextView)mMainLayout.findViewById(0x7f0903a1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS__PLACE_OR_CONTACT));
            ((TextView)mMainLayout.findViewById(0x7f0903b1)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS__PLACE_OR_CONTACT));
            if (AppService.getAppResources().getConfiguration().orientation == 1)
            {
                slideToBottomWithFade(view);
                view1.setVisibility(8);
                return;
            } else
            {
                view.setVisibility(8);
                slideToBottomWithFade(view1);
                return;
            }
        }
        isSearchBarVisible = false;
        if (AppService.getAppResources().getConfiguration().orientation == 1)
        {
            slideToOutWithFade(view);
            view1.setVisibility(8);
            return;
        } else
        {
            slideToOutWithFade(view1);
            view.setVisibility(8);
            return;
        }
    }

    public void SetClosureMap(ClosureMap closuremap)
    {
        m_closureMap = closuremap;
    }

    public void SetDarkViewOffset(int i, int j)
    {
    }

    public void SetFriendsBarVisibilty(boolean flag)
    {
        int i = AppService.getAppContext().getResources().getConfiguration().orientation;
        isFriendsBarVisible = flag;
        if (isFriendsBarVisible && bIsFriendsBarInitialized && !IsAlerterShown() && !IsPopupsShown())
        {
            if (i == 1)
            {
                mMainLayout.findViewById(0x7f09038c).setVisibility(0);
                mMainLayout.findViewById(0x7f09038c).setPadding(0, 0, 0, 0);
                return;
            } else
            {
                mMainLayout.findViewById(0x7f090396).setVisibility(0);
                mMainLayout.findViewById(0x7f090396).setPadding(0, 0, 0, 0);
                return;
            }
        } else
        {
            mMainLayout.findViewById(0x7f09038c).setVisibility(8);
            mMainLayout.findViewById(0x7f090396).setVisibility(8);
            return;
        }
    }

    public void SetInterruptTime(int i)
    {
        if (i > 0)
        {
            mInterruptTime = i;
        }
    }

    public void SetMenuButton()
    {
        setMenuButtonType(nMenuType, nOptionalNumber);
    }

    public void SetMenuMainButton()
    {
        boolean flag;
        flag = true;
        if (android.os.Build.VERSION.SDK_INT > 11)
        {
            flag = DriveToNativeManager.getInstance().isDayMode();
        }
        if (nMenuType != 0) goto _L2; else goto _L1
_L1:
        Drawable drawable;
        if (flag)
        {
            drawable = context.getResources().getDrawable(0x7f02023e);
        } else
        {
            drawable = context.getResources().getDrawable(0x7f020245);
        }
_L4:
        if (drawable != null && mainMenu != null)
        {
            mainMenu.setMenuButtonDrawable(drawable);
        }
        return;
_L2:
        if (nMenuType == 1)
        {
            if (flag)
            {
                drawable = context.getResources().getDrawable(0x7f020243);
            } else
            {
                drawable = context.getResources().getDrawable(0x7f020244);
            }
        } else
        {
            int i = nMenuType;
            drawable = null;
            if (i == 2)
            {
                if (nOptionalNumber == 0)
                {
                    if (flag)
                    {
                        drawable = context.getResources().getDrawable(0x7f02023f);
                    } else
                    {
                        drawable = context.getResources().getDrawable(0x7f020240);
                    }
                } else
                if (flag)
                {
                    drawable = context.getResources().getDrawable(0x7f020241);
                } else
                {
                    drawable = context.getResources().getDrawable(0x7f020242);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void SetPoiAction(String s)
    {
        PoiPopUp.getInstance(context, this).SetAction(s);
    }

    public void SetPopUpInterrupt(boolean flag)
    {
        if (flag)
        {
            if (mRefreshPageRunnable != null)
            {
                ((ViewPager)mMainLayout.findViewById(0x7f09023f)).removeCallbacks(mRefreshPageRunnable);
                mRefreshPageRunnable = null;
            }
            return;
        } else
        {
            bRefreshPageTime = false;
            return;
        }
    }

    public void ShowBonusWebPopup(int i, String s, int j, int k)
    {
        BonusWebPopUP.getInstance(context, this).show(i, s, j, k);
    }

    public void ShowEditBox(int i, int j)
    {
        if (mEditBoxView == null)
        {
            CreateEditBox(j);
        }
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.leftMargin = 0;
        layoutparams.rightMargin = 0;
        layoutparams.topMargin = 0;
        mMainLayout.addView(mEditBoxView, layoutparams);
        mEditBoxView.setVisibility(0);
        mMainLayout.bringChildToFront(mEditBoxView);
        mMainLayout.requestLayout();
        mEditBoxView.requestFocus();
        Runnable runnable = new Runnable() {

            final LayoutManager this$0;

            public void run()
            {
                EditBox editbox = getEditBox();
                if (editbox != null)
                {
                    ShowSoftInput(editbox);
                }
            }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
        };
        mEditBoxView.postDelayed(runnable, 100L);
    }

    public void ShowSoftInput(View view)
    {
        getInputMethodManager().restartInput(view);
        getInputMethodManager().showSoftInput(view, 2);
    }

    public void ShowWebView(String s, WazeRect wazerect, int i)
    {
        if (mWebView != null)
        {
            mMainLayout.removeView(mWebView);
            mWebView.destroy();
            mWebView = null;
        }
        CreateWebView(i);
        mWebView.clearView();
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(1 + (wazerect.maxx - wazerect.minx), 1 + (wazerect.maxy - wazerect.miny));
        layoutparams.leftMargin = wazerect.minx;
        layoutparams.topMargin = wazerect.miny;
        mMainLayout.addView(mWebView, layoutparams);
        mWebView.setVisibility(0);
        mMainLayout.bringChildToFront(mWebView);
        mMainLayout.requestLayout();
        mWebView.loadUrl(s);
        mWebView.requestFocus();
    }

    public void SwitchDot(int i, int j)
    {
        mPages[i].setImageResource(0x7f02012a);
        mPages[j].setImageResource(0x7f020129);
    }

    public void SwitchPagePeriodicly()
    {
        if (bIsPopUpShow)
        {
            final ViewPager myPager = (ViewPager)mMainLayout.findViewById(0x7f09023f);
            mRefreshPageRunnable = new Runnable() {

                final LayoutManager this$0;
                private final ViewPager val$myPager;

                public void run()
                {
label0:
                    {
                        if (bIsPopUpShow)
                        {
                            if (nNumberOfViews != 1 || !bRefreshPageTime)
                            {
                                break label0;
                            }
                            callCloseAllPopups(0);
                        }
                        return;
                    }
                    if (bRefreshPageTime)
                    {
                        if (nNumberOfViews <= 1 + nPageNumber)
                        {
                            callCloseAllPopups(0);
                            return;
                        }
                        LayoutManager layoutmanager = LayoutManager.this;
                        layoutmanager.nPageNumber = 1 + layoutmanager.nPageNumber;
                        if (mViews[nPageNumber] == null)
                        {
                            callCloseAllPopups(0);
                            return;
                        } else
                        {
                            myPager.setCurrentItem(nPageNumber);
                            myPager.postDelayed(this, 1000 * ((PopUp)mViews[nPageNumber]).GetTimer());
                            return;
                        }
                    } else
                    {
                        bRefreshPageTime = true;
                        myPager.postDelayed(this, 1000 * mInterruptTime);
                        return;
                    }
                }

            
            {
                this$0 = LayoutManager.this;
                myPager = viewpager;
                super();
            }
            };
            myPager.postDelayed(mRefreshPageRunnable, 1000 * ((PopUp)mViews[nPageNumber]).GetTimer());
        }
    }

    public void UpdateUserPopup(int i, int j)
    {
        UserPopUp.getInstance(context).update(i, j);
    }

    public void addView(PopUp popup)
    {
        if (mbPaused)
        {
            return;
        }
        if (popup.getParent() != null)
        {
            mMainLayout.removeView(popup);
        }
        popupsAdd(popup);
        ViewGroup viewgroup = (ViewGroup)mMainLayout.findViewById(0x7f0903bd);
        int i = mMainLayout.indexOfChild(viewgroup);
        mMainLayout.addView(popup, i);
    }

    public void callCloseAllPopups(int i)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        nativemanager.PopupAction(PopupAction.popup_hidden.ordinal(), mLastPageNumber, 0);
        mLastPageNumber = -1;
        nativemanager.CloseAllPopups(i);
    }

    public void cancelSplash()
    {
        mAppView.getMapView().setBackgroundDrawable(null);
        mMainLayout.findViewById(0x7f0903b3).setVisibility(0);
        mMainLayout.findViewById(0x7f0903b6).setVisibility(0);
        isSplashVisible = false;
    }

    public void changeVoicePopupState(boolean flag)
    {
        NativeManager nativemanager = AppService.getNativeManager();
        TextView textview = (TextView)mMainLayout.findViewById(0x7f0903be);
        textview.setText(nativemanager.getLanguageString(DisplayStrings.DS_WAIT));
        textview.setBackgroundResource(0x7f0203cf);
        ProgressBar progressbar = (ProgressBar)mMainLayout.findViewById(0x7f0903bf);
        if (true)
        {
            textview.startAnimation(AnimationUtils.loadAnimation(context, 0x7f040004));
            textview.setVisibility(0);
            progressbar.setVisibility(8);
            return;
        } else
        {
            textview.setVisibility(8);
            textview.clearAnimation();
            progressbar.setVisibility(0);
            return;
        }
    }

    public void closeFriendsOnlinePopup()
    {
        FriendsOnlinePopUp.getInstance(context, this).hide();
    }

    public void closePoi()
    {
        PoiPopUp.getInstance(context, this).hide();
    }

    public void closeProgressPopup()
    {
        mMainLayout.findViewById(0x7f0903ba).setVisibility(8);
        ((ProgressAnimation)mMainLayout.findViewById(0x7f0903bb)).stop();
    }

    public void closeShareTooltip()
    {
        closeTooltip(isTooltipShareShown, TooltipType.SHARE);
    }

    public void closeThumbsUpPopup()
    {
        ThumbsUpPopUP.getInstance(context, this).hide();
    }

    public void closeUserPopup()
    {
        UserPopUp userpopup = UserPopUp.getInstance(context);
        if (userpopup != null)
        {
            userpopup.hide();
        }
    }

    public void closeVoicePopup()
    {
        mMainLayout.findViewById(0x7f0903bd).setVisibility(8);
        ((TextView)mMainLayout.findViewById(0x7f0903be)).clearAnimation();
    }

    public NavBar createNavBar()
    {
        if (AppService.getNativeManager().getLanguageRtl())
        {
            mNavBar = new NavBar(mMainLayout.findViewById(0x7f0903ad), getBottomBar());
        } else
        {
            mNavBar = new NavBar(mMainLayout.findViewById(0x7f0903ac), getBottomBar());
        }
        return mNavBar;
    }

    public void dismiss(PopUp popup)
    {
        popupsRemove(popup);
        mMainLayout.removeView(popup);
        mMainLayout.requestLayout();
    }

    public void displayBottomPrivacyMessage()
    {
        getBottomNotification().setShortMessage((new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADDING_YOU_TO_THE_MAP)))).append("\n").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_TAP_FOR_OPTIONS)).toString(), 5);
        getBottomNotification().setListener(BottomNotificationOnClickIntent.MY_WAZE_ACTIVITY);
    }

    public void displayVoiceError()
    {
        NativeManager nativemanager = AppService.getNativeManager();
        TextView textview = (TextView)mMainLayout.findViewById(0x7f0903be);
        textview.setText(nativemanager.getLanguageString(DisplayStrings.DS_NO_CONNECTION));
        textview.setBackgroundResource(0x7f0203cf);
        textview.clearAnimation();
    }

    public void displayVoiceListening()
    {
        NativeManager nativemanager = AppService.getNativeManager();
        TextView textview = (TextView)mMainLayout.findViewById(0x7f0903be);
        textview.setText(nativemanager.getLanguageString(DisplayStrings.DS_LISTENINGPPP));
        textview.setBackgroundResource(0x7f0203ce);
    }

    public void displayVoiceWait()
    {
        NativeManager nativemanager = AppService.getNativeManager();
        ((TextView)mMainLayout.findViewById(0x7f0903be)).setText(nativemanager.getLanguageString(DisplayStrings.DS_WAIT));
    }

    public void doneCloseAllPopups()
    {
        bIsPopUpShow = false;
        if (mRefreshPageRunnable != null)
        {
            ((ViewPager)mMainLayout.findViewById(0x7f09023f)).removeCallbacks(mRefreshPageRunnable);
            mRefreshPageRunnable = null;
        }
        nPageNumber = 0;
        RefreshBar(MyWazeNativeManager.getInstance().getNumberOfFriendsOnline(), MyWazeNativeManager.getInstance().getNumberOfFriendsPending());
        bIsTicker = false;
        slideToOut(mMainLayout.findViewById(0x7f0903a4));
        if (nNumberOfViews <= 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        if (i < nNumberOfViews) goto _L4; else goto _L3
_L3:
        nNumberOfViews = 0;
        adapter = null;
_L2:
        mMainLayout.findViewById(0x7f0903ae).setVisibility(8);
        ((ViewPager)mMainLayout.findViewById(0x7f09023f)).setVisibility(8);
        mMainLayout.findViewById(0x7f0903a4).setVisibility(8);
        NativeManager nativemanager = NativeManager.getInstance();
        if ((nativemanager.isNavigatingNTV() || nativemanager.isNearNTV()) && mNavBar != null)
        {
            mNavBar.ChangeToAlertMode(false);
        }
        return;
_L4:
        ((PopUp)mViews[i]).hide();
        mViews[i] = null;
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public MapViewWrapper getAppView()
    {
        return mAppView;
    }

    public BottomBar getBottomBar()
    {
        return (BottomBar)mMainLayout.findViewById(0x7f090389);
    }

    public BottomNotification getBottomNotification()
    {
        return (BottomNotification)mMainLayout.findViewById(0x7f09038a);
    }

    public int[] getDelayedReportButtonLocation()
    {
        return getLocation(0x7f0903b8);
    }

    public EditBox getEditBox()
    {
        View view = mEditBoxView;
        EditBox editbox = null;
        if (view != null)
        {
            editbox = (EditBox)mEditBoxView.findViewWithTag(EditBox.WAZE_EDITBOX_TAG);
        }
        return editbox;
    }

    public RelativeLayout getMainLayout()
    {
        return mMainLayout;
    }

    public MainMenu getMainMenu()
    {
        return mainMenu;
    }

    public FriendUserData[] getNotifyFriends()
    {
        if (mNavResult != null)
        {
            return mNavResult.getNotifyFriends();
        } else
        {
            return null;
        }
    }

    public int[] getRoadRecordingTabLocation()
    {
        return getLocation(0x7f0903b9);
    }

    public WzWebView getWebView()
    {
        return mWebView;
    }

    public void hideAlerterPopup()
    {
        AlerterPopUp.getInstance(context, this).hide();
        RefreshBar(MyWazeNativeManager.getInstance().getNumberOfFriendsOnline(), MyWazeNativeManager.getInstance().getNumberOfFriendsPending());
    }

    public boolean isAnyMenuOpen()
    {
        return mainMenuInit() || reportMenuShown();
    }

    public boolean isPoiPreloaded(int i)
    {
        if (!PoiPopUp.hasInstance())
        {
            return false;
        } else
        {
            return PoiPopUp.getInstance(context, this).isPreloaded(i);
        }
    }

    public boolean isPopupShown()
    {
        return popupShown;
    }

    public boolean isSplashVisible()
    {
        return isSplashVisible;
    }

    public boolean mainMenuInit()
    {
        return mainMenu != null && mainMenu.isVisible;
    }

    public boolean mainMenuShown()
    {
        return mainMenu != null && mainMenu.isVisible || AppService.getMainActivity() != null && AppService.getMainActivity().IsAccountDetailsShown() || AppService.getMainActivity() != null && AppService.getMainActivity().IsNameYourWazerShown();
    }

    void makeEasing(final View view, double d)
    {
        (new AnimationEasingManager(new com.waze.animation.easing.AnimationEasingManager.EasingCallback() {

            final LayoutManager this$0;
            private final View val$view;

            public void onFinished(double d1)
            {
                view.setTranslationY(200F);
            }

            public void onStarted(double d1)
            {
                view.setTranslationY(0.0F);
            }

            public void onValueChanged(double d1, double d2)
            {
                view.setTranslationY((float)d1);
            }

            
            {
                this$0 = LayoutManager.this;
                view = view1;
                super();
            }
        })).start(com/waze/animation/easing/Bounce, com.waze.animation.easing.AnimationEasingManager.EaseType.EaseOut, 0.0D, 200D, 2500);
    }

    public void navResultOpenAddFromActivity()
    {
        if (mNavResult != null)
        {
            mNavResult.openAddFromActivity();
        }
    }

    public void onActivityResult(Activity activity, int i, int j, Intent intent)
    {
        if (j == 3)
        {
            if (mainMenu != null)
            {
                mainMenu.dismiss();
            }
            if (reportMenu != null)
            {
                reportMenu.dismiss();
            }
            closeUserPopup();
        }
        if (i != 32769 && i != 32770 && i != 32776 && i != 32784) goto _L2; else goto _L1
_L1:
        if (reportMenu != null)
        {
            reportMenu.onActivityResult(activity, i, j, intent);
        }
_L4:
        if (i == 32773)
        {
            if (j == 1001)
            {
                RTAlertsNativeManager.getInstance().showAlertPopUp(intent.getIntExtra("PopUp alert id", -1));
                if (reportMenu != null)
                {
                    reportMenu.dismiss();
                }
            }
            if (j == 1002)
            {
                if (mainMenu != null)
                {
                    mainMenu.close();
                }
                callCloseAllPopups(1);
            }
            if (j == -1 && mainMenu != null)
            {
                mainMenu.close();
            }
        }
        return;
_L2:
        if (i == 32771 || i == 32773 || i == 32772 || i == 32774 || i == 32775 || i == 32777 || i == 32781 || i == 32778 || i == 512)
        {
            if ((j == -1 || j == 1 || j == 2) && mainMenu != null)
            {
                mainMenu.dismiss();
            }
            if (i != 32772 && j == 1)
            {
                AppService.getMainActivity().startNavigateActivity();
            }
            if (j == 2)
            {
                pendingAddStop = true;
            }
        } else
        if (i == 32785)
        {
            mNavBar.onActivityResult(activity, i, j, intent);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onBackPressed()
    {
        int i = popupsSize();
        if (i <= 0)
        {
            int j = nNumberOfViews;
            boolean flag = false;
            if (j > 0)
            {
                View view = mViews[nPageNumber];
                flag = false;
                if (view != null)
                {
                    ((PopUp)mViews[nPageNumber]).onBackPressed();
                    flag = true;
                }
            }
            return flag;
        } else
        {
            ((PopUp)popups.get(i - 1)).onBackPressed();
            return true;
        }
    }

    public void onLanguageInitialized()
    {
        NativeManager nativemanager = AppService.getNativeManager();
        String s = nativemanager.getLanguageString(DisplayStrings.DS_SLIDE_TO_NAVIGATE);
        String s1 = nativemanager.getLanguageString(DisplayStrings.DS_REPORT_TRAFFIC);
        if (useSwipeableButtons)
        {
            ((SwipeableButton)mMainLayout.findViewById(0x7f0903b3)).setText(s);
            ((SwipeableButton)mMainLayout.findViewById(0x7f0903b6)).setText(s1);
        }
        ((TextView)mMainLayout.findViewById(0x7f0903be)).setText(nativemanager.getLanguageString(DisplayStrings.DS_WAIT));
        ((TextView)mMainLayout.findViewById(0x7f0903c0)).setText(nativemanager.getLanguageString(DisplayStrings.DS_TAP_TO_CANCEL));
    }

    public void onMainMenuClosed()
    {
    }

    public void onOrientationChanged(int i)
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity == null || !mainactivity.IsRunning())
        {
            mOrientationEventPending = true;
            return;
        }
        if (reportMenu != null)
        {
            reportMenu.onOrientationChanged(i);
        }
        if (delayedReportMenu != null)
        {
            delayedReportMenu.onOrientationChanged(i);
        }
        if (mainMenu != null)
        {
            mainMenu.onOrientationChanged(i);
        }
        if (mNavResult != null)
        {
            mNavResult.onOrientationChanged(i);
        }
        NativeManager nativemanager = AppService.getNativeManager();
        if (nativemanager != null)
        {
            nativemanager.getNavBarManager().onOrientationChanged(i);
        }
        if (i != 2) goto _L2; else goto _L1
_L1:
        View view1 = mMainLayout.findViewById(0x7f0903b7);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)view1.getLayoutParams();
        layoutparams1.topMargin = (int)(100F * mMainLayout.getResources().getDisplayMetrics().density);
        view1.setLayoutParams(layoutparams1);
_L4:
        ChangeSearchBarOrientation(i);
        return;
_L2:
        if (i == 1)
        {
            View view = mMainLayout.findViewById(0x7f0903b7);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)view.getLayoutParams();
            layoutparams.topMargin = (int)(150F * mMainLayout.getResources().getDisplayMetrics().density);
            view.setLayoutParams(layoutparams);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onPause()
    {
        mbPaused = true;
    }

    public void onResume()
    {
        mbPaused = false;
        if (mOrientationEventPending)
        {
            onOrientationChanged(AppService.getAppContext().getResources().getConfiguration().orientation);
            mOrientationEventPending = false;
        }
    }

    public void openAlertPopup(RTAlertsAlertData rtalertsalertdata, int i, int j, String s, int k)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            AlertPopUp alertpopup = new AlertPopUp(context, this);
            alertpopup.InitView(rtalertsalertdata, i, j, s);
            alertpopup.setPopUpTimer(k);
            mViews[nNumberOfViews] = alertpopup;
            nNumberOfViews = 1 + nNumberOfViews;
            return;
        }
    }

    public void openAlertTicker(int i, String s, String s1, int j)
    {
        AlertTicker alertticker = AlertTicker.getInstance(context, this);
        if (alertticker.IsShown())
        {
            alertticker.ChangeImage(true);
        }
        if (mNavBar != null && mNavBar.canMinimizeNearing())
        {
            mShouldRestoreNearing = true;
            mNavBar.minimizeNearingPanel();
        }
        alertticker.show(i, s1, s, j);
    }

    public void openBeepPopup(RTAlertsThumbsUpData rtalertsthumbsupdata, String s, int i)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            BeepPopUp beeppopup = new BeepPopUp(context, this);
            beeppopup.GetView(rtalertsthumbsupdata, s);
            bIsTicker = true;
            beeppopup.setPopUpTimer(i);
            mViews[nNumberOfViews] = beeppopup;
            nNumberOfViews = 1 + nNumberOfViews;
            return;
        }
    }

    public void openCommentPopup(RTAlertsCommentData rtalertscommentdata, String s, int i)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            CommentPopUP commentpopup = new CommentPopUP(context, this);
            commentpopup.GetView(rtalertscommentdata, s);
            commentpopup.setPopUpTimer(i);
            mViews[nNumberOfViews] = commentpopup;
            nNumberOfViews = 1 + nNumberOfViews;
            return;
        }
    }

    public void openDelayedReportAfterClosure()
    {
        if (delayedReportMenu == null)
        {
            return;
        } else
        {
            reportMenu = delayedReportMenu;
            delayedReportMenu.show();
            delayedReportMenu.open(true);
            return;
        }
    }

    public void openMainMenu()
    {
        AppService.getNativeManager().asrCancel();
        if (mainMenu == null)
        {
            mainMenu = new MainMenu(context, this);
        }
        mainMenu.open();
    }

    public void openPingPopup(RTAlertsAlertData rtalertsalertdata, boolean flag, String s, int i)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            PingPopUP pingpopup = new PingPopUP(context, this);
            bIsTicker = true;
            pingpopup.GetView(rtalertsalertdata, flag, s);
            pingpopup.setPopUpTimer(i);
            mViews[nNumberOfViews] = pingpopup;
            nNumberOfViews = 1 + nNumberOfViews;
            return;
        }
    }

    public void openPoi(int i, String s, String s1, String s2, int j, int k, int l, 
            int i1, int j1, boolean flag, String s3, int k1, int l1, String s4, 
            String s5)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            PoiPopUp poipopup = PoiPopUp.getInstance(context, this);
            mViews[nNumberOfViews] = poipopup.GetView(i, s, s1, s2, j, k, l, i1, j1, flag, s3, k1, l1, s4, s5);
            poipopup.setPopUpTimer(j1);
            nNumberOfViews = 1 + nNumberOfViews;
            return;
        }
    }

    public void openProgressPopup(String s)
    {
        mMainLayout.findViewById(0x7f0903ba).setVisibility(0);
        ((ProgressAnimation)mMainLayout.findViewById(0x7f0903bb)).start();
        ((TextView)mMainLayout.findViewById(0x7f0903bc)).setText(s);
    }

    public void openReportMenu(boolean flag, boolean flag1, boolean flag2)
    {
        if (IsPopupsShown())
        {
            callCloseAllPopups(1);
        }
        Analytics.log("REPORT_BUTTON");
        AppService.getNativeManager().asrCancel();
        removeDelayedReportButton();
        if (reportMenu == null)
        {
            reportMenu = new ReportMenu(context, this, flag, flag1, flag2);
        }
        reportMenu.removeReportForm();
        setClosureRunning(false);
        reportMenu.open(false);
        reportMenu.show();
        if (pendingReportSwipe)
        {
            pendingReportSwipe = false;
            reportMenu.showTrafficJamReport();
        }
    }

    public void openSharePopup(UserData userdata, int i, String s, String s1)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            SharePopup sharepopup = new SharePopup(context, this);
            sharepopup.GetView(userdata, i, s, s1);
            bIsTicker = true;
            sharepopup.setPopUpTimer(0);
            mViews[nNumberOfViews] = sharepopup;
            nNumberOfViews = 1 + nNumberOfViews;
            return;
        }
    }

    public void openThumbsUpPopup(RTAlertsThumbsUpData rtalertsthumbsupdata, String s, int i)
    {
        if (nNumberOfViews > 4)
        {
            return;
        } else
        {
            ThumbsUpPopUP thumbsuppopup = ThumbsUpPopUP.getInstance(context, this);
            thumbsuppopup.GetView(rtalertsthumbsupdata, s);
            thumbsuppopup.setPopUpTimer(i);
            mViews[nNumberOfViews] = thumbsuppopup;
            nNumberOfViews = 1 + nNumberOfViews;
            return;
        }
    }

    public void openUserPopup(UserData userdata, int i, int j)
    {
        UserPopUp.getInstance(context).show(userdata, i, j);
    }

    protected void openVoiceControlTip()
    {
        NativeManager nativemanager = AppService.getNativeManager();
        final Dialog dialog = new Dialog(AppService.getActiveActivity(), 0x7f06000f);
        AppService.getActiveActivity().setDialog(dialog);
        dialog.setContentView(0x7f030133);
        ((TextView)dialog.findViewById(0x7f0907cd)).setText(nativemanager.getLanguageString(DisplayStrings.DS_LATER_CAPITAL));
        ((TextView)dialog.findViewById(0x7f0907cf)).setText(nativemanager.getLanguageString(DisplayStrings.DS_ENABLE));
        ((TextView)dialog.findViewById(0x7f0907c9)).setText(nativemanager.getLanguageString(DisplayStrings.DS_DRIVE_SAFE));
        ((TextView)dialog.findViewById(0x7f0907ca)).setText(nativemanager.getLanguageString(DisplayStrings.DS_PASSING_YOUR_HAND));
        dialog.findViewById(0x7f0907cc).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                try
                {
                    dialog.cancel();
                    dialog.dismiss();
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            }

            
            {
                this$0 = LayoutManager.this;
                dialog = dialog1;
                super();
            }
        });
        dialog.findViewById(0x7f0907ce).setOnClickListener(new android.view.View.OnClickListener() {

            final LayoutManager this$0;
            private final Dialog val$dialog;

            public void onClick(View view)
            {
                try
                {
                    MainActivity mainactivity = AppService.getMainActivity();
                    mainactivity.startActivity(new Intent(mainactivity, com/waze/settings/SettingsVoiceCommandsActivity));
                    dialog.cancel();
                    dialog.dismiss();
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            }

            
            {
                this$0 = LayoutManager.this;
                dialog = dialog1;
                super();
            }
        });
        dialog.show();
    }

    public void openVoicePopup()
    {
        mMainLayout.findViewById(0x7f0903bd).setVisibility(0);
        if (DriveToNativeManager.getInstance().isDayMode())
        {
            mMainLayout.findViewById(0x7f0903bd).setBackgroundResource(0x7f020436);
        } else
        {
            mMainLayout.findViewById(0x7f0903bd).setBackgroundResource(0x7f020438);
        }
        changeVoicePopupState(false);
    }

    public void preCloseAllPopups()
    {
        if (mLastPageNumber >= 0)
        {
            NativeManager.getInstance().PopupAction(PopupAction.popup_hidden.ordinal(), mLastPageNumber, 0);
            mLastPageNumber = -1;
        }
    }

    public void preparePoi(int i, String s)
    {
        PoiPopUp.getInstance(context, this).prepare(i, s);
    }

    public void removeDelayedReportButton()
    {
        MovingImageButton movingimagebutton = (MovingImageButton)mMainLayout.findViewById(0x7f0903b8);
        movingimagebutton.stop();
        movingimagebutton.setVisibility(8);
    }

    public void removeRoadPavingTab()
    {
        MovingImageButton movingimagebutton = (MovingImageButton)mMainLayout.findViewById(0x7f0903b9);
        movingimagebutton.stop();
        movingimagebutton.setVisibility(8);
    }

    public boolean reportMenuShown()
    {
        return reportMenu != null && reportMenu.isVisible;
    }

    public void setAlerterPopupCloseTime(int i)
    {
        AlerterPopUp.getInstance(context, this).setCloseTime(i);
    }

    public void setClosureRunning(boolean flag)
    {
        bIsClosureRunning = flag;
    }

    public void setDelayedReport(ReportMenu reportmenu)
    {
        MovingImageButton movingimagebutton = (MovingImageButton)mMainLayout.findViewById(0x7f0903b8);
        movingimagebutton.setVisibility(0);
        movingimagebutton.start();
        int i = reportmenu.getDelayedReportButtonResource();
        if (i == -1)
        {
            return;
        } else
        {
            movingimagebutton.setImageResource(i);
            delayedReportMenu = reportmenu;
            return;
        }
    }

    public void setMenuButtonType(int i, int j)
    {
        SwipeableButton swipeablebutton;
        Drawable drawable;
        boolean flag = true;
        if (android.os.Build.VERSION.SDK_INT > 11)
        {
            flag = DriveToNativeManager.getInstance().isDayMode();
            ChangeReportMenuButton(flag);
            ChangeFriendsBarButtonType(flag);
            mTrafficBarView.setDayMode(flag);
        } else
        if (nMenuType == i)
        {
            return;
        }
        swipeablebutton = (SwipeableButton)mMainLayout.findViewById(0x7f0903b3);
        nMenuType = i;
        nOptionalNumber = j;
        if (i == 0)
        {
            if (flag)
            {
                drawable = context.getResources().getDrawable(0x7f02023e);
            } else
            {
                drawable = context.getResources().getDrawable(0x7f020245);
            }
        } else
        if (i == 1)
        {
            if (flag)
            {
                drawable = context.getResources().getDrawable(0x7f020243);
            } else
            {
                drawable = context.getResources().getDrawable(0x7f020244);
            }
        } else
        {
            drawable = null;
            if (i == 2)
            {
                if (j == 0)
                {
                    if (flag)
                    {
                        drawable = context.getResources().getDrawable(0x7f02023f);
                    } else
                    {
                        drawable = context.getResources().getDrawable(0x7f020240);
                    }
                } else
                if (flag)
                {
                    drawable = context.getResources().getDrawable(0x7f020241);
                } else
                {
                    drawable = context.getResources().getDrawable(0x7f020242);
                }
            }
        }
_L7:
        if (drawable == null) goto _L2; else goto _L1
_L1:
        if (!mainMenuInit()) goto _L4; else goto _L3
_L3:
        mainMenu.setMenuButtonDrawable(drawable);
        swipeablebutton.setButtonDrawable(drawable);
_L2:
        return;
_L4:
        swipeablebutton.setButtonDrawable(drawable);
        if (mainMenu == null) goto _L2; else goto _L5
_L5:
        mainMenu.setMenuButtonDrawable(drawable);
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void setPopupShown()
    {
        boolean flag;
        if (popups.size() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        popupShown = flag;
    }

    public void setRoadPavingTab(ReportMenu reportmenu)
    {
        MovingImageButton movingimagebutton = (MovingImageButton)mMainLayout.findViewById(0x7f0903b9);
        movingimagebutton.setVisibility(0);
        movingimagebutton.start();
        movingimagebutton.setImageResource(0x7f020319);
        mMainLayout.refreshDrawableState();
        delayedReportMenu = reportmenu;
    }

    public void showAlerterPopup(String s, String s1, String s2, String s3, boolean flag, boolean flag1)
    {
        AlerterPopUp.getInstance(context, this).show(s, s1, s2, s3, flag, flag1);
        RefreshBar(MyWazeNativeManager.getInstance().getNumberOfFriendsOnline(), MyWazeNativeManager.getInstance().getNumberOfFriendsPending());
    }

    public void showEtaUpdatePopUp(int i, String s, String s1, String s2, int j)
    {
        EtaUpdatePopUp.getInstance(context, this).show(i, s, s1, s2, j);
    }

    public void showFollowingToolTip(TooltipType tooltiptype, int i, FriendUserData frienduserdata)
    {
        MainActivity mainactivity;
        NativeManager nativemanager;
        mainactivity = AppService.getMainActivity();
        mTooltipShare = (LinearLayout)mMainLayout.findViewById(0x7f09038b);
        nativemanager = NativeManager.getInstance();
        if (tooltiptype != TooltipType.SHARE) goto _L2; else goto _L1
_L1:
        String s = nativemanager.getLanguageString(DisplayStrings.DS_ETA_SENTE_SEE_PEOPLE_VIEWING_YOUR_DRIVE);
_L4:
        if (s == null)
        {
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (tooltiptype == TooltipType.ETA_UPDATE_SENT)
        {
            if (i == 1 && frienduserdata != null && frienduserdata.getName() != null && !frienduserdata.getName().isEmpty())
            {
                String s6 = nativemanager.getLanguageString(DisplayStrings.DS_ETA_UPDATE_SENT_TO_PS);
                Object aobj5[] = new Object[1];
                aobj5[0] = frienduserdata.getName();
                s = String.format(s6, aobj5);
            } else
            {
                s = null;
                if (i >= 1)
                {
                    String s5 = nativemanager.getLanguageString(DisplayStrings.DS_ETA_UPDATE_SENT_TO_PD_FRIENDS);
                    Object aobj4[] = new Object[1];
                    aobj4[0] = Integer.valueOf(i);
                    s = String.format(s5, aobj4);
                }
            }
        } else
        if (tooltiptype == TooltipType.ARRIVAL_SENT)
        {
            if (i == 1 && frienduserdata != null && frienduserdata.getName() != null && !frienduserdata.getName().isEmpty())
            {
                String s4 = nativemanager.getLanguageString(DisplayStrings.DS_ARRIVAL_NOTIFICATION_SENT_TO_PS);
                Object aobj3[] = new Object[1];
                aobj3[0] = frienduserdata.getName();
                s = String.format(s4, aobj3);
            } else
            {
                s = null;
                if (i >= 1)
                {
                    String s3 = nativemanager.getLanguageString(DisplayStrings.DS_ARRIVAL_NOTIFICATION_SENT_TO_PD_FRIENDS);
                    Object aobj2[] = new Object[1];
                    aobj2[0] = Integer.valueOf(i);
                    s = String.format(s3, aobj2);
                }
            }
        } else
        {
            TooltipType tooltiptype1 = TooltipType.NEW_USER_VIEWING;
            s = null;
            if (tooltiptype == tooltiptype1)
            {
                if (i == 1 && frienduserdata != null && frienduserdata.getName() != null && !frienduserdata.getName().isEmpty())
                {
                    String s2 = nativemanager.getLanguageString(DisplayStrings.DS_PS_IS_VIEWING_YOUR_DRIVE);
                    Object aobj1[] = new Object[1];
                    aobj1[0] = frienduserdata.getName();
                    s = String.format(s2, aobj1);
                } else
                {
                    s = null;
                    if (i >= 1)
                    {
                        String s1 = nativemanager.getLanguageString(DisplayStrings.DS_PD_FRIENDS_ARE_VIEWING_YOUR_DRIVE);
                        Object aobj[] = new Object[1];
                        aobj[0] = Integer.valueOf(i);
                        s = String.format(s1, aobj);
                    }
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (frienduserdata != null && frienduserdata.getImage() != null)
        {
            mTooltipShare.findViewById(0x7f090743).setVisibility(8);
            mTooltipShare.findViewById(0x7f090744).setVisibility(0);
            ImageView imageview = (ImageView)mTooltipShare.findViewById(0x7f090745);
            imageview.setImageResource(0x7f0203a3);
            ImageRepository.instance.getImage(frienduserdata.getImage(), true, imageview, null, mainactivity);
        } else
        {
            mTooltipShare.findViewById(0x7f090743).setVisibility(0);
            mTooltipShare.findViewById(0x7f090744).setVisibility(8);
        }
        ((TextView)mTooltipShare.findViewById(0x7f09072b)).setText(s);
        mTooltipShare.setVisibility(0);
        mTooltipShare.bringToFront();
        com.waze.view.anim.AnimationUtils.slideTooltip(mTooltipShare);
        setCloseTooltipEvents(tooltiptype, mTooltipShare);
        return;
    }

    public void showFriendOnTheWayPopup(FriendUserData frienduserdata, int i)
    {
    }

    public void showFriendsTooltip()
    {
        if (AppService.getMainActivity() != null && AppService.getMainActivity().IsRunning() && mShowFriendsTip > 0)
        {
            AppService.Post(new Runnable() {

                final LayoutManager this$0;

                public void run()
                {
                    int i;
                    if (AppService.getMainActivity() == null || NativeManager.getInstance() == null || !AppService.getMainActivity().areAllSignUpDialogsClosed())
                    {
                        break MISSING_BLOCK_LABEL_64;
                    }
                    mShowFriendsTip = ConfigManager.getInstance().checkConfigDisplayCounter(4, true);
                    i = mShowFriendsTip;
                    if (i <= 0)
                    {
                        break MISSING_BLOCK_LABEL_64;
                    }
                    showToolTip(TooltipType.FRIENDS, 0, null, 0L, 0);
                    return;
                    Exception exception1;
                    exception1;
                    try
                    {
                        Object aobj1[] = new Object[2];
                        aobj1[0] = exception1.getMessage();
                        aobj1[1] = exception1.getStackTrace();
                        Log.e("WAZE", String.format("failed showing friendsTooltip. Error: %s    stack: %s", aobj1));
                        return;
                    }
                    catch (Exception exception)
                    {
                        Object aobj[] = new Object[2];
                        aobj[0] = exception.getMessage();
                        aobj[1] = exception.getStackTrace();
                        Log.d("WAZE", String.format("Haven't queued showFriendsTooltip request. Environment is not fully initialized yet. Error: %s    stack: %s", aobj));
                        return;
                    }
                }

            
            {
                this$0 = LayoutManager.this;
                super();
            }
            }, 5000L);
        }
    }

    public void showMapProblemReport(boolean flag, boolean flag1, boolean flag2)
    {
        if (reportMenu == null)
        {
            reportMenu = new ReportMenu(context, this, flag, flag1, flag2);
        }
        reportMenu.open(false);
        reportMenu.show();
        reportMenu.showMapProblemReport();
    }

    public void showMessageTicker(String s, String s1, String s2, int i)
    {
        if (mTicker == null)
        {
            mTicker = new MessageTicker(mMainLayout.findViewById(0x7f0903a3));
        }
        mTicker.show(s, s1, s2, i);
    }

    public void showNotificationMessage(String s, String s1, int i)
    {
        if (mNotifBar == null)
        {
            mNotifBar = new NotificationBar(mMainLayout.findViewById(0x7f0903a2), context);
        }
        mNotifBar.showMessage(s, s1, i);
    }

    public void showToolTip(TooltipType tooltiptype, int i, FriendUserData frienduserdata, long l, int j)
    {
        NativeManager nativemanager;
        if (isAutoCloseToolTip(tooltiptype) && mIsToolTipDisplayed)
        {
            mToolTipQueue.add(new QueuedTooltip(tooltiptype, i, frienduserdata, l, j));
            return;
        }
        nativemanager = NativeManager.getInstance();
        if (l != 0L)
        {
            nativemanager.callCallbackInt(l, j);
        }
        $SWITCH_TABLE$com$waze$TooltipType()[tooltiptype.ordinal()];
        JVM INSTR tableswitch 1 8: default 116
    //                   1 143
    //                   2 231
    //                   3 187
    //                   4 244
    //                   5 308
    //                   6 231
    //                   7 231
    //                   8 231;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L3 _L3 _L3
_L1:
        LinearLayout linearlayout;
        LinearLayout linearlayout1;
        String s;
        linearlayout = null;
        linearlayout1 = null;
        s = null;
_L7:
        setTooltipShowEvents(linearlayout, linearlayout1, s);
        setCloseTooltipEvents(tooltiptype, linearlayout);
        return;
_L2:
        isTooltipRoadClosureShown = true;
        mTooltipRoadClosure = (LinearLayout)mMainLayout.findViewById(0x7f0903b5);
        linearlayout = mTooltipRoadClosure;
        s = nativemanager.getLanguageString(DisplayStrings.DS_IF_THERESS_A_ROAD_CLOSURE_OR_A_MAP_PROBLEM__REPORT_IT_HERE_);
        linearlayout1 = null;
        continue; /* Loop/switch isn't completed */
_L4:
        isTooltipMainMenuShown = true;
        mTooltipMainMenu = (LinearLayout)mMainLayout.findViewById(0x7f0903b4);
        linearlayout = mTooltipMainMenu;
        s = nativemanager.getLanguageString(DisplayStrings.DS_TAP_HERE_FOR_NAVIGATION__SETTINGS__AND_MORE_);
        linearlayout1 = null;
        continue; /* Loop/switch isn't completed */
_L3:
        isTooltipShareShown = true;
        showFollowingToolTip(tooltiptype, i, frienduserdata);
        return;
_L5:
        isTooltipFriendsShown = true;
        mTooltipFriends = (LinearLayout)mMainLayout.findViewById(0x7f090390);
        linearlayout = mTooltipFriends;
        mTooltipFriends_ls = (LinearLayout)mMainLayout.findViewById(0x7f090399);
        linearlayout1 = mTooltipFriends_ls;
        s = nativemanager.getLanguageString(DisplayStrings.DS_TAP_HERE_TO_FIND_FRIENDS_ON_WAZE_);
        if (true) goto _L7; else goto _L6
_L6:
        NavigationResult.mForceShowTooltipEta = true;
        return;
    }

    public void showTrafficDetectionPopup(boolean flag, boolean flag1, boolean flag2)
    {
        TrafficDetectionPopUp.getInstance(context, this, flag, flag1, flag2).show();
    }

    public void showTrafficJamReport(boolean flag, boolean flag1, boolean flag2)
    {
        if (reportMenu == null)
        {
            reportMenu = new ReportMenu(context, this, flag, flag1, flag2);
        }
        reportMenu.open(false);
        reportMenu.show();
        reportMenu.showTrafficJamReport();
    }

    public void slideToBottom(View view)
    {
        view.setVisibility(0);
        Animation animation = AnimationUtils.loadAnimation(context, 0x7f040017);
        animation.setDuration(200L);
        animation.setInterpolator(new DecelerateInterpolator());
        view.setAnimation(animation);
    }

    public void slideToBottomWithFade(View view)
    {
        view.setVisibility(0);
        Animation animation = AnimationUtils.loadAnimation(context, 0x7f040018);
        animation.setDuration(100L);
        view.setAnimation(animation);
    }

    public void slideToOut(View view)
    {
        Animation animation = AnimationUtils.loadAnimation(context, 0x7f04001a);
        animation.setDuration(200L);
        animation.setInterpolator(new DecelerateInterpolator());
        view.setAnimation(animation);
    }

    public void slideToOutWithFade(View view)
    {
        Animation animation = AnimationUtils.loadAnimation(context, 0x7f04001b);
        animation.setDuration(100L);
        view.setAnimation(animation);
        view.setVisibility(8);
    }

    void toolTipClosed(TooltipType tooltiptype)
    {
        if (isAutoCloseToolTip(tooltiptype))
        {
            mIsToolTipDisplayed = false;
            if (!mToolTipQueue.isEmpty())
            {
                QueuedTooltip queuedtooltip = (QueuedTooltip)mToolTipQueue.remove(0);
                showToolTip(queuedtooltip.type, queuedtooltip.numUsers, queuedtooltip.userData, queuedtooltip.cb, queuedtooltip.intParam);
            }
        }
    }

    public void trafficBarClose()
    {
        if (mTrafficBarView != null)
        {
            mTrafficBarView.reset();
        }
        mTrafficBarView.setVisibility(8);
    }

    public void trafficBarSet(int i, int j, int ai[], int ai1[])
    {
        mTrafficBarView.setTime(i, j, ai, ai1);
        boolean flag;
        TrafficBarView trafficbarview;
        int k;
        if (mShouldShowTrafficBar && mTrafficBarView.canShow())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        trafficbarview = mTrafficBarView;
        k = 0;
        if (!flag)
        {
            k = 8;
        }
        trafficbarview.setVisibility(k);
    }

    public void trafficBarSetHidden(boolean flag)
    {
        boolean flag1;
        boolean flag2;
        TrafficBarView trafficbarview;
        int i;
        if (flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        mShouldShowTrafficBar = flag1;
        if (mShouldShowTrafficBar && mTrafficBarView.canShow())
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        trafficbarview = mTrafficBarView;
        i = 0;
        if (!flag2)
        {
            i = 8;
        }
        trafficbarview.setVisibility(i);
    }

    public void trafficBarShowPopUp(int i)
    {
        mTrafficBarView.appearifyTheTip(i);
    }

    public void updateAlerterPopup(String s, String s1, String s2)
    {
        AlerterPopUp.getInstance(context, this).update(s, s1, s2);
    }

    public void updateNavResultPopup(String s, String s1, String s2, boolean flag)
    {
        if (mNavResult != null)
        {
            mNavResult.updateData(s, s1, s2, flag);
        }
    }

    public void updateNavResultShare(ArrayList arraylist)
    {
        if (mNavResult != null)
        {
            mNavResult.updateShare(arraylist);
        }
    }
































}
