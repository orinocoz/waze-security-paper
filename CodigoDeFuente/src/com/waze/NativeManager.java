// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.waze.analytics.Analytics;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.ifs.async.UpdateHandlers;
import com.waze.ifs.async.Waiter;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ActivityLifetimeHandler;
import com.waze.ifs.ui.OmniSelectionFragment;
import com.waze.ifs.ui.ProgressBarDialog;
import com.waze.ifs.ui.ShutdownManager;
import com.waze.inbox.InboxActivity;
import com.waze.inbox.InboxNativeManager;
import com.waze.install.InstallNativeManager;
import com.waze.location.Position;
import com.waze.messages.MessagesNativeManager;
import com.waze.messages.QuestionData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.AddFavoriteActivity;
import com.waze.navigate.AddHomeWorkActivity;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.NavigateActivity;
import com.waze.navigate.SearchActivity;
import com.waze.navigate.social.AddFriendsActivity;
import com.waze.navigate.social.MyFriendsActivity;
import com.waze.navigate.social.ShareDriveActivity;
import com.waze.navigate.social.ShareDrivingFriendsActivity;
import com.waze.navigate.social.ShareHelpActivity;
import com.waze.now.GoogleNowAuthenticator;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneAlreadyAWazerActivity;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.phone.PhoneVerifyYourNumbersActivity;
import com.waze.pioneer.PioneerManager;
import com.waze.profile.MyProfileActivity;
import com.waze.profile.TempUserProfileActivity;
import com.waze.push.Alerter;
import com.waze.push.Registrar;
import com.waze.reports.AddPlaceFlowActivity;
import com.waze.reports.NearbyGasStationsActivity;
import com.waze.reports.UpdatePriceActivity;
import com.waze.reports.VenueData;
import com.waze.rtalerts.RTAlertsAlertData;
import com.waze.rtalerts.RTAlertsCommentData;
import com.waze.rtalerts.RTAlertsMenu;
import com.waze.rtalerts.RTAlertsNativeManager;
import com.waze.rtalerts.RTAlertsThumbsUpData;
import com.waze.sensor.VoiceActivator;
import com.waze.settings.SettingsAdvancedActivity;
import com.waze.settings.SettingsLanguageActivity;
import com.waze.settings.SettingsMainActivity;
import com.waze.settings.SettingsNativeManager;
import com.waze.settings.SettingsNavigationActivity;
import com.waze.settings.SettingsNavigationGuidanceActivity;
import com.waze.settings.SettingsNotificationActivity;
import com.waze.share.ShareNativeManager;
import com.waze.share.ShareUtility;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.UserData;
import com.waze.utils.Base64;
import com.waze.utils.ImageRepository;
import com.waze.utils.Stopwatch;
import com.waze.utils.TicketRoller;
import com.waze.view.bottom.BottomNotification;
import com.waze.view.popups.DetailsPopUp;
import com.waze.view.popups.UserPopUp;
import com.waze.view.text.TypingLockListener;
import com.waze.voice.WazeSpeechRecognizer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

// Referenced classes of package com.waze:
//            WazeApplication, MsgBox, MainActivity, Logger, 
//            NativeSoundManager, NativeLocListener, AppService, MapViewWrapper, 
//            MapView, NativeCanvas, AppUUID, Utils, 
//            ResManager, ConfigManager, NativeTimerManager, NavBarManager, 
//            SoundRecorder, SpeechttManagerBase, TtsManager, CPUProfiler, 
//            MoodManager, LayoutManager, SessionTrafficStats, PowerManager, 
//            EditBox, IMessageParam, IntentManager, GeoFencingService, 
//            WzWebView, TooltipType, InternalWebBrowser

public final class NativeManager
    implements Executor
{
    public static class AddressStrings
    {

        public String address[];
        public String city[];
        public int numResults;
        public int numToFilterTo;
        public String street[];

        public AddressStrings()
        {
        }
    }

    public static class AdsActiveContext
    {

        public String event_info;
        public int pin_id;
        public int promo_id;

        public AdsActiveContext()
        {
        }
    }

    private static class CheckSDCardCallback
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MsgBox.Notify();
            if (NativeManager.mInstance != null)
            {
                if (NativeManager.IsAppStarted())
                {
                    NativeManager.mInstance.ShutDown();
                } else
                if (NativeManager.mInstance.getInitializedStatus())
                {
                    NativeManager.mInstance.appLayerShutDown();
                    return;
                }
            }
        }

        private CheckSDCardCallback()
        {
        }

        CheckSDCardCallback(CheckSDCardCallback checksdcardcallback)
        {
            this();
        }
    }

    private static final class CompatabilityWrapper
    {

        public static String getManufacturer()
        {
            return Build.MANUFACTURER;
        }

        private CompatabilityWrapper()
        {
        }
    }

    public static interface DisplayNameListener
    {

        public abstract void onComplete(String s);
    }

    public static interface GasSettingsListener
    {

        public abstract void onComplete(boolean flag);
    }

    public static interface IOnUserNameResult
    {

        public abstract void onUserNameResult(int i, String s);
    }

    public static interface IRefreshFriendsDrivingData
    {

        public abstract void onRefresh();
    }

    public static interface IResultCode
    {

        public abstract void onResult(int i);
    }

    private final class NativeThread extends HandlerThread
    {

        final NativeManager this$0;

        protected void onLooperPrepared()
        {
            Log.w("WAZE", "Native thread is running");
            mUIMsgDispatcher = new UIMsgDispatcher();
            notifyCreate();
            NativeManager.mInstance.prepareAppStart();
            NativeManager.mInstance.mStartAppEvent.run();
        }

        public NativeThread(String s)
        {
            this$0 = NativeManager.this;
            super(s);
        }
    }

    public static abstract class OnUrlHandleResult extends RunnableExecutor
    {

        public boolean result;

        public OnUrlHandleResult()
        {
            result = false;
        }
    }

    public static class PeopleAppData
    {

        public int friendship_suggest_count;

        public PeopleAppData()
        {
        }
    }

    private static final class ResPrepareThread extends Thread
    {

        public void run()
        {
            Log.w("WAZE", "Resources prepare thread start");
            ResManager.Prepare();
            Log.w("WAZE", "Resources prepare thread finish");
        }

        private ResPrepareThread()
        {
        }
    }

    public static final class UIEvent extends Enum
    {

        private static final UIEvent ENUM$VALUES[];
        public static final UIEvent UI_EVENT_FORCE_NEW_CANVAS;
        public static final UIEvent UI_EVENT_KEY_DOWN;
        public static final UIEvent UI_EVENT_LOW_MEMORY;
        public static final UIEvent UI_EVENT_NATIVE;
        public static final UIEvent UI_EVENT_SCREENSHOT;
        public static final UIEvent UI_EVENT_START;
        public static final UIEvent UI_EVENT_STARTUP_GPUERROR;
        public static final UIEvent UI_EVENT_STARTUP_NOSDCARD;
        public static final UIEvent UI_EVENT_TOUCH;
        public static final UIEvent UI_PRIORITY_EVENT_NATIVE;

        public static UIEvent FromInt(int i)
        {
            return values()[i];
        }

        public static int ToInt(UIEvent uievent)
        {
            return uievent.ordinal();
        }

        public static UIEvent valueOf(String s)
        {
            return (UIEvent)Enum.valueOf(com/waze/NativeManager$UIEvent, s);
        }

        public static UIEvent[] values()
        {
            UIEvent auievent[] = ENUM$VALUES;
            int i = auievent.length;
            UIEvent auievent1[] = new UIEvent[i];
            System.arraycopy(auievent, 0, auievent1, 0, i);
            return auievent1;
        }

        static 
        {
            UI_EVENT_START = new UIEvent("UI_EVENT_START", 0);
            UI_EVENT_FORCE_NEW_CANVAS = new UIEvent("UI_EVENT_FORCE_NEW_CANVAS", 1);
            UI_EVENT_KEY_DOWN = new UIEvent("UI_EVENT_KEY_DOWN", 2);
            UI_EVENT_TOUCH = new UIEvent("UI_EVENT_TOUCH", 3);
            UI_EVENT_STARTUP_NOSDCARD = new UIEvent("UI_EVENT_STARTUP_NOSDCARD", 4);
            UI_EVENT_STARTUP_GPUERROR = new UIEvent("UI_EVENT_STARTUP_GPUERROR", 5);
            UI_EVENT_LOW_MEMORY = new UIEvent("UI_EVENT_LOW_MEMORY", 6);
            UI_EVENT_SCREENSHOT = new UIEvent("UI_EVENT_SCREENSHOT", 7);
            UI_EVENT_NATIVE = new UIEvent("UI_EVENT_NATIVE", 8);
            UI_PRIORITY_EVENT_NATIVE = new UIEvent("UI_PRIORITY_EVENT_NATIVE", 9);
            UIEvent auievent[] = new UIEvent[10];
            auievent[0] = UI_EVENT_START;
            auievent[1] = UI_EVENT_FORCE_NEW_CANVAS;
            auievent[2] = UI_EVENT_KEY_DOWN;
            auievent[3] = UI_EVENT_TOUCH;
            auievent[4] = UI_EVENT_STARTUP_NOSDCARD;
            auievent[5] = UI_EVENT_STARTUP_GPUERROR;
            auievent[6] = UI_EVENT_LOW_MEMORY;
            auievent[7] = UI_EVENT_SCREENSHOT;
            auievent[8] = UI_EVENT_NATIVE;
            auievent[9] = UI_PRIORITY_EVENT_NATIVE;
            ENUM$VALUES = auievent;
        }

        private UIEvent(String s, int i)
        {
            super(s, i);
        }
    }

    public static class UIMsgDispatcher extends Handler
    {

        private static int $SWITCH_TABLE$com$waze$NativeManager$UIEvent[];

        static int[] $SWITCH_TABLE$com$waze$NativeManager$UIEvent()
        {
            int ai[] = $SWITCH_TABLE$com$waze$NativeManager$UIEvent;
            if (ai != null)
            {
                return ai;
            }
            int ai1[] = new int[UIEvent.values().length];
            try
            {
                ai1[UIEvent.UI_EVENT_FORCE_NEW_CANVAS.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai1[UIEvent.UI_EVENT_KEY_DOWN.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai1[UIEvent.UI_EVENT_LOW_MEMORY.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai1[UIEvent.UI_EVENT_NATIVE.ordinal()] = 9;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                ai1[UIEvent.UI_EVENT_SCREENSHOT.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                ai1[UIEvent.UI_EVENT_START.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                ai1[UIEvent.UI_EVENT_STARTUP_GPUERROR.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                ai1[UIEvent.UI_EVENT_STARTUP_NOSDCARD.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            try
            {
                ai1[UIEvent.UI_EVENT_TOUCH.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror8) { }
            try
            {
                ai1[UIEvent.UI_PRIORITY_EVENT_NATIVE.ordinal()] = 10;
            }
            catch (NoSuchFieldError nosuchfielderror9) { }
            $SWITCH_TABLE$com$waze$NativeManager$UIEvent = ai1;
            return ai1;
        }

        private void handlePriorityEvents()
        {
            NativeManager nativemanager = NativeManager.getInstance();
_L7:
            ArrayList arraylist = nativemanager.mUITouchEventQueue;
            arraylist;
            JVM INSTR monitorenter ;
            boolean flag = nativemanager.mUITouchEventQueue.isEmpty();
            MotionEvent motionevent;
            motionevent = null;
            if (flag)
            {
                break MISSING_BLOCK_LABEL_41;
            }
            motionevent = (MotionEvent)nativemanager.mUITouchEventQueue.remove(0);
            arraylist;
            JVM INSTR monitorexit ;
            if (motionevent != null)
            {
                NativeManager.mNativeCanvas.OnTouchEventHandler(motionevent);
                continue; /* Loop/switch isn't completed */
            }
            break MISSING_BLOCK_LABEL_65;
            Exception exception;
            exception;
            arraylist;
            JVM INSTR monitorexit ;
            throw exception;
            ArrayList arraylist1 = nativemanager.mUIKeyEventQueue;
            arraylist1;
            JVM INSTR monitorenter ;
            boolean flag1 = nativemanager.mUIKeyEventQueue.isEmpty();
            KeyEvent keyevent;
            keyevent = null;
            if (flag1)
            {
                break MISSING_BLOCK_LABEL_104;
            }
            keyevent = (KeyEvent)nativemanager.mUIKeyEventQueue.remove(0);
            arraylist1;
            JVM INSTR monitorexit ;
            if (keyevent != null)
            {
                NativeManager.mNativeCanvas.OnKeyDownHandler(keyevent);
                continue; /* Loop/switch isn't completed */
            }
            break MISSING_BLOCK_LABEL_132;
            Exception exception1;
            exception1;
            arraylist1;
            JVM INSTR monitorexit ;
            throw exception1;
            ArrayList arraylist2 = nativemanager.mPriorityEventQueue;
            arraylist2;
            JVM INSTR monitorenter ;
            boolean flag2 = nativemanager.mPriorityEventQueue.isEmpty();
            Message message;
            message = null;
            if (flag2)
            {
                break MISSING_BLOCK_LABEL_171;
            }
            message = (Message)nativemanager.mPriorityEventQueue.remove(0);
            arraylist2;
            JVM INSTR monitorexit ;
            if (message == null) goto _L2; else goto _L1
_L1:
            UIEvent uievent;
            long l;
            String s;
            uievent = UIEvent.FromInt(message.what);
            l = System.currentTimeMillis();
            s = "";
            $SWITCH_TABLE$com$waze$NativeManager$UIEvent()[uievent.ordinal()];
            JVM INSTR tableswitch 10 10: default 224
        //                       10 302;
               goto _L3 _L4
_L3:
            Logger.e((new StringBuilder("Unknown priority event - ")).append(uievent).toString());
_L5:
            long l1 = System.currentTimeMillis() - l;
            if (l1 > 500L)
            {
                Logger.w((new StringBuilder("WAZE PROFILER EXCEPTIONAL TIME FOR ")).append(s).append(" HANDLING TIME: ").append(l1).toString());
            }
            continue; /* Loop/switch isn't completed */
            Exception exception2;
            exception2;
            arraylist2;
            JVM INSTR monitorexit ;
            throw exception2;
_L4:
            boolean flag3 = true;
            IMessageParam imessageparam = (IMessageParam)message.obj;
            if (imessageparam != null)
            {
                flag3 = imessageparam.IsActive();
                s = "Timer Event";
            } else
            {
                s = "IO event";
            }
            if (flag3)
            {
                nativemanager.NativeMsgDispatcherNTV(message.arg1, message.arg2);
            }
            if (true) goto _L5; else goto _L2
_L2:
            return;
            if (true) goto _L7; else goto _L6
_L6:
        }

        public void handleMessage(Message message)
        {
            if (!NativeManager.isShuttingDown()) goto _L2; else goto _L1
_L1:
            return;
_L2:
            NativeManager nativemanager;
            UIEvent uievent;
            long l;
            String s;
            nativemanager = NativeManager.getInstance();
            if (nativemanager.getInitializedStatus())
            {
                handlePriorityEvents();
            }
            uievent = UIEvent.FromInt(message.what);
            l = System.currentTimeMillis();
            s = "";
            $SWITCH_TABLE$com$waze$NativeManager$UIEvent()[uievent.ordinal()];
            JVM INSTR tableswitch 1 10: default 100
        //                       1 100
        //                       2 100
        //                       3 100
        //                       4 100
        //                       5 162
        //                       6 155
        //                       7 175
        //                       8 100
        //                       9 257
        //                       10 100;
               goto _L3 _L3 _L3 _L3 _L3 _L4 _L5 _L6 _L3 _L7 _L3
_L7:
            break MISSING_BLOCK_LABEL_257;
_L3:
            break; /* Loop/switch isn't completed */
_L5:
            break; /* Loop/switch isn't completed */
_L9:
            long l1 = System.currentTimeMillis() - l;
            if (l1 > 500L && nativemanager.getInitializedStatus())
            {
                Logger.w((new StringBuilder("WAZE PROFILER EXCEPTIONAL TIME FOR ")).append(s).append(" HANDLING TIME: ").append(l1).toString());
                return;
            }
            if (true) goto _L1; else goto _L8
_L8:
            nativemanager.appLayerShutDown();
              goto _L9
_L4:
            if (NativeManager.CheckSDCardAvailable())
            {
                NativeManager.startApp();
            }
              goto _L9
_L6:
            String s1 = new String((new StringBuilder("Memory usage native heap. Used: ")).append(Debug.getNativeHeapAllocatedSize()).append(". Free: ").append(Debug.getNativeHeapFreeSize()).append(". Total: ").append(Debug.getNativeHeapSize()).toString());
            Logger.w((new StringBuilder(String.valueOf(new String("Android system reported low memory !!! ")))).append(s1).toString());
