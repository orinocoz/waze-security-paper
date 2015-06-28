// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.android.Facebook;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ShutdownManager;
import com.waze.pioneer.PioneerManager;
import com.waze.utils.Stopwatch;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            NativeManager, MapViewWrapper, MapView, IntentManager, 
//            CloseIntent, FreeMapAppActivity, MainActivity, WazeApplication, 
//            PowerManager, StandbyManager, ConnEventReceiver, LayoutManager

public final class AppService extends Service
    implements Executor
{
    private class EndCallListener extends PhoneStateListener
    {

        final AppService this$0;

        public void onCallStateChanged(int i, String s)
        {
            if (2 == i)
            {
                NativeManager nativemanager = NativeManager.getInstance();
                if (nativemanager.getInitializedStatus() && nativemanager.isNavigatingNTV())
                {
                    int j = nativemanager.getReturnToWazeFromPhoneTimeoutNTV();
                    if (j >= 0)
                    {
                        AppService.mServiceMsgDispatcher.postDelayed(new Runnable() {

                            final EndCallListener this$1;

                            public void run()
                            {
                                Intent intent = new Intent(AppService.getAppContext(), com/waze/FreeMapAppActivity);
                                intent.setAction("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.LAUNCHER");
                                intent.setFlags(0x10000000);
                                startActivity(intent);
                            }

            
            {
                this$1 = EndCallListener.this;
                super();
            }
                        }, j * 1000);
                    }
                }
            }
        }


        private EndCallListener()
        {
            this$0 = AppService.this;
            super();
        }

        EndCallListener(EndCallListener endcalllistener)
        {
            this();
        }
    }

    private static final class ServiceMsgDispatcher extends Handler
    {

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                return;

            case 0: // '\0'
                AppService.ShowMainActivityHandler();
                return;

            case 1: // '\001'
                AppService.ShowHomeHandler();
                return;

            case 2: // '\002'
                AppService.ShowDialerHandler();
                return;

            case 3: // '\003'
                AppService.ShowCameraPreviewHandler();
                return;

            case 4: // '\004'
                AppService.OpenBrowserForUpgradeHandler();
                return;

            case 5: // '\005'
                AppService.RestartApplicationHandler();
                return;

            case 6: // '\006'
                AppService.ShowContactsHandler();
                break;
            }
        }

        private ServiceMsgDispatcher()
        {
        }

        ServiceMsgDispatcher(ServiceMsgDispatcher servicemsgdispatcher)
        {
            this();
        }
    }


    public static final String AMAZON_MARKET_APP_LINK = "http://www.amazon.com/gp/mas/dl/android?p=com.waze";
    public static final boolean APPLICATION_TEST_MODE = false;
    public static final String GOOGLE_MARKET_APP_LINK = "market://details?id=com.waze";
    private static final String LOG_TAG = "WAZE_Service";
    public static final String MARKET_APP_LINK = "market://details?id=com.waze";
    public static final int MSG_OPEN_BROWSER_FOR_UPGRADE = 4;
    public static final int MSG_RESTART_APPLICATION = 5;
    public static final int MSG_SHOW_CAMERA_PREVIEW = 3;
    public static final int MSG_SHOW_CONTACTS = 6;
    public static final int MSG_SHOW_DIALER_SCREEN = 2;
    public static final int MSG_SHOW_HOME_SCREEN = 1;
    public static final int MSG_SHOW_MAIN_ACTIVITY = 0;
    public static final int POLICE_ENABLE = 1;
    public static final String SHOW_CONTACTS_URI = "content://contacts/people/";
    private static final boolean WAZE_LOGCAT_MONITOR_ENABLED = false;
    public static final int WAZE_NOTIFICATION_GENERIC = 2;
    private static final int WAZE_NOTIFICATION_RUNNING = 1;
    public static final String WAZE_UPGRADE_URL = "m.waze.com";
    private static MapViewWrapper activeMapViewWrapper = null;
    private static ActivityBase mActiveActivity = null;
    private static ConnEventReceiver mConnEventReceiver = null;
    private static Notification mCurrentNotification;
    private static boolean mFirstRun = false;
    private static AppService mInstance = null;
    public static Logger.LogCatMonitor mLogCatMonitor = null;
    private static volatile MainActivity mMainActivity;
    private static NativeManager mNativeManager = null;
    private static PowerManager mPowerManager;
    private static ActivityBase mPrevActivity = null;
    private static ServiceMsgDispatcher mServiceMsgDispatcher = new ServiceMsgDispatcher(null);
    private static StandbyManager mStandbyManager;
    private static String mUrl = null;
    private Facebook mFacebook;
    private final RunnableExecutor mOnStartApp = new RunnableExecutor(this) {

        final AppService this$0;

        public void event()
        {
            AppService.mConnEventReceiver = new ConnEventReceiver();
            AppService.getAppContext().registerReceiver(AppService.mConnEventReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

            
            {
                this$0 = AppService.this;
                super(executor);
            }
    };

    public AppService()
    {
        mFacebook = new Facebook("343050668156");
    }

    private static void ClearNotification()
    {
        ((NotificationManager)getAppContext().getSystemService("notification")).cancel(1);
    }

    public static boolean IsAppRunning()
    {
        return IsInitialized() && mNativeManager != null && NativeManager.IsAppStarted();
    }

    public static boolean IsInitialized()
    {
        return mInstance != null;
    }

    public static boolean IsMainViewReady()
    {
        return getMainView() != null && getMainView().getMapView().IsReady();
    }

    public static void OpenBrowser(final String aUrl)
    {
        Post(new Runnable() {

            private final String val$aUrl;

            public void run()
            {
                try
                {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    String s = aUrl;
                    if (!s.startsWith("http"))
                    {
                        s = (new StringBuilder("http://")).append(s).toString();
                    }
                    Uri uri = Uri.parse(s);
                    intent.setFlags(0x10000000);
                    intent.setData(uri);
                    AppService.mInstance.startActivity(intent);
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            }

            
            {
                aUrl = s;
                super();
            }
        });
    }

    public static void OpenBrowserForUpgrade()
    {
        mServiceMsgDispatcher.sendEmptyMessage(4);
    }

    private static void OpenBrowserForUpgradeHandler()
    {
        if (mInstance == null)
        {
            return;
        } else
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            Uri uri = Uri.parse("m.waze.com");
            intent.setFlags(0x10000000);
            intent.setData(uri);
            mInstance.startActivity(intent);
            return;
        }
    }

    public static void Post(Runnable runnable)
    {
        mServiceMsgDispatcher.post(runnable);
    }

    public static void Post(Runnable runnable, long l)
    {
        mServiceMsgDispatcher.postDelayed(runnable, l);
    }

    public static void Remove(Runnable runnable)
    {
        mServiceMsgDispatcher.removeCallbacks(runnable);
    }

    public static void RestartApplication()
    {
        mServiceMsgDispatcher.sendEmptyMessage(5);
    }

    private static void RestartApplicationHandler()
    {
        IntentManager.RequestRestart(getAppContext());
        mNativeManager.ShutDown();
    }

    private static Notification SetNotification()
    {
        long l = System.currentTimeMillis();
        Context context = getAppContext();
        CloseIntent.Register(context);
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            Intent intent = new Intent(context, com/waze/FreeMapAppActivity);
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x10000000);
            PendingIntent pendingintent1 = PendingIntent.getBroadcast(context, 1, new Intent(context, com/waze/CloseIntent), 0x10000000);
            android.app.Notification.Builder builder = new android.app.Notification.Builder(context);
            builder.setContentIntent(pendingintent);
            builder.setSmallIcon(0x7f020288);
            builder.setTicker("Waze");
            builder.setContentTitle("Waze");
            builder.setContentText("Running. Tap to open.");
            builder.setPriority(2);
            builder.addAction(0x7f0203d6, "Switch off", pendingintent1);
            Notification notification = builder.build();
            notification.flags = 0x22 | notification.flags;
            notification.when = System.currentTimeMillis();
            ((NotificationManager)context.getSystemService("notification")).notify(1, notification);
            return notification;
        } else
        {
            Intent intent1 = new Intent(context, com/waze/FreeMapAppActivity);
            intent1.setAction("android.intent.action.MAIN");
            intent1.addCategory("android.intent.category.LAUNCHER");
            PendingIntent pendingintent2 = PendingIntent.getActivity(context, 0, intent1, 0x10000000);
            Notification notification1 = new Notification(0x7f020288, "Waze", l);
            notification1.setLatestEventInfo(context, "Waze", "Running. Tap to open.", pendingintent2);
            notification1.flags = 0x22 | notification1.flags;
            ((NotificationManager)context.getSystemService("notification")).notify(1, notification1);
            return notification1;
        }
    }

    private static void ShowCameraPreviewHandler()
    {
    }

    public static void ShowCameraPreviewWindow()
    {
        mServiceMsgDispatcher.sendEmptyMessage(3);
    }

    public static void ShowContacts()
    {
        mServiceMsgDispatcher.sendEmptyMessage(6);
    }

    private static void ShowContactsHandler()
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(0x10000000);
        intent.setData(Uri.parse("content://contacts/people/"));
        mInstance.startActivity(intent);
    }

    private static void ShowDialerHandler()
    {
        if (mInstance == null)
        {
            return;
        } else
        {
            Intent intent = new Intent("android.intent.action.DIAL");
            intent.setFlags(0x10000000);
            mInstance.startActivity(intent);
            return;
        }
    }

    public static void ShowDilerWindow(long l)
    {
        mServiceMsgDispatcher.sendEmptyMessage(2);
        if (l >= 0L)
        {
            mServiceMsgDispatcher.sendEmptyMessageDelayed(0, l);
        }
    }

    private static void ShowHomeHandler()
    {
        if (mInstance == null)
        {
            return;
        } else
        {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            intent.setFlags(0x10000000);
            mInstance.startActivity(intent);
            return;
        }
    }

    public static void ShowHomeWindow(long l)
    {
        mServiceMsgDispatcher.sendEmptyMessage(1);
        if (l >= 0L)
        {
            mServiceMsgDispatcher.sendEmptyMessageDelayed(0, l);
        }
    }

    private static void ShowMainActivityHandler()
    {
        if (mInstance == null)
        {
            return;
        } else
        {
            Intent intent = new Intent(getAppContext(), com/waze/MainActivity);
            intent.setFlags(0x10000000);
            mInstance.startActivity(intent);
            return;
        }
    }

    public static void ShowMainActivityWindow(long l)
    {
        mServiceMsgDispatcher.sendEmptyMessageDelayed(0, l);
    }

    public static void ShutDown()
    {
        if (mInstance == null)
        {
            return;
        }
        PioneerManager.stop();
        Context context = getAppContext();
        if (context != null)
        {
            if (mConnEventReceiver != null)
            {
                context.unregisterReceiver(mConnEventReceiver);
            }
            if (mPowerManager != null)
            {
                context.unregisterReceiver(mPowerManager);
            }
        }
        if (mLogCatMonitor != null)
        {
            mLogCatMonitor.Destroy();
        }
        ClearNotification();
        mInstance.stopSelf();
    }

    public static ActivityBase getActiveActivity()
    {
        return mActiveActivity;
    }

    public static MapViewWrapper getActiveMapViewWrapper()
    {
        return activeMapViewWrapper;
    }

    public static Context getAppContext()
    {
        if (mInstance != null)
        {
            return mInstance.getApplicationContext();
        }
        if (mMainActivity != null)
        {
            return mMainActivity.getApplicationContext();
        } else
        {
            return null;
        }
    }

    public static Resources getAppResources()
    {
        return mInstance.getResources();
    }

    public static Display getDisplay()
    {
        return ((WindowManager)getAppContext().getSystemService("window")).getDefaultDisplay();
    }

    public static AppService getInstance()
    {
        return mInstance;
    }

    public static MainActivity getMainActivity()
    {
        return mMainActivity;
    }

    public static MapViewWrapper getMainView()
    {
        MainActivity mainactivity = mMainActivity;
        MapViewWrapper mapviewwrapper = null;
        if (mainactivity != null)
        {
            mapviewwrapper = mMainActivity.getMainView();
        }
        return mapviewwrapper;
    }

    public static NativeManager getNativeManager()
    {
        return mNativeManager;
    }

    public static PowerManager getPowerManager()
    {
        return mPowerManager;
    }

    public static Activity getPrevActivity()
    {
        return mPrevActivity;
    }

    public static String getUrl()
    {
        return mUrl;
    }

    public static boolean isFirstRun()
    {
        return mFirstRun;
    }

    public static boolean isNetworkAvailable()
    {
        return ((ConnectivityManager)getAppContext().getSystemService("connectivity")).getActiveNetworkInfo() != null;
    }

    public static void setActiveActivity(ActivityBase activitybase)
    {
        StringBuilder stringbuilder = new StringBuilder("Previous active activity: ");
        String s;
        if (mActiveActivity == null)
        {
            s = "null";
        } else
        {
            s = mActiveActivity.getClass().toString();
        }
        Log.d("WAZE", stringbuilder.append(s).toString());
        if (mActiveActivity != null)
        {
            mActiveActivity.removeDialogs();
        }
        mPrevActivity = mActiveActivity;
        mActiveActivity = activitybase;
        Log.d("WAZE", (new StringBuilder("Current active activity: ")).append(mActiveActivity.getClass().toString()).toString());
    }

    public static void setActiveMapViewWrapper(MapViewWrapper mapviewwrapper)
    {
        activeMapViewWrapper = mapviewwrapper;
    }

    public static void setFirstRun()
    {
        mFirstRun = true;
    }

    public static void setMainActivity(MainActivity mainactivity)
    {
        mMainActivity = mainactivity;
    }

    public static void setMainLayout()
    {
        Runnable runnable = new Runnable() {

            public void run()
            {
                LayoutManager layoutmanager = AppService.mMainActivity.getLayoutMgr();
                AppService.mMainActivity.setContentView(layoutmanager.getMainLayout());
            }

        };
        mMainActivity.runOnUiThread(runnable);
    }

    public static void setUrl(String s)
    {
        mUrl = s;
    }

    public static void showActivity(Intent intent)
    {
        showActivity(intent, null);
    }

    public static void showActivity(Intent intent, Activity activity)
    {
        if (intent != null)
        {
            if (activity == null)
            {
                activity = getActiveActivity();
            }
            if (activity != null)
            {
                activity.startActivity(intent);
                return;
            }
        }
    }

    public static void start(ActivityBase activitybase)
    {
        if (!IsInitialized())
        {
            mNativeManager = NativeManager.getInstance();
            activitybase.startService(new Intent(activitybase, com/waze/AppService));
        }
    }

    private void startLogCatMonitor()
    {
    }

    public void execute(Runnable runnable)
    {
        Post(runnable);
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        WazeApplication.startSW.startDelta("Service onCreate", false);
        if (mMainActivity == null)
        {
            Log.e("WAZE_Service", "AppService.onCreate main activity is null");
            stopSelf();
        } else
        {
            mInstance = this;
            if (mCurrentNotification != null)
            {
                Log.d("WAZE_Service", "Setting the service to be foreground");
                mCurrentNotification = null;
            }
            startForeground();
            if (NativeManager.CheckSDCardAvailable())
            {
                mPowerManager = PowerManager.Create(getAppContext());
                getAppContext().registerReceiver(mPowerManager, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                PioneerManager.create();
                NativeManager.onServiceCreated();
                mStandbyManager = StandbyManager.start(getAppContext());
                EndCallListener endcalllistener;
                if (NativeManager.IsAppStarted())
                {
                    mOnStartApp.event();
                } else
                {
                    NativeManager.registerOnAppStartedEvent(mOnStartApp);
                }
                startLogCatMonitor();
                Log.i("WAZE_Service", (new StringBuilder("Service Created. Instance: ")).append(this).toString());
                endcalllistener = new EndCallListener(null);
                ((TelephonyManager)getSystemService("phone")).listen(endcalllistener, 32);
                return;
            }
        }
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (mStandbyManager != null)
        {
            mStandbyManager.stop();
        }
        if (mNativeManager != null)
        {
            mNativeManager.RestoreSystemSettings();
        }
        Log.w("WAZE_Service", "Service destroy.");
        ShutdownManager.onServiceDestroy();
    }

    public void onLowMemory()
    {
        Log.w("Waze Service", "Low memory warning!!!");
        if (mNativeManager != null)
        {
            mNativeManager.PostUIMessage(NativeManager.UIEvent.UI_EVENT_LOW_MEMORY);
        }
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.i("WAZE_Service", (new StringBuilder("Start service is called ")).append(mInstance).toString());
        return 2;
    }

    public void startForeground()
    {
        if (mCurrentNotification != null)
        {
            startForeground(1, mCurrentNotification);
            return;
        } else
        {
            mCurrentNotification = SetNotification();
            startForeground(1, mCurrentNotification);
            return;
        }
    }

    public void stopForeground()
    {
        mCurrentNotification = null;
        stopForeground(true);
    }













}
