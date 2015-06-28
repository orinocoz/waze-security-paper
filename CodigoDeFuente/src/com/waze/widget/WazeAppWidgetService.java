// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.IBinder;
import android.os.SystemClock;
import android.widget.Toast;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.ifs.ui.ActivityBase;
import com.waze.utils.OfflineStats;
import com.waze.widget.routing.RouteScore;
import com.waze.widget.routing.RouteScoreType;
import com.waze.widget.routing.RoutingResponse;
import java.io.File;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;

// Referenced classes of package com.waze.widget:
//            StatusData, WazeAppWidgetLog, WazeAppWidgetChart, WazeAppWidgetPreferences, 
//            WazeAppWidgetNoDataActivity, WazeAppWidgetProvider, WazeAppWidgetManager, WidgetManager

public class WazeAppWidgetService extends Service
{
    final class _cls1Task extends TimerTask
    {

        public void run()
        {
            if (WazeAppWidgetService.mInstance != null)
            {
                WazeAppWidgetService.mInstance.onRefreshingTimeout();
            }
            if (WazeAppWidgetService.mRefreshMonitor != null)
            {
                WazeAppWidgetService.mRefreshMonitor.cancel();
                WazeAppWidgetService.mRefreshMonitor = null;
            }
        }

        _cls1Task()
        {
        }
    }


    public static final String APPWIDGET_ACTION_CMD_DRIVE = "AppWidget Action Command Drive";
    public static final String APPWIDGET_ACTION_CMD_ENABLE = "AppWidget Action Command Enable";
    public static final String APPWIDGET_ACTION_CMD_FORCE_REFRESH = "AppWidget Action Command Force Refresh";
    public static final String APPWIDGET_ACTION_CMD_GRAPH = "AppWidget Action Command Graph";
    public static final String APPWIDGET_ACTION_CMD_NODATA = "AppWidget Action Command No Data";
    public static final String APPWIDGET_ACTION_CMD_NONE = "AppWidget Action Command None";
    public static final String APPWIDGET_ACTION_CMD_REFRESH = "AppWidget Action Command Refresh";
    public static final String APPWIDGET_ACTION_CMD_REFRESH_INFO = "AppWidget Action Command Refresh Info";
    public static final String APPWIDGET_ACTION_CMD_REFRESH_TEST = "AppWidget Action Command Refresh Test";
    public static final String APPWIDGET_ACTION_CMD_UPDATE = "AppWidget Action Command Update";
    public static final String APPWIDGET_ACTION_UPDATE = "AppWidget Action Update";
    private static final String INITIAL_DESTINATION = "Home";
    private static final String PREFS_DB = "WAZE WIDGET PREFS";
    private static final long REFRESHING_TIMEOUT = 30000L;
    public static final int STATE_CURRENT_DATA_NEED_REFRESH = 3;
    public static final int STATE_CURRENT_DATA_UPTODATE = 2;
    public static final int STATE_NONE = 0;
    public static final int STATE_NO_DATA = 1;
    public static final int STATE_REFRESHING = 4;
    public static final int STATE_REFRESHING_INFO = 5;
    public static Context mApplicationContext = null;
    private static WazeAppWidgetService mInstance = null;
    private static Timer mRefreshMonitor = null;
    private static Timer mSDCardChecker = null;
    private static final StatusData mStatusData = new StatusData();
    private static volatile int mWidgetState = 0;

    public WazeAppWidgetService()
    {
    }

    public static void alertUser(final String str)
    {
        if (str != null && str.length() > 0)
        {
            ActivityBase activitybase = AppService.getActiveActivity();
            if (activitybase != null)
            {
                activitybase.runOnUiThread(new Runnable() {

                    private final String val$str;

                    private String makePrintFriendly(String s)
                    {
                        String s1 = s.replace("{", "").replace("}", "").replace("\"", "");
                        int i = s1.indexOf("|");
                        if (i > -1 && i < -1 + s.length())
                        {
                            s1 = s1.substring(i + 1);
                        }
                        return s1;
                    }

                    public void run()
                    {
                        String s = makePrintFriendly(str);
                        Toast.makeText(WazeAppWidgetService.mInstance.getApplicationContext(), s, 1).show();
                    }

            
            {
                str = s;
                super();
            }
                });
            }
        }
    }

    public static void destroy()
    {
        if (mInstance != null)
        {
            mInstance.saveState();
            Context context = mInstance.getApplicationContext();
            context.stopService(new Intent(context, com/waze/widget/WazeAppWidgetService));
        }
    }

    private void driveCmdHandler()
    {
        WazeAppWidgetLog.d("Drive command handler");
        if (mWidgetState == 2 || mWidgetState == 3)
        {
            WazeAppWidgetLog.d((new StringBuilder("Starting waze waze://?favorite=")).append(mStatusData.destination()).toString());
            Intent intent = new Intent(getApplicationContext(), com/waze/MainActivity);
            Uri uri = Uri.parse((new StringBuilder("waze://?favorite=")).append(mStatusData.destination()).toString());
            intent.setAction("android.intent.action.VIEW");
            intent.setData(uri);
            intent.setFlags(0x18000000);
            WazeAppWidgetLog.d("driveCmdHandler - starting waze");
            getApplicationContext().startActivity(intent);
            return;
        } else
        {
            WazeAppWidgetLog.d((new StringBuilder("driveCmdHandler invalid state")).append(mWidgetState).toString());
            return;
        }
    }

    private void enableCmdHandler()
    {
        WazeAppWidgetLog.d("enable command handler");
        final File file = new File("/sdcard/");
        if (file.exists() && file.canWrite())
        {
            WazeAppWidgetLog.d("SD Card is available. Setting state to the STATUS_NEW_WIDGET.");
            setState(8, null);
        } else
        if (mSDCardChecker == null)
        {
            mSDCardChecker = new Timer();
            TimerTask timertask = new TimerTask() {

                final WazeAppWidgetService this$0;
                private final File val$file;

                public void run()
                {
                    if (file.exists() && file.canWrite())
                    {
                        WazeAppWidgetLog.d("SD Card is available. Setting state to the STATUS_NEW_WIDGET. Cancelling the timer.");
                        WazeAppWidgetService.setState(8, null);
                        WazeAppWidgetService.mSDCardChecker.cancel();
                        WidgetManager.loadWazeConfig();
                        WazeAppWidgetService.mWidgetState = 0;
                        WazeAppWidgetService.mStatusData.copy(new StatusData());
                        WazeAppWidgetService.mSDCardChecker = null;
                        return;
                    } else
                    {
                        WazeAppWidgetLog.w("SD Card is not available. Scheduling next check in 30 seconds");
                        WazeAppWidgetService.mSDCardChecker.schedule(this, 30000L);
                        return;
                    }
                }

            
            {
                this$0 = WazeAppWidgetService.this;
                file = file1;
                super();
            }
            };
            mSDCardChecker.schedule(timertask, 30000L);
            return;
        }
    }

    private void forceRefreshCmdHandler()
    {
        WazeAppWidgetLog.d("force refresh command handler");
        mWidgetState = 3;
        setState(32, null);
    }

    private void graphCmdHandler()
    {
        WazeAppWidgetLog.d("Graph command handler");
        if (mWidgetState == 2 || mWidgetState == 3)
        {
            Intent intent = (new WazeAppWidgetChart()).execute(this, mStatusData.getRoutingRespnse(), mStatusData.timeStamp());
            intent.setFlags(0x50000000);
            getApplicationContext().startActivity(intent);
            return;
        } else
        {
            WazeAppWidgetLog.d((new StringBuilder("Graph command handler called but state is =")).append(mWidgetState).toString());
            return;
        }
    }

    private static boolean isDataExpired()
    {
        return System.currentTimeMillis() - mStatusData.timeStamp() > WazeAppWidgetPreferences.AllowRefreshTimer();
    }

    private void loadState()
    {
        WazeAppWidgetLog.d("loadState ");
        SharedPreferences sharedpreferences = getApplicationContext().getSharedPreferences("WAZE WIDGET PREFS", 0);
        mWidgetState = sharedpreferences.getInt("State", mWidgetState);
        String s = sharedpreferences.getString("Destination", mStatusData.destination());
        int i = sharedpreferences.getInt("TimeToDestination", mStatusData.timeToDest());
        long l = sharedpreferences.getLong("TimeStamp", mStatusData.timeStamp());
        String s1 = sharedpreferences.getString("TimesArray", "");
        WazeAppWidgetLog.d((new StringBuilder("destination: ")).append(s).append(" timeToDest: ").append(i).toString());
        if (s1 != null && s1.length() > 0)
        {
            try
            {
                RoutingResponse routingresponse = new RoutingResponse(s1);
                RouteScoreType routescoretype = RouteScore.getScore(i, routingresponse.getAveragetTime());
                mStatusData.copy(new StatusData(s, i, routescoretype, routingresponse));
                mStatusData.setTimeStamp(l);
                WazeAppWidgetLog.d((new StringBuilder("Last loaded Routing Reposne: ")).append(routingresponse.toString()).append(" timestamp= ").append(l).toString());
            }
            catch (JSONException jsonexception) { }
        } else
        {
            mStatusData.copy(new StatusData(s, i, l));
        }
        if (mWidgetState == 2)
        {
            if (!isDataExpired())
            {
                WazeAppWidgetLog.d("loaded state: data is not expired");
            } else
            {
                WazeAppWidgetLog.d("loaded state: data is expired");
                setState(16, null);
            }
        } else
        {
            WazeAppWidgetLog.d((new StringBuilder("Last loaded state was: ")).append(mWidgetState).toString());
            mWidgetState = 2;
            setState(16, null);
        }
        WazeAppWidgetLog.d((new StringBuilder("Last loaded state: ")).append(mWidgetState).toString());
    }

    private void noDataCmdHandler()
    {
        WazeAppWidgetLog.d("NoData command handler");
        Intent intent = new Intent(getApplicationContext(), com/waze/widget/WazeAppWidgetNoDataActivity);
        intent.setFlags(0x18000000);
        getApplicationContext().startActivity(intent);
    }

    private void onRefreshingTimeout()
    {
        WazeAppWidgetLog.d("Refresh timeout. Reset state.");
        setState(0x200000, null);
    }

    private static void printDbg(String s, int i)
    {
        WazeAppWidgetLog.d((new StringBuilder("DEBUG PRINT. ")).append(s).append("(").append(mWidgetState).append("). ").append("Status: ").append(Integer.toString(i, 16)).append(". Current status data: ( ").append(mStatusData.destination()).append(" , ").append(mStatusData.timeToDest()).append(", ").append(mStatusData.score().name()).append(")").toString());
    }

    private void refreshCmdHandler(boolean flag)
    {
        WazeAppWidgetLog.d("Refresh command handler");
        if (flag)
        {
            setState(64, null);
            return;
        } else
        {
            setState(32, null);
            return;
        }
    }

    private void refreshTestCmdHandler()
    {
        WazeAppWidgetLog.d("RefreshTest command handler");
        if (isDataExpired())
        {
            setState(16, null);
        }
    }

    public static void requestRefresh(Context context)
    {
        Intent intent = new Intent(context, com/waze/widget/WazeAppWidgetService);
        intent.setAction("AppWidget Action Command Refresh");
        context.startService(intent);
    }

    private void saveState()
    {
        WazeAppWidgetLog.d("saveState ");
        android.content.SharedPreferences.Editor editor = getApplicationContext().getSharedPreferences("WAZE WIDGET PREFS", 0).edit();
        editor.putInt("State", mWidgetState);
        editor.putString("Destination", mStatusData.destination());
        editor.putInt("TimeToDestination", mStatusData.timeToDest());
        editor.putLong("TimeStamp", mStatusData.timeStamp());
        if (mStatusData.getRoutingRespnse() != null)
        {
            editor.putString("TimesArray", mStatusData.getRoutingRespnse().toString());
            WazeAppWidgetLog.d((new StringBuilder("Saving last Routing Reposne: ")).append(mStatusData.getRoutingRespnse().toString()).toString());
            WazeAppWidgetLog.d((new StringBuilder("Last saved state: ")).append(mWidgetState).append(" timestamp= ").append(mStatusData.timeStamp()).toString());
        }
        editor.commit();
    }

    public static void setState(int i, StatusData statusdata)
    {
        stateHandler(i, statusdata);
    }

    private static void startNoDataActivity()
    {
        WazeAppWidgetLog.d("Request to show NO DATA Activity");
        Context context = mInstance.getApplicationContext();
        Intent intent = new Intent(context, com/waze/widget/WazeAppWidgetNoDataActivity);
        intent.setFlags(0x18000000);
        PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x40000000);
        ((AlarmManager)context.getSystemService("alarm")).set(3, 300L + SystemClock.elapsedRealtime(), pendingintent);
    }

    private static void startRefresh()
    {
        if (mRefreshMonitor != null)
        {
            WazeAppWidgetLog.d("startRefresh - Refresh timer is active - cancelling");
            mRefreshMonitor.cancel();
        }
        mRefreshMonitor = new Timer();
        WazeAppWidgetLog.d("startRefresh timer");
        mRefreshMonitor.schedule(new _cls1Task(), 30000L);
        WazeAppWidgetProvider.setRefreshingState(mInstance.getApplicationContext());
        WazeAppWidgetManager.refreshHandler(mInstance.getApplicationContext());
    }

    private static void stateHandler(int i, StatusData statusdata)
    {
        boolean flag;
        flag = true;
        if (statusdata != null)
        {
            mStatusData.copy(statusdata);
        }
        mWidgetState;
        JVM INSTR tableswitch 0 5: default 56
    //                   0 57
    //                   1 86
    //                   2 120
    //                   3 222
    //                   4 249
    //                   5 249;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L6
_L1:
        return;
_L2:
        printDbg("STATE_NONE: ", i);
        if (i == 8)
        {
            mWidgetState = 4;
            startRefresh();
            return;
        } else
        {
            mWidgetState = 4;
            startRefresh();
            return;
        }
_L3:
        printDbg("STATE_NO_DATA: ", i);
        if (i == 32)
        {
            mWidgetState = 4;
            startRefresh();
        }
        if (i == 64)
        {
            mWidgetState = 5;
            startRefresh();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        printDbg("STATE_CURRENT_DATA_UPTODATE: ", i);
        if (i == 8)
        {
            WazeAppWidgetProvider.setUptodateState(mInstance.getApplicationContext(), mStatusData.destination(), mStatusData.timeToDest(), mStatusData.score());
        }
        if (i == 16)
        {
            mWidgetState = 3;
            if ((new Date()).getTime() - mStatusData.timeStamp() <= 0x6ddd00L)
            {
                flag = false;
            }
            WazeAppWidgetProvider.setNeedRefreshState(mInstance.getApplicationContext(), mStatusData.destination(), mStatusData.timeToDest(), flag);
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
        printDbg("STATE_CURRENT_DATA_NEED_REFRESH: ", i);
        if (i == 32 || i == 64)
        {
            mWidgetState = 4;
            startRefresh();
            return;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L6:
        printDbg("STATE_REFRESHING: ", i);
        if (i == flag)
        {
            mWidgetState = 2;
            WazeAppWidgetProvider.setUptodateState(mInstance.getApplicationContext(), mStatusData.destination(), mStatusData.timeToDest(), mStatusData.score());
            if (mInstance != null)
            {
                mInstance.saveState();
                return;
            }
        } else
        {
            if (i == 0x200000 || i == 0x100000 || i == 0x40000)
            {
                mWidgetState = ((flag) ? 1 : 0);
                WazeAppWidgetProvider.setNoDataState(mInstance.getApplicationContext(), "No Data");
                return;
            }
            if (testStatus(i, 0x80000) || testStatus(i, 0x20000))
            {
                if (mWidgetState == 5)
                {
                    MainActivity mainactivity = AppService.getMainActivity();
                    if (mainactivity == null || !mainactivity.IsRunning())
                    {
                        startNoDataActivity();
                    }
                }
                mWidgetState = ((flag) ? 1 : 0);
                WazeAppWidgetProvider.setNoDataState(mInstance.getApplicationContext(), mStatusData.destination());
                return;
            }
            if (i == 64)
            {
                mWidgetState = 5;
                startRefresh();
            }
            WazeAppWidgetLog.e((new StringBuilder("Illegal status for STATE_REFRESHING: ")).append(i).toString());
            return;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    public static void stopRefreshMonitor()
    {
        if (mRefreshMonitor != null)
        {
            WazeAppWidgetLog.d("stopRefreshMonitor - Refresh timer is active - cancelling");
            mRefreshMonitor.cancel();
            mRefreshMonitor = null;
        }
    }

    private static boolean testStatus(int i, int j)
    {
        return (i & j) > 0;
    }

    private void updateCmdHandler()
    {
        WazeAppWidgetProvider.setNoDataState(getApplicationContext(), "Home");
        WazeAppWidgetLog.d("Update command handler");
        final File file = new File("/sdcard/");
        if (file.exists() && file.canWrite())
        {
            WazeAppWidgetLog.d("SD Card is available. Setting state to the STATUS_NEW_WIDGET.");
            setState(8, null);
        } else
        if (mSDCardChecker == null)
        {
            mSDCardChecker = new Timer();
            TimerTask timertask = new TimerTask() {

                final WazeAppWidgetService this$0;
                private final File val$file;

                public void run()
                {
                    if (file.exists() && file.canWrite())
                    {
                        WazeAppWidgetLog.d("SD Card is available. Setting state to the STATUS_NEW_WIDGET. Cancelling the timer.");
                        WazeAppWidgetService.setState(8, null);
                        WazeAppWidgetService.mSDCardChecker.cancel();
                        WidgetManager.loadWazeConfig();
                        WazeAppWidgetService.mSDCardChecker = null;
                        return;
                    } else
                    {
                        WazeAppWidgetLog.w("SD Card is not available. Scheduling next check in 30 seconds");
                        WazeAppWidgetService.mSDCardChecker.schedule(this, 30000L);
                        return;
                    }
                }

            
            {
                this$0 = WazeAppWidgetService.this;
                file = file1;
                super();
            }
            };
            mSDCardChecker.schedule(timertask, 30000L);
            return;
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        WazeAppWidgetLog.d((new StringBuilder("Widget service instance is created: ")).append(this).toString());
        super.onCreate();
        mInstance = this;
        mApplicationContext = getApplicationContext();
        loadState();
    }

    public void onDestroy()
    {
        WazeAppWidgetLog.d((new StringBuilder("Widget service instance is destroyed: ")).append(this).toString());
        super.onDestroy();
    }

    public void onStart(Intent intent, int i)
    {
        super.onStart(intent, i);
        if (intent != null)
        {
            WazeAppWidgetLog.d((new StringBuilder("Widget service instance is started. Intent: ")).append(intent.getAction()).toString());
            String s = intent.getAction();
            SystemClock.sleep(100L);
            WidgetManager.init(this);
            if (s.equals("AppWidget Action Command Enable"))
            {
                enableCmdHandler();
            }
            if (s.equals("AppWidget Action Command Update"))
            {
                updateCmdHandler();
            }
            if (s.equals("AppWidget Action Command Refresh"))
            {
                OfflineStats.SendStats(this, "WIDGET_CLICK", new String[] {
                    "ACTION", "REFRESH"
                });
                refreshCmdHandler(false);
            }
            if (s.equals("AppWidget Action Command Refresh Info"))
            {
                OfflineStats.SendStats(this, "WIDGET_CLICK", new String[] {
                    "ACTION", "REFRESH_INFO"
                });
                WazeAppWidgetLog.d("APPWIDGET_ACTION_CMD_REFRESH_INFO command");
                refreshCmdHandler(true);
            }
            if (s.equals("AppWidget Action Command No Data"))
            {
                if (WidgetManager.hasHomeOrWork().booleanValue())
                {
                    refreshCmdHandler(true);
                } else
                {
                    noDataCmdHandler();
                }
            }
            if (s.equals("AppWidget Action Command Refresh Test"))
            {
                refreshTestCmdHandler();
            }
            if (s.equals("AppWidget Action Command Drive"))
            {
                OfflineStats.SendStats(this, "WIDGET_CLICK", new String[] {
                    "ACTION", "DRIVE"
                });
                driveCmdHandler();
            }
            if (s.equals("AppWidget Action Command Graph"))
            {
                OfflineStats.SendStats(this, "WIDGET_CLICK", new String[] {
                    "ACTION", "GRAPH"
                });
                graphCmdHandler();
            }
            s.equals("AppWidget Action Command None");
            if (s.equals("AppWidget Action Command Force Refresh"))
            {
                forceRefreshCmdHandler();
                return;
            }
        }
    }









}
