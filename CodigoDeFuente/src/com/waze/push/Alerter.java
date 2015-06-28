// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.location.LocationManager;
import android.media.RingtoneManager;
import android.net.Uri;
import com.waze.AppService;
import com.waze.FreeMapAppActivity;
import com.waze.Logger;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.strings.DisplayStrings;
import com.waze.utils.OfflineStats;
import java.util.Iterator;
import java.util.List;

public final class Alerter
{

    private static final int SIGNIFICANT_ACCURACY = 200;
    private static final long SIGNIFICANT_TIME = 0x493e0L;
    private static Alerter mInstance = null;
    private final Runnable mPickUpHandler = new Runnable() {

        final Alerter this$0;

        public void run()
        {
            Alerter.instance().showPickUpMessage();
        }

            
            {
                this$0 = Alerter.this;
                super();
            }
    };

    private Alerter()
    {
    }

    public static Alerter instance()
    {
        if (mInstance == null)
        {
            mInstance = new Alerter();
        }
        return mInstance;
    }

    private void notify(Context context, String s, String s1, String s2)
    {
        android.support.v4.app.NotificationCompat.Builder builder = new android.support.v4.app.NotificationCompat.Builder(context);
        builder.setSmallIcon(0x7f02028c);
        builder.setContentTitle("Waze");
        builder.setContentText(s);
        builder.setLargeIcon(BitmapFactory.decodeResource(context.getResources(), 0x7f02028b));
        builder.setAutoCancel(true);
        builder.setSound(RingtoneManager.getDefaultUri(2));
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            builder.setStyle((new android.support.v4.app.NotificationCompat.BigTextStyle()).bigText(s));
        }
        Intent intent = new Intent(context, com/waze/FreeMapAppActivity);
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        if (s1 != null)
        {
            intent.setData(Uri.parse((new StringBuilder("waze://")).append(s1).toString()));
        }
        intent.putExtra("PushClicked", s2);
        builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 0x10000000));
        ((NotificationManager)context.getSystemService("notification")).notify("Push Notifications", 256, builder.build());
    }

    protected static void onAlert(Context context, String s, String s1, String s2)
    {
        Logger.i_("Push Service", (new StringBuilder("Got new alert: ")).append(s).append(". Type: ").append(s2).toString());
        if (s != null)
        {
            Alerter alerter = instance();
            final String analyticsInfoValue;
            if (s2 == null)
            {
                analyticsInfoValue = "NONE";
            } else
            {
                analyticsInfoValue = s2;
            }
            if (NativeManager.IsAppStarted())
            {
                Logger.v_("Push Service", (new StringBuilder("Showing message for the alert: ")).append(s).toString());
                if (s1 != null)
                {
                    if (s1.startsWith("?a=pickup"))
                    {
                        alerter.notify(context, s, s1, analyticsInfoValue);
                        AppService.Post(alerter.mPickUpHandler);
                    } else
                    {
                        alerter.postAction(s1, s);
                    }
                    Analytics.log("PUSH_MESSAGE_WHILE_RUNNING", "TYPE", analyticsInfoValue);
                    return;
                }
            } else
            {
                OfflineStats.SendStats(context, "OFFLINE_PUSH_RECEIVED", new String[] {
                    "VAUE", analyticsInfoValue
                });
                alerter.notify(context, s, s1, analyticsInfoValue);
                NativeManager.registerOnAppStartedEvent(new RunnableExecutor() {

                    private final String val$analyticsInfoValue;

                    public void event()
                    {
                        Analytics.log("PUSH_MESSAGE_RECEIVED", "VAUE", analyticsInfoValue);
                    }

            
            {
                analyticsInfoValue = s;
                super();
            }
                });
                return;
            }
        }
    }

    protected static void onBadge(Context context, int i)
    {
    }

    private void postAction(final String actionUrl, final String alert)
    {
        NativeManager.Post(new Runnable() {

            final Alerter this$0;
            private final String val$actionUrl;
            private final String val$alert;

            public void run()
            {
                String s = "waze://";
                if (actionUrl != null)
                {
                    s = (new StringBuilder(String.valueOf(s))).append(actionUrl).append("&").toString();
                }
                String s1 = (new StringBuilder(String.valueOf(s))).append("popup_message=").append(alert).toString();
                NativeManager.getInstance().UrlHandler(s1);
            }

            
            {
                this$0 = Alerter.this;
                actionUrl = s;
                alert = s1;
                super();
            }
        });
    }

    private void showPickUpMessage()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        String s = nativemanager.getLanguageString(DisplayStrings.DS_POPUP_WHEN_RECEIVING_LOCATION_TITLE);
        String s1 = nativemanager.getLanguageString(DisplayStrings.DS_POPUP_WHEN_RECEIVING_LOCATION_BODY);
        String s2 = nativemanager.getLanguageString(DisplayStrings.DS_DRIVE);
        String s3 = nativemanager.getLanguageString(DisplayStrings.DS_LATER);
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final Alerter this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
                NativeManager nativemanager1 = NativeManager.getInstance();
                if (i == 1)
                {
                    NativeManager.Post(nativemanager1. new Runnable() {

                        final _cls3 this$1;
                        private final NativeManager val$nm;

                        public void run()
                        {
                            nm.UrlHandler("waze://?a=pickup");
                            nm.ClearNotifications();
                        }

            
            {
                this$1 = final__pcls3;
                nm = NativeManager.this;
                super();
            }
                    });
                    return;
                } else
                {
                    nativemanager1.SetPickUpLater(true);
                    return;
                }
            }

            
            {
                this$0 = Alerter.this;
                super();
            }
        };
        nativemanager.SetPickUpLater(false);
        MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(s, s1, true, onclicklistener, s2, s3, -1);
    }

    public void clear(NotificationManager notificationmanager)
    {
        Logger.d_("Push Service", "Clearing current notifications");
        notificationmanager.cancel("Push Notifications", 256);
    }

    public Location getBestLocation(Context context)
    {
        LocationManager locationmanager = (LocationManager)context.getSystemService("location");
        List list = locationmanager.getAllProviders();
        Location location = null;
        Iterator iterator = list.iterator();
        do
        {
            Location location1;
            do
            {
                if (!iterator.hasNext())
                {
                    return location;
                }
                location1 = locationmanager.getLastKnownLocation((String)iterator.next());
            } while (!isBetterLocation(location1, location));
            location = location1;
        } while (true);
    }

    protected boolean isBetterLocation(Location location, Location location1)
    {
        if (location1 == null)
        {
            return true;
        }
        if (location == null)
        {
            return false;
        }
        long l = location.getTime() - location1.getTime();
        boolean flag;
        boolean flag1;
        boolean flag2;
        if (l > 0x493e0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (l < 0xfffffffffffb6c20L)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (l > 0L)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag)
        {
            return true;
        }
        if (flag1)
        {
            return false;
        }
        int i = (int)(location.getAccuracy() - location1.getAccuracy());
        if (i <= 0);
        boolean flag3;
        boolean flag4;
        if (i < 0)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (i > 200)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        if (flag3)
        {
            return true;
        }
        return flag2 && !flag4;
    }


}
