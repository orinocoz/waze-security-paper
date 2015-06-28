// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.Toast;
import android.widget.ViewAnimator;
import com.google.android.apps.analytics.GoogleAnalyticsTracker;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.EditTextDialogActivity;
import com.waze.install.InstallPickAccountActivity;
import com.waze.menus.MainMenu;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddressItem;
import com.waze.navigate.AddressPreviewActivity;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.NavigateActivity;
import com.waze.navigate.social.AddFriendsPopup;
import com.waze.navigate.social.AddFromActivity;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.pioneer.PioneerManager;
import com.waze.profile.AccountSignInDetails;
import com.waze.profile.MeetYourWazerPopup;
import com.waze.profile.MyProfileActivity;
import com.waze.profile.NameYourWazerPopup;
import com.waze.profile.PasswordRecoveryPopup;
import com.waze.profile.TempUserProfileActivity;
import com.waze.push.Registrar;
import com.waze.routes.RoutesActivity;
import com.waze.share.EncouragementActivity;
import com.waze.share.ShareUtility;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.utils.Stopwatch;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.map.ProgressAnimation;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze:
//            Logger, AppService, NativeManager, LayoutManager, 
//            SpeechttManagerBase, MsgBox, TtsManager, MapViewWrapper, 
//            MapView, CustomExceptionHandler, WazeApplication, IntentManager, 
//            AdsTracking, ToastThread

public final class MainActivity extends ActivityBase
    implements NativeManager.IOnUserNameResult
{
    protected class OnOkMsgSmsService
        implements android.content.DialogInterface.OnClickListener
    {

        final MainActivity this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
            if (i == 1 && mAddressToDrive != null)
            {
                DriveToNativeManager.getInstance().navigate(mAddressToDrive, null);
                mAddressToDrive = null;
            }
        }

        protected OnOkMsgSmsService()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    private final class ProgressToast extends ToastThread
    {

        private ProgressAnimation mProgressAnimation;
        final MainActivity this$0;

        protected void cancel()
        {
            super.cancel();
        }

        public Toast show()
        {
            MainActivity mainactivity = MainActivity.this;
            View view = mainactivity.getLayoutInflater().inflate(0x7f0300bc, (ViewGroup)mainactivity.findViewById(0x7f090559));
            mProgressAnimation = (ProgressAnimation)view.findViewById(0x7f09055a);
            mProgressAnimation.start();
            Toast toast = new Toast(mainactivity);
            toast.setGravity(16, 0, 0);
            toast.setDuration(1);
            toast.setView(view);
            toast.show();
            return toast;
        }

        public void stopToast()
        {
            Log.d("WAZE", "Cancelling progress toast");
            if (mProgressAnimation != null)
            {
                mProgressAnimation.stop();
            }
            super.stopToast();
        }

        public ProgressToast()
        {
            this$0 = MainActivity.this;
            super("Progress Toast");
            mProgressAnimation = null;
        }
    }

    private static class SDCardWarnClickListener
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
            ((Activity)((AlertDialog)dialoginterface).getContext()).finish();
        }

        private SDCardWarnClickListener()
        {
        }

        SDCardWarnClickListener(SDCardWarnClickListener sdcardwarnclicklistener)
        {
            this();
        }
    }


    public static final int ADDRESS_OPTIONS_CODE = 32778;
    public static final int ADD_STOP_RESULT_CODE = 2;
    public static final int CAPTURE_IMAGE_CODE = 32770;
    public static final long INITIAL_HEAP_SIZE = 4096L;
    public static final int LAYOUT_REQUEST_CODE_MASK = 32768;
    private static final int MAIN_THREAD_PRIORITY = -8;
    public static final int MYFRIENDS_CODE = 32781;
    public static final int MYWAZE_CODE = 32772;
    public static final int NAVBAR_ADD_PLACE_PHOTO_CODE = 32785;
    public static final int NAVIGATE_CODE = 32771;
    public static final int NAVIGATION_LIST_CODE = 32777;
    public static final int NEARBY_GAS_STATIONS_CODE = 32780;
    public static final int RECORD_SOUND_CODE = 32769;
    public static final int RELOAD_SEARCH_CODE = 32783;
    public static final int REPORT_ADD_PLACE_PHOTO_CODE = 32784;
    public static final int REPORT_GROUPS_CODE = 32776;
    public static final int REQUEST_ADD_DRIVE_SHARE = 32786;
    public static final int RTALERTS_REQUEST_CODE = 32773;
    public static final int SEARCH_MAP_CODE = 32779;
    public static final int SETTINGS_CODE = 32775;
    public static final int SHARE_CODE = 32774;
    public static final int SHARE_PROCESS_CODE_MASK = 0x10000;
    public static final int SHARE_REQUEST_CONTACTS_ACCESS = 2;
    public static final int SHARE_REQUEST_LOGIN = 1;
    public static final int SHARE_REQUEST_OPEN_ACTIVITY = 32;
    public static final int SHARE_REQUEST_SHARE_CURRENT_LOCATION = 64;
    public static final int SHARE_REQUEST_SHARE_DRIVE = 16;
    public static final int SHARE_REQUEST_SHARE_HOME = 128;
    public static final int SHARE_REQUEST_SHARE_WORK = 256;
    public static final int SPEECHTT_EXTERNAL_REQUEST_CODE = 4096;
    public static final long SPLASH_DISPLAY_TIMEOUT = 250L;
    public static final boolean TEST_PNG = false;
    public static final int TTS_DATA_CHECK_CODE = 8192;
    public static final int TTS_DATA_INSTALL_CODE = 16384;
    public static final int VERIFY_EVENT_CODE = 32782;
    public static boolean bReportMapShownAnalytics = false;
    public static boolean bSignupSkipped = false;
    public static boolean bToOpenAccountPopup = false;
    public static boolean bToOpenMeetYourWazer = false;
    public static boolean bToOpenPasswordRecovery = false;
    private static ArrayList mResumeEvents = new ArrayList();
    public static String sQuestionID = null;
    private boolean bIsSearchClicked;
    private AccountSignInDetails mAccountSignIn;
    private AddFriendsPopup mAddFriendsPopup;
    private AddressItem mAddressToDrive;
    private GoogleAnalyticsTracker mGoogleAnalyticsTracker;
    private volatile boolean mIsRunning;
    private AddressItem mLastAddressItem;
    private LayoutManager mLayoutMgr;
    private MeetYourWazerPopup mMeetYourWazerPopup;
    private NameYourWazerPopup mNameWazerPopup;
    private Runnable mOpenVenueNoAnswerRunnable;
    private int mOrientation;
    private PasswordRecoveryPopup mPasswordRecoveryPopup;
    private volatile boolean mResumeProgressShow;
    private ViewAnimator mViewAnimator;

    public MainActivity()
    {
        mAccountSignIn = null;
        mNameWazerPopup = null;
        mMeetYourWazerPopup = null;
        mPasswordRecoveryPopup = null;
        mAddFriendsPopup = null;
        mLayoutMgr = null;
        mAddressToDrive = null;
        mIsRunning = false;
        mResumeProgressShow = false;
        bIsSearchClicked = false;
        mViewAnimator = null;
        mGoogleAnalyticsTracker = null;
        mLastAddressItem = null;
    }

    private boolean IsSdCardAvailable()
    {
        boolean flag = true;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setMessage("The sdcard is not available - probably it is not present or mounted. \nTo run Waze you need sdcard available (not mounted) in your phone!");
        builder.setTitle("Warning");
        builder.setCancelable(false);
        if (!Environment.getExternalStorageState().equals("mounted"))
        {
            builder.setNeutralButton("Ok", new SDCardWarnClickListener(null));
            builder.create().show();
            flag = false;
        }
        return flag;
    }

    private void RegisterMediaBCReceivers()
    {
        IntentFilter intentfilter = new IntentFilter("android.intent.action.MEDIA_REMOVED");
        intentfilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentfilter.addDataScheme("file");
        registerReceiver(new IntentManager.WazeSDCardManager(), intentfilter);
        IntentFilter intentfilter1 = new IntentFilter("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        intentfilter1.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentfilter1.addDataScheme("file");
        registerReceiver(new IntentManager.WazeSDCardManager(), intentfilter1);
    }

    private void postOnResumeEvents()
    {
        do
        {
            if (mResumeEvents.size() <= 0)
            {
                return;
            }
            ((Runnable)mResumeEvents.remove(0)).run();
        } while (true);
    }

    public static void registerOnResumeEvent(Runnable runnable)
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null && mainactivity.IsRunning())
        {
            runnable.run();
            return;
        } else
        {
            mResumeEvents.add(runnable);
            return;
        }
    }

    private void reportMapShown()
    {
        NativeManager.getInstance().SignUplogAnalytics("MAP_SHOWN", null, null, true);
        NativeManager.getInstance().SetSocialIsFirstTime(false);
    }

    private void startApp()
    {
        if (NativeManager.getInstance() != null)
        {
            return;
        } else
        {
            NativeManager.Start();
            AppService.start(this);
            return;
        }
    }

    public void DisableOrientation()
    {
        setRequestedOrientation(1);
    }

    public void EnableOrientation()
    {
        setRequestedOrientation(2);
    }

    public boolean IsAccountDetailsShown()
    {
        return mAccountSignIn != null;
    }

    public boolean IsNameYourWazerShown()
    {
        return mNameWazerPopup != null;
    }

    public boolean IsRunning()
    {
        return mIsRunning;
    }

    public void OpenAddressPreview(final AddressItem defaultItem, String s, String s1, String s2, int i, String s3, String s4)
    {
        if (s != null && !s.isEmpty())
        {
            DriveToNativeManager.getInstance().setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            NativeManager.getInstance().AutoCompletePlaceClicked(s, null, null, s1, false, s2, false, i, s3, s4);
            mLastAddressItem = defaultItem;
            NativeManager.getInstance().OpenProgressPopup(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
            mOpenVenueNoAnswerRunnable = new Runnable() ;
            postDelayed(mOpenVenueNoAnswerRunnable, NativeManager.getInstance().getVenueGetTimeout());
            return;
        } else
        {
            Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
            intent.putExtra("AddressItem", defaultItem);
            startActivityForResult(intent, 1);
            return;
        }
    }

    public void SearchBarClicked(View view1)
    {
        boolean flag = false;
        bIsSearchClicked = true;
        final View view;
        if (getResources().getConfiguration().orientation == 1)
        {
            view = findViewById(0x7f09039f);
        } else
        {
            view = findViewById(0x7f0903af);
            flag = true;
        }
        AnimationUtils.openNavigateScreen(view, new android.view.animation.Animation.AnimationListener() {

            final MainActivity this$0;
            private final View val$view;

            public void onAnimationEnd(Animation animation)
            {
                startNavigateActivityWithFade();
                view.postDelayed(new Runnable() {

                    final _cls4 this$1;

                    public void run()
                    {
                        if (getResources().getConfiguration().orientation == 1)
                        {
                            AnimationUtils.SearchBarBackAnimation(findViewById(0x7f09039f));
                        } else
                        {
                            AnimationUtils.SearchBarBackAnimation(findViewById(0x7f0903af));
                        }
                        mLayoutMgr.getMainLayout().requestLayout();
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                }, 200L);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }


            
            {
                this$0 = MainActivity.this;
                view = view1;
                super();
            }
        }, flag);
    }

    public void SendMessageToNumber(String s, String s1)
    {
        String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_SUBJECT);
        String s3 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_BODY1)))).append("\n").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_BODY2)).append("\n").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_BODY3)).append("\n").toString()))).append(s).toString();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", s2);
        intent.putExtra("android.intent.extra.TEXT", s3);
        startActivity(Intent.createChooser(intent, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PICK_UP_TITLE_SEND)));
    }

    public void SendPickUp(String s)
    {
        String s1 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_SUBJECT);
        String s2 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_BODY1)))).append("\n").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_BODY2)).append("\n").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EMAIL_BODY3)).append("\n").toString()))).append(s).toString();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        intent.putExtra("exit_on_sent", true);
        intent.putExtra("android.intent.extra.TEXT", s2);
        startActivity(Intent.createChooser(intent, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PICK_UP_TITLE_SEND)));
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        if (mAccountSignIn != null && mAccountSignIn.isShowing())
        {
            mAccountSignIn.SetMyWazeData(mywazedata);
        } else
        if (mPasswordRecoveryPopup != null && mPasswordRecoveryPopup.isShowing())
        {
            mPasswordRecoveryPopup.SetMyWazeData(mywazedata);
            return;
        }
    }

    public void SetUserUpdateResult(boolean flag)
    {
        if (mNameWazerPopup != null && mNameWazerPopup.isShowing())
        {
            mNameWazerPopup.OnUpdateResult(flag);
        }
        if (mPasswordRecoveryPopup != null && mPasswordRecoveryPopup.isShowing())
        {
            mPasswordRecoveryPopup.OnUpdateResult(flag);
        } else
        if ((mAccountSignIn == null || !mAccountSignIn.isShowing()) && mIsRunning && bReportMapShownAnalytics && flag)
        {
            bReportMapShownAnalytics = false;
            bSignupSkipped = false;
            reportMapShown();
            return;
        }
    }

    public boolean areAllSignUpDialogsClosed()
    {
        return (mNameWazerPopup == null || !mNameWazerPopup.isShowing()) && (mAccountSignIn == null || !mAccountSignIn.isShowing());
    }

    public void cancelSplash()
    {
        if (!PioneerManager.isActive() && mMeetYourWazerPopup == null)
        {
            setRequestedOrientation(2);
        }
        if (mLayoutMgr.isSplashVisible())
        {
            mLayoutMgr.cancelSplash();
        }
    }

    ViewAnimator getAnimator()
    {
        return mViewAnimator;
    }

    public LayoutManager getLayoutMgr()
    {
        return mLayoutMgr;
    }

    public MapViewWrapper getMainView()
    {
        return mLayoutMgr.getAppView();
    }

    protected boolean myHandleMessage(Message message)
    {
        if (message.what == DriveToNativeManager.UH_SEARCH_ADD_RESULT)
        {
            NativeManager.getInstance().CloseProgressPopup();
            cancel(mOpenVenueNoAnswerRunnable);
            AddressItem addressitem = (AddressItem)message.getData().getSerializable("address_item");
            if (mLastAddressItem != null)
            {
                addressitem.setType(mLastAddressItem.getType());
                addressitem.setId(mLastAddressItem.getId());
                mLastAddressItem = null;
            }
            DriveToNativeManager.getInstance().unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            if (addressitem.getLocationX().equals(Integer.valueOf(-1)) && addressitem.getLocationY().equals(Integer.valueOf(-1)))
            {
                if (mOpenVenueNoAnswerRunnable != null)
                {
                    mOpenVenueNoAnswerRunnable.run();
                    mOpenVenueNoAnswerRunnable = null;
                }
                return true;
            } else
            {
                mOpenVenueNoAnswerRunnable = null;
                Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
                intent.putExtra("AddressItem", addressitem);
                startActivityForResult(intent, 1);
                return true;
            }
        } else
        {
            return myHandleMessage(message);
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 5000 && j == -1 && mMeetYourWazerPopup != null)
        {
            mMeetYourWazerPopup.onActivityResult(i, j, intent);
        }
        if (i == 222 || i == 223)
        {
            DisableOrientation();
            if (mAccountSignIn != null)
            {
                mAccountSignIn.onActivityResult(i, j, intent);
            }
        }
        if ((0x10000 & i) == 0) goto _L2; else goto _L1
_L1:
        if ((i & 2) == 0 || j != -1) goto _L4; else goto _L3
_L3:
        NativeManager.bToUploadContacts = true;
        AddressBook.RequestSync(false);
        ShareUtility.shareLocationOrDrive(this, i);
_L2:
        if (i == 32786 && j == -1 && intent != null && intent.hasExtra(AddFromActivity.INTENT_SELECTED))
        {
            mLayoutMgr.updateNavResultShare((ArrayList)intent.getExtras().getSerializable(AddFromActivity.INTENT_SELECTED));
        }
        if (i == 1234 && j == -1)
        {
            ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (arraylist.size() > 0)
            {
                Analytics.log("VOICE_SEARCH_RECOGNIZED");
                startNavigateFromSpeech((String)arraylist.get(0));
            }
        }
        if (j != 3) goto _L6; else goto _L5
_L5:
        mLayoutMgr.onActivityResult(this, i, j, intent);
_L8:
        return;
_L4:
        if ((i & 1) != 0 && j == -1)
        {
            NativeManager.bToUploadContacts = true;
            ShareUtility.shareLocationOrDrive(this, i);
        }
        continue; /* Loop/switch isn't completed */
_L6:
        onActivityResult(i, j, intent);
        NativeManager nativemanager = AppService.getNativeManager();
        if (i == 512)
        {
            mLayoutMgr.onActivityResult(this, i, j, intent);
        }
        if (i == 4096)
        {
            nativemanager.getSpeechttManager().OnResultsExternal(j, intent);
        }
        if (j == 32782)
        {
            if (mLayoutMgr.mainMenuInit())
            {
                mLayoutMgr.getMainMenu().dismiss();
            }
            mAddressToDrive = (AddressItem)intent.getExtras().getSerializable("AddressItem");
            MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_THANKS), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EVENTS_SHOW_UP_IN_NAVIGATE_TEXT), true, new OnOkMsgSmsService(), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_DRIVE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_DONE), -1);
        }
        if (i == 8192)
        {
            nativemanager.getTtsManager().onDataCheckResult(j, intent);
        }
        if (i == 16384)
        {
            nativemanager.getTtsManager().onDataInstallResult(j, intent);
        }
        if ((0x8000 & i) <= 0) goto _L8; else goto _L7
_L7:
        mLayoutMgr.onActivityResult(this, i, j, intent);
        return;
        if (true) goto _L2; else goto _L9
_L9:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        Log.i("WAZE", (new StringBuilder("Configuration changed: ")).append(configuration.orientation).toString());
        if (mOrientation != configuration.orientation && getRequestedOrientation() == 2)
        {
            mOrientation = configuration.orientation;
            mLayoutMgr.getMainLayout().requestLayout();
            mLayoutMgr.onOrientationChanged(mOrientation);
            mLayoutMgr.getAppView().getMapView().orientationChanged();
        }
        onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        Process.setThreadPriority(-8);
        requestWindowFeature(1);
        Registrar.start(this);
        mIsMainActivity = true;
        if (!NativeManager.IsAppStarted())
        {
            if (getResources().getConfiguration().orientation == 1)
            {
                setRequestedOrientation(1);
            } else
            if (getWindowManager().getDefaultDisplay().getRotation() == 3)
            {
                setRequestedOrientation(8);
            } else
            {
                setRequestedOrientation(0);
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(new CustomExceptionHandler());
        mOrientation = getResources().getConfiguration().orientation;
        AppService.setMainActivity(this);
        mGoogleAnalyticsTracker = GoogleAnalyticsTracker.getInstance();
        mGoogleAnalyticsTracker.start("UA-24084788-1", this);
        mLayoutMgr = new LayoutManager(this);
        setContentView(mLayoutMgr.getMainLayout());
        WazeApplication.startSW.startDelta("MainActivity setContentView", false);
        startApp();
        FacebookWrapper.initialize(this);
        WazeApplication.startSW.startDelta("MainActivity onCreate ENDED", false);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        mLayoutMgr.openMainMenu();
        return false;
    }

    protected void onDestroy()
    {
        NativeManager.getInstance().unregisterOnUserNameResultListerner(this);
        AppService.setMainActivity(null);
        onDestroy();
    }

    public void onFacebookTokenSet()
    {
        if (mAccountSignIn != null)
        {
            mAccountSignIn.onFacebookTokenSet();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (mLayoutMgr.IsPopupsShown())
        {
            mLayoutMgr.callCloseAllPopups(1);
            return true;
        } else
        {
            return onKeyDown(i, keyevent);
        }
    }

    protected void onNewIntent(Intent intent)
    {
        onNewIntent(intent);
        setIntent(intent);
    }

    public void onPause()
    {
        onPause();
        NativeManager nativemanager;
        if (AppService.getMainView() != null)
        {
            if (!bIsSearchClicked)
            {
                AppService.getMainView().onPause();
            } else
            {
                bIsSearchClicked = false;
                (new Handler()).postDelayed(new Runnable() {

                    final MainActivity this$0;

                    public void run()
                    {
                        if (AppService.getMainView() != null)
                        {
                            AppService.getMainView().onPause();
                        }
                    }

            
            {
                this$0 = MainActivity.this;
                super();
            }
                }, 300L);
            }
        }
        mLayoutMgr.onPause();
        mIsRunning = false;
        nativemanager = AppService.getNativeManager();
        if (nativemanager != null)
        {
            nativemanager.asrCancel();
        }
        if (nativemanager != null && !NativeManager.IsAppStarted())
        {
            cancelSplash();
        }
    }

    public void onResume()
    {
        boolean flag;
        flag = true;
        Log.w("WAZE DEBUG", (new StringBuilder("ON RESUME. Task id: ")).append(getTaskId()).toString());
        onResume();
        if (AppService.getMainView() != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ProgressToast progresstoast;
label0:
        {
            AppService.getMainView().onResume();
            mIsRunning = flag;
            NativeManager.onMainResume();
            mLayoutMgr.onResume();
            boolean flag1 = mResumeProgressShow;
            progresstoast = null;
            if (!flag1)
            {
                break label0;
            }
            if (AppService.getPrevActivity() != this)
            {
                Activity activity = AppService.getPrevActivity();
                progresstoast = null;
                if (activity != null)
                {
                    break label0;
                }
            }
            progresstoast = new ProgressToast();
            progresstoast.start();
            SystemClock.sleep(20L);
        }
        IntentManager.ParseIntentDataFlags(this);
        if (AppService.IsAppRunning())
        {
            IntentManager.HandleIntent(this, flag);
        }
        if (mResumeProgressShow && progresstoast != null)
        {
            progresstoast.stopToast();
        }
        postOnResumeEvents();
        if (bToOpenMeetYourWazer)
        {
            openMeetYourWazer();
        }
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(AppService.getAppContext()) == 0)
        {
            AdsTracking.getAdsTrackingData();
        }
        if (bToOpenAccountPopup)
        {
            NativeManager.getInstance().registerOnUserNameResultListerner(this);
            mAccountSignIn = new AccountSignInDetails(this);
            mAccountSignIn.getWindow().setSoftInputMode(32);
            mAccountSignIn.show();
            bToOpenAccountPopup = false;
            return;
        }
        if (bReportMapShownAnalytics && areAllSignUpDialogsClosed())
        {
            MyWazeNativeManager mywazenativemanager = MyWazeNativeManager.getInstance();
            if (!mywazenativemanager.getWasLoginSuccess() && !mywazenativemanager.getWasFbTokenSet())
            {
                flag = false;
            }
            if (bReportMapShownAnalytics && (flag || bSignupSkipped))
            {
                bReportMapShownAnalytics = false;
                bSignupSkipped = false;
                reportMapShown();
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean onSearchRequested()
    {
        startNavigateActivity();
        return false;
    }

    protected void onStart()
    {
        onStart();
    }

    public void onStop()
    {
        onStop();
    }

    public void onUserNameResult(int i, String s)
    {
        if (mNameWazerPopup != null && mNameWazerPopup.isShowing())
        {
            mNameWazerPopup.onUserNameResult(i, s);
            if (mAccountSignIn != null)
            {
                mAccountSignIn.dismiss();
                mAccountSignIn = null;
            }
            return;
        }
        if (mAccountSignIn != null)
        {
            mAccountSignIn.dismiss();
            mAccountSignIn = null;
        }
        DisableOrientation();
        if (mLayoutMgr.isSplashVisible())
        {
            mLayoutMgr.cancelSplash();
        }
        mNameWazerPopup = new NameYourWazerPopup(this);
        mNameWazerPopup.getWindow().setSoftInputMode(32);
        mNameWazerPopup.show();
        mNameWazerPopup.onUserNameResult(i, s);
        mNameWazerPopup.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final MainActivity this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                NativeManager.getInstance().unregisterOnUserNameResultListerner(MainActivity.this);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    public void openAddFriendPopup()
    {
        if (!NativeManager.getInstance().GetShowAddFriendsNTV())
        {
            NativeManager.getInstance().signup_finished();
            return;
        }
        if (mAddFriendsPopup == null)
        {
            mAddFriendsPopup = new AddFriendsPopup(this);
        }
        DisableOrientation();
        mAddFriendsPopup.show();
    }

    public void openConflictingActivity()
    {
        startActivity(new Intent(this, com/waze/install/InstallPickAccountActivity));
    }

    public void openEncouragementScreen(int i, long l)
    {
        Intent intent = new Intent(this, com/waze/share/EncouragementActivity);
        intent.putExtra("type", i);
        intent.putExtra("callback", l);
        startActivity(intent);
    }

    public void openMeetYourWazer()
    {
        if (mLayoutMgr.isSplashVisible())
        {
            mLayoutMgr.cancelSplash();
        }
        if (mMeetYourWazerPopup == null)
        {
            mMeetYourWazerPopup = new MeetYourWazerPopup(this);
        }
        if (mMeetYourWazerPopup.isShowing())
        {
            return;
        } else
        {
            DisableOrientation();
            mMeetYourWazerPopup.show();
            return;
        }
    }

    public void openPasswordRecovery()
    {
        if (mPasswordRecoveryPopup == null)
        {
            mPasswordRecoveryPopup = new PasswordRecoveryPopup(this);
        }
        DisableOrientation();
        mPasswordRecoveryPopup.show();
    }

    public void setResumeProgressShow(boolean flag)
    {
        mResumeProgressShow = flag;
    }

    public void speechRecognitionClicked(View view)
    {
        Log.d("WAZE", "SR pressed");
        Analytics.log("VOICE_SEARCH");
        try
        {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
            startActivityForResult(intent, 1234);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void startEditTextDialog(int i, long l, long l1)
    {
        Intent intent = new Intent(this, com/waze/ifs/ui/EditTextDialogActivity);
        intent.putExtra(EditTextDialogActivity.ARG_NATIVE, true);
        intent.putExtra(EditTextDialogActivity.ARG_TITLE_DS, i);
        intent.putExtra(EditTextDialogActivity.ARG_CALLBACK, l);
        intent.putExtra(EditTextDialogActivity.ARG_CONTEXT, l1);
        intent.putExtra(EditTextDialogActivity.ARG_SPEECH, true);
        startActivity(intent);
    }

    public void startNavigateActivity()
    {
        startActivityForResult(new Intent(this, com/waze/navigate/NavigateActivity), 32771);
    }

    public void startNavigateActivityWithFade()
    {
        Intent intent = new Intent(this, com/waze/navigate/NavigateActivity);
        intent.putExtra("keyboard", true);
        startActivityForResult(intent, 32771);
        overridePendingTransition(0x7f040002, 0);
    }

    public void startNavigateFromSpeech(String s)
    {
        Intent intent = new Intent(this, com/waze/navigate/NavigateActivity);
        intent.putExtra("Speech", s);
        startActivityForResult(intent, 32771);
        overridePendingTransition(0x7f040002, 0);
    }

    public void startProfileActivity()
    {
        if (MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            startActivityForResult(new Intent(this, com/waze/profile/TempUserProfileActivity), 32772);
            return;
        } else
        {
            startActivityForResult(new Intent(this, com/waze/profile/MyProfileActivity), 32772);
            return;
        }
    }

    public void startRegisterActivity()
    {
        Intent intent = new Intent(this, com/waze/phone/PhoneNumberSignInActivity);
        intent.putExtra("type", 1);
        intent.putExtra("back", 1);
        intent.putExtra("fon_shon_rea_son", "FEATURE");
        startActivityForResult(intent, 1);
    }

    public void startRoutesActivity()
    {
        startActivity(new Intent(this, com/waze/routes/RoutesActivity));
    }

    public void startStopPointActivity(boolean flag)
    {
        Intent intent = new Intent(this, com/waze/navigate/NavigateActivity);
        intent.putExtra("stopPoint", true);
        intent.putExtra("stopPointMessage", flag);
        startActivityForResult(intent, 32771);
    }

    static 
    {
        Logger.create();
    }





}
