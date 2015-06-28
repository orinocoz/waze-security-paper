// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import com.waze.config.WazeLang;
import com.waze.utils.OfflineStats;
import com.waze.widget.routing.RouteScoreType;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetService, WazeAppWidgetLog, WazeAppWidgetPreferences

public class WazeAppWidgetProvider extends AppWidgetProvider
{

    private static int $SWITCH_TABLE$com$waze$widget$routing$RouteScoreType[];
    public static Context _CONTEXT = null;
    private static boolean mIsEnabled;

    static int[] $SWITCH_TABLE$com$waze$widget$routing$RouteScoreType()
    {
        int ai[] = $SWITCH_TABLE$com$waze$widget$routing$RouteScoreType;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[RouteScoreType.values().length];
        try
        {
            ai1[RouteScoreType.NONE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[RouteScoreType.ROUTE_BAD.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[RouteScoreType.ROUTE_GOOD.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[RouteScoreType.ROUTE_OK.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SWITCH_TABLE$com$waze$widget$routing$RouteScoreType = ai1;
        return ai1;
    }

    public WazeAppWidgetProvider()
    {
    }

    private static CharSequence formatDestination(Context context, String s)
    {
        return (new StringBuilder("@ ")).append(WazeLang.getLang(s)).append(" ").append(WazeLang.getLang("in:")).toString();
    }

    private static CharSequence formatTime(Context context, int i)
    {
        int k;
        String s;
        SpannableStringBuilder spannablestringbuilder;
        String s1;
label0:
        {
            int j = i / 60;
            k = i - j * 60;
            s = "";
            spannablestringbuilder = new SpannableStringBuilder();
            if (j == 0)
            {
                s1 = null;
                if (i != 0)
                {
                    break label0;
                }
            }
            s1 = String.valueOf(j);
            s = (new StringBuilder(String.valueOf(s1))).append(" ").append("h.").append("   ").toString();
        }
        String s2 = String.valueOf(k);
        if (i == 0)
        {
            s2 = (new StringBuilder(String.valueOf(s2))).append("0").toString();
        }
        String s3 = (new StringBuilder(String.valueOf(s2))).append(" ").append("min.").toString();
        spannablestringbuilder.append((new StringBuilder(String.valueOf(s))).append(s3).toString());
        if (s.length() > 0)
        {
            TextAppearanceSpan textappearancespan = new TextAppearanceSpan(context, 0x7f060009);
            TextAppearanceSpan textappearancespan1 = new TextAppearanceSpan(context, 0x7f06000a);
            int l = s1.length();
            spannablestringbuilder.setSpan(textappearancespan, 0, l, 17);
            spannablestringbuilder.setSpan(textappearancespan1, l, s.length(), 33);
        }
        TextAppearanceSpan textappearancespan2 = new TextAppearanceSpan(context, 0x7f060009);
        TextAppearanceSpan textappearancespan3 = new TextAppearanceSpan(context, 0x7f06000a);
        int i1 = s.length();
        int j1 = i1 + s2.length();
        spannablestringbuilder.setSpan(textappearancespan2, i1, j1, 33);
        spannablestringbuilder.setSpan(textappearancespan3, j1, j1 + " ".length() + "min.".length(), 33);
        return spannablestringbuilder;
    }

    public static PendingIntent getControlIntent(Context context, int i, String s)
    {
        Intent intent = new Intent(context, com/waze/widget/WazeAppWidgetService);
        intent.setAction(s);
        intent.putExtra("appWidgetId", i);
        intent.setData(Uri.withAppendedPath(Uri.parse((new StringBuilder("WazeAppWidget://widget/id/#")).append(s).append(i).toString()), String.valueOf(i)));
        return PendingIntent.getService(context, 0, intent, 0x8000000);
    }

    public static PendingIntent getControlIntent(Context context, String s)
    {
        Intent intent = new Intent(context, com/waze/widget/WazeAppWidgetService);
        intent.setAction(s);
        return PendingIntent.getService(context, 0, intent, 0x8000000);
    }

    public static boolean isWidgetEnabled(Context context)
    {
label0:
        {
            AppWidgetManager appwidgetmanager;
            ComponentName componentname;
label1:
            {
                if (mIsEnabled)
                {
                    break label0;
                }
                if (false)
                {
                    appwidgetmanager = null;
                    componentname = null;
                    if (false)
                    {
                        break label1;
                    }
                }
                componentname = new ComponentName(context, com/waze/widget/WazeAppWidgetProvider);
                appwidgetmanager = AppWidgetManager.getInstance(context);
            }
            boolean flag;
            if (appwidgetmanager.getAppWidgetIds(componentname) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mIsEnabled = flag;
        }
        return mIsEnabled;
    }

    private static void setActionIntent(Context context, RemoteViews remoteviews, String s)
    {
        remoteviews.setOnClickPendingIntent(0x7f0901a5, getControlIntent(context, s));
    }

    private static void setAlarm(Context context, boolean flag)
    {
        PendingIntent pendingintent = getControlIntent(context, "AppWidget Action Command Refresh Test");
        AlarmManager alarmmanager = (AlarmManager)context.getSystemService("alarm");
        if (flag)
        {
            WazeAppWidgetLog.d("Disable Alarm");
            alarmmanager.cancel(pendingintent);
            return;
        } else
        {
            WazeAppWidgetLog.d((new StringBuilder("Setting Alarm for ")).append(WazeAppWidgetPreferences.AllowRefreshTimer() / 1000L).append(" seconds").toString());
            alarmmanager.cancel(pendingintent);
            alarmmanager.setRepeating(3, SystemClock.elapsedRealtime(), WazeAppWidgetPreferences.AllowRefreshTimer(), pendingintent);
            return;
        }
    }

    public static void setIsWidgetEnabled(boolean flag)
    {
        mIsEnabled = flag;
    }

    public static void setNeedRefreshState(Context context, String s, int i, boolean flag)
    {
        WazeAppWidgetLog.d((new StringBuilder("setNeedRefreshState isOld=")).append(flag).toString());
        RemoteViews remoteviews = new RemoteViews(context.getPackageName(), 0x7f03001c);
        AppWidgetManager appwidgetmanager = AppWidgetManager.getInstance(context);
        Resources resources = context.getResources();
        remoteviews.setViewVisibility(0x7f0901a1, 4);
        remoteviews.setViewVisibility(0x7f0901a0, 0);
        if (flag)
        {
            remoteviews.setImageViewResource(0x7f0901a0, 0x7f02045f);
        }
        remoteviews.setTextColor(0x7f0901a7, resources.getColor(0x7f080022));
        remoteviews.setTextViewText(0x7f0901a7, WazeLang.getLang("Refresh"));
        remoteviews.setImageViewResource(0x7f0901a6, 0x7f020458);
        remoteviews.setTextViewText(0x7f0901a3, formatDestination(context, s));
        remoteviews.setTextViewText(0x7f0901a4, formatTime(context, i));
        setRootIntent(context, remoteviews, "AppWidget Action Command Refresh");
        setActionIntent(context, remoteviews, "AppWidget Action Command Refresh");
        if (flag)
        {
            setStatusIntent(context, remoteviews, "AppWidget Action Command Refresh");
        } else
        {
            setStatusIntent(context, remoteviews, "AppWidget Action Command Graph");
        }
        appwidgetmanager.updateAppWidget(new ComponentName(context, com/waze/widget/WazeAppWidgetProvider), remoteviews);
        setAlarm(context, true);
    }

    public static void setNoDataState(Context context, String s)
    {
        WazeAppWidgetLog.d("setNoDataState");
        RemoteViews remoteviews = new RemoteViews(context.getPackageName(), 0x7f03001c);
        AppWidgetManager appwidgetmanager = AppWidgetManager.getInstance(context);
        Resources resources = context.getResources();
        remoteviews.setViewVisibility(0x7f0901a1, 4);
        remoteviews.setViewVisibility(0x7f0901a0, 0);
        remoteviews.setImageViewResource(0x7f0901a0, 0x7f02045f);
        remoteviews.setTextColor(0x7f0901a7, resources.getColor(0x7f080022));
        remoteviews.setTextViewText(0x7f0901a7, WazeLang.getLang("Refresh"));
        remoteviews.setImageViewResource(0x7f0901a6, 0x7f020458);
        remoteviews.setTextViewText(0x7f0901a3, "No Data");
        remoteviews.setTextViewText(0x7f0901a4, formatTime(context, 0));
        setRootIntent(context, remoteviews, "AppWidget Action Command Refresh Info");
        setStatusIntent(context, remoteviews, "AppWidget Action Command Refresh Info");
        setActionIntent(context, remoteviews, "AppWidget Action Command Refresh Info");
        setAlarm(context, false);
        appwidgetmanager.updateAppWidget(new ComponentName(context, com/waze/widget/WazeAppWidgetProvider), remoteviews);
    }

    public static void setRefreshingState(Context context)
    {
        WazeAppWidgetLog.d("setRefreshingState");
        RemoteViews remoteviews = new RemoteViews(context.getPackageName(), 0x7f03001c);
        AppWidgetManager appwidgetmanager = AppWidgetManager.getInstance(context);
        Resources resources = context.getResources();
        remoteviews.setViewVisibility(0x7f0901a1, 0);
        remoteviews.setViewVisibility(0x7f0901a0, 0);
        remoteviews.setImageViewResource(0x7f0901a0, 0x7f020465);
        remoteviews.setTextColor(0x7f0901a7, resources.getColor(0x7f080027));
        remoteviews.setImageViewResource(0x7f0901a6, 0x7f020454);
        remoteviews.setTextViewText(0x7f0901a7, (new StringBuilder(String.valueOf(WazeLang.getLang("Drive")))).append("!").toString());
        remoteviews.setTextViewText(0x7f0901a3, WazeLang.getLang("Please wait..."));
        remoteviews.setTextViewText(0x7f0901a4, formatTime(context, 0));
        setAlarm(context, false);
        appwidgetmanager.updateAppWidget(new ComponentName(context, com/waze/widget/WazeAppWidgetProvider), remoteviews);
    }

    private static void setRootIntent(Context context, RemoteViews remoteviews, String s)
    {
        remoteviews.setOnClickPendingIntent(0x7f09019e, getControlIntent(context, s));
    }

    private static void setStatusIntent(Context context, RemoteViews remoteviews, String s)
    {
        remoteviews.setOnClickPendingIntent(0x7f09019f, getControlIntent(context, s));
    }

    public static void setUptodateState(Context context, String s, int i, RouteScoreType routescoretype)
    {
        RemoteViews remoteviews;
        AppWidgetManager appwidgetmanager;
        Resources resources;
        WazeAppWidgetLog.d((new StringBuilder("setUptodateState ")).append(routescoretype.name()).toString());
        remoteviews = new RemoteViews(context.getPackageName(), 0x7f03001c);
        appwidgetmanager = AppWidgetManager.getInstance(context);
        resources = context.getResources();
        remoteviews.setViewVisibility(0x7f0901a1, 4);
        remoteviews.setViewVisibility(0x7f0901a0, 0);
        $SWITCH_TABLE$com$waze$widget$routing$RouteScoreType()[routescoretype.ordinal()];
        JVM INSTR tableswitch 1 4: default 108
    //                   1 286
    //                   2 244
    //                   3 272
    //                   4 258;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        remoteviews.setTextViewText(0x7f0901a7, (new StringBuilder(String.valueOf(WazeLang.getLang("Drive")))).append("!").toString());
        remoteviews.setTextColor(0x7f0901a7, resources.getColor(0x7f080022));
        remoteviews.setImageViewResource(0x7f0901a6, 0x7f020455);
        remoteviews.setTextViewText(0x7f0901a3, formatDestination(context, s));
        remoteviews.setTextViewText(0x7f0901a4, formatTime(context, i));
        setRootIntent(context, remoteviews, "AppWidget Action Command None");
        setActionIntent(context, remoteviews, "AppWidget Action Command Drive");
        setStatusIntent(context, remoteviews, "AppWidget Action Command Graph");
        setAlarm(context, false);
        appwidgetmanager.updateAppWidget(new ComponentName(context, com/waze/widget/WazeAppWidgetProvider), remoteviews);
        return;
_L3:
        remoteviews.setImageViewResource(0x7f0901a0, 0x7f020462);
        continue; /* Loop/switch isn't completed */
_L5:
        remoteviews.setImageViewResource(0x7f0901a0, 0x7f02045e);
        continue; /* Loop/switch isn't completed */
_L4:
        remoteviews.setImageViewResource(0x7f0901a0, 0x7f020461);
        continue; /* Loop/switch isn't completed */
_L2:
        remoteviews.setImageViewResource(0x7f0901a0, 0x7f02045f);
        if (true) goto _L1; else goto _L6
_L6:
    }

    static void updateCallbacks(Context context)
    {
        RemoteViews remoteviews = new RemoteViews(context.getPackageName(), 0x7f03001c);
        AppWidgetManager appwidgetmanager = AppWidgetManager.getInstance(context);
        setRootIntent(context, remoteviews, "AppWidget Action Command Refresh");
        setActionIntent(context, remoteviews, "AppWidget Action Command Drive");
        appwidgetmanager.updateAppWidget(new ComponentName(context, com/waze/widget/WazeAppWidgetProvider), remoteviews);
    }

    public void onDisabled(Context context)
    {
        super.onDisabled(context);
        WazeAppWidgetLog.d("ON DISABLE");
        context.stopService(new Intent(context, com/waze/widget/WazeAppWidgetService));
        setAlarm(context, true);
        setIsWidgetEnabled(false);
    }

    public void onEnabled(Context context)
    {
        super.onEnabled(context);
        WazeAppWidgetLog.d("ON ENABLE");
        OfflineStats.SendStats(context, "WIDGET_INSTALL", null);
        Intent intent = new Intent(context, com/waze/widget/WazeAppWidgetService);
        intent.setAction("AppWidget Action Command Enable");
        context.startService(intent);
        setAlarm(context, false);
        setIsWidgetEnabled(true);
    }

    public void onUpdate(Context context, AppWidgetManager appwidgetmanager, int ai[])
    {
        super.onUpdate(context, appwidgetmanager, ai);
        Intent intent = new Intent(context, com/waze/widget/WazeAppWidgetService);
        intent.setAction("AppWidget Action Command Update");
        context.startService(intent);
    }

}
