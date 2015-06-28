// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.location.ActivityRecognitionClient;
import com.waze.messages.QuestionData;
import com.waze.utils.OfflineStats;

// Referenced classes of package com.waze:
//            FreeMapAppActivity, ActionIntent, ActivityRecognitionService

public class GeoFencingService extends Service
    implements com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks, com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener
{

    private static boolean IsInitialized = false;
    private static boolean bIsInternalStop = false;
    private static boolean bIsStop = false;
    private static PendingIntent callbackIntent;
    private static ActivityRecognitionClient mActivityRecognitionClient = null;
    private static Handler mHandler = new Handler();
    private static GeoFencingService mInstance = null;
    private static QuestionData mQuestion = null;

    public GeoFencingService()
    {
    }

    public static void CreatePushMessage()
    {
        if (mInstance != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String as[] = new String[2];
        as[0] = "TIME";
        as[1] = Long.toString(System.currentTimeMillis());
        OfflineStats.SendStats(mInstance.getApplicationContext(), "START_WALKING", as);
        OfflineStats.SendAdsStats(mInstance.getApplicationContext(), "ADS_OFFLINE_ARRIVED");
        mQuestion = QuestionData.GetQuestionData(mInstance.getApplicationContext());
        mQuestion.AnswerType;
        JVM INSTR tableswitch 0 4: default 100
    //                   0 126
    //                   1 132
    //                   2 138
    //                   3 144
    //                   4 150;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        String s = "UNKNOWN";
_L10:
        SetParking();
        if (mQuestion.AnswerType == 4)
        {
            QuestionData.ResetQuestionData(mInstance.getApplicationContext());
            return;
        }
        break; /* Loop/switch isn't completed */
_L4:
        s = "UNKNOWN";
        continue; /* Loop/switch isn't completed */
_L5:
        s = "NONE";
        continue; /* Loop/switch isn't completed */
_L6:
        s = "ALERT";
        continue; /* Loop/switch isn't completed */
_L7:
        s = "ANSWER";
        continue; /* Loop/switch isn't completed */
_L8:
        s = "PARKING";
        if (true) goto _L10; else goto _L9
_L9:
        if (mQuestion.Text == null || mQuestion.Text.isEmpty()) goto _L1; else goto _L11
_L11:
        String as1[] = new String[2];
        as1[0] = "PUSH_TYPE|ID";
        as1[1] = (new StringBuilder(String.valueOf(s))).append("|").append(mQuestion.QuestionID).toString();
        OfflineStats.SendStats(mInstance.getApplicationContext(), "INTERNAL_PUSH_RECEIVED", as1);
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            Intent intent = new Intent(mInstance.getApplicationContext(), com/waze/FreeMapAppActivity);
            intent.setData(Uri.parse(mQuestion.ActionText1));
            PendingIntent pendingintent = PendingIntent.getActivity(mInstance.getApplicationContext(), 0, intent, 0x10000000);
            Intent intent1 = new Intent(mInstance.getApplicationContext(), com/waze/ActionIntent);
            Uri uri = Uri.parse(mQuestion.ActionText1);
            intent1.putExtra("QuestionID", mQuestion.QuestionID);
            intent1.putExtra("QuestionType", s);
            intent1.putExtra("Action", mQuestion.ActionText1);
            intent1.setData(uri);
            PendingIntent pendingintent1 = PendingIntent.getBroadcast(mInstance.getApplicationContext(), 1, intent1, 0x10000000);
            Intent intent2 = new Intent(mInstance.getApplicationContext(), com/waze/ActionIntent);
            intent2.setData(Uri.parse(mQuestion.ActionText2));
            intent2.putExtra("QuestionID", mQuestion.QuestionID);
            intent1.putExtra("QuestionType", s);
            intent1.putExtra("Action", mQuestion.ActionText2);
            PendingIntent pendingintent2 = PendingIntent.getBroadcast(mInstance.getApplicationContext(), 1, intent2, 0x10000000);
            android.app.Notification.Builder builder = new android.app.Notification.Builder(mInstance.getApplicationContext());
            builder.setContentIntent(pendingintent);
            builder.setSmallIcon(0x7f020288);
            builder.setContentTitle("Waze");
            builder.setContentText(mQuestion.Text);
            builder.setPriority(2);
            builder.setAutoCancel(true);
            builder.setDefaults(7);
            builder.addAction(0x7f02046c, mQuestion.SubText2, pendingintent2);
            builder.addAction(0x7f02042f, mQuestion.SubText1, pendingintent1);
            Notification notification = builder.build();
            notification.flags = 0x11 | notification.flags;
            notification.when = System.currentTimeMillis();
            notification.ledARGB = 0xff00ffff;
            notification.ledOnMS = 15000;
            notification.ledOffMS = 15000;
            ((NotificationManager)mInstance.getApplicationContext().getSystemService("notification")).notify(2, notification);
            QuestionData.ResetQuestionData(mInstance.getApplicationContext());
            return;
        } else
        {
            Intent intent3 = new Intent(mInstance.getApplicationContext(), com/waze/FreeMapAppActivity);
            intent3.setAction("android.intent.action.MAIN");
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent3.setData(Uri.parse(mQuestion.ActionText1));
            PendingIntent pendingintent3 = PendingIntent.getActivity(mInstance.getApplicationContext(), 0, intent3, 0x10000000);
            Notification notification1 = createNotification();
            notification1.setLatestEventInfo(mInstance.getApplicationContext(), "Waze", mQuestion.Text, pendingintent3);
            notification1.flags = 0x22 | notification1.flags;
            ((NotificationManager)mInstance.getApplicationContext().getSystemService("notification")).notify(2, notification1);
            QuestionData.ResetQuestionData(mInstance.getApplicationContext());
            return;
        }
    }

    public static boolean IsRunning()
    {
        return mInstance != null;
    }

    public static void SetParking()
    {
        if (mInstance != null)
        {
            Location location = ((LocationManager)mInstance.getSystemService("location")).getLastKnownLocation("gps");
            double ad[] = new double[2];
            if (location != null && 0x493e0L + location.getTime() > System.currentTimeMillis())
            {
                ad[0] = location.getLatitude();
                ad[1] = location.getLongitude();
                String s = Double.toString(ad[1]);
                String s1 = Double.toString(ad[0]);
                String as[] = new String[2];
                as[0] = "LON|LAT|TIME";
                as[1] = (new StringBuilder(String.valueOf(s))).append("|").append(s1).append("|").append(System.currentTimeMillis()).toString();
                OfflineStats.SendStats(mInstance.getApplicationContext(), "SET_PARKING", as);
                QuestionData.SetParking(mInstance.getApplicationContext(), ad[1], ad[0]);
            }
        }
    }

    private void StopServices(Context context)
    {
        stopActivityRecognitionConnection();
        if (!bIsInternalStop)
        {
            PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, new Intent("com.android.GEO_FENCING"), 0);
            ((LocationManager)context.getSystemService("location")).removeProximityAlert(pendingintent);
        }
    }

    private static Notification createNotification()
    {
        Notification notification = new Notification();
        notification.defaults = 1 | notification.defaults;
        notification.icon = 0x7f020288;
        notification.when = System.currentTimeMillis();
        notification.flags = 0x10 | notification.flags;
        notification.flags = 1 | notification.flags;
        notification.defaults = 2 | notification.defaults;
        notification.defaults = 4 | notification.defaults;
        notification.ledARGB = 0xff00ffff;
        notification.ledOnMS = 15000;
        notification.ledOffMS = 15000;
        return notification;
    }

    public static void start(Context context)
    {
        if (!IsInitialized)
        {
            context.startService(new Intent(context, com/waze/GeoFencingService));
            return;
        } else
        {
            bIsStop = true;
            return;
        }
    }

    private void startActivityRecognitionConnection()
    {
        if (mActivityRecognitionClient == null)
        {
            mActivityRecognitionClient = new ActivityRecognitionClient(getApplicationContext(), this, this);
            mActivityRecognitionClient.connect();
        }
    }

    public static void stop(boolean flag)
    {
        if (mInstance != null)
        {
            QuestionData.ResetQuestionData(mInstance.getApplicationContext());
            mInstance.stopSelf();
        }
        bIsInternalStop = flag;
    }

    private void stopActivityRecognitionConnection()
    {
        try
        {
            mActivityRecognitionClient.removeActivityUpdates(callbackIntent);
            if (mActivityRecognitionClient.isConnected())
            {
                mActivityRecognitionClient.disconnect();
            }
            bIsInternalStop = false;
            bIsStop = false;
            IsInitialized = false;
            mActivityRecognitionClient = null;
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            bIsStop = true;
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onConnected(Bundle bundle)
    {
        Intent intent = new Intent(this, com/waze/ActivityRecognitionService);
        callbackIntent = PendingIntent.getService(getApplicationContext(), 0, intent, 0x8000000);
        mActivityRecognitionClient.requestActivityUpdates(0L, callbackIntent);
    }

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        stop(false);
    }

    public void onCreate()
    {
        super.onCreate();
        mInstance = this;
        startActivityRecognitionConnection();
        bIsInternalStop = false;
        IsInitialized = true;
        bIsStop = true;
        mHandler.postDelayed(new Runnable() {

            final GeoFencingService this$0;

            public void run()
            {
                if (GeoFencingService.bIsStop)
                {
                    GeoFencingService.stop(false);
                }
            }

            
            {
                this$0 = GeoFencingService.this;
                super();
            }
        }, 0x927c0L);
    }

    public void onDestroy()
    {
        StopServices(getApplicationContext());
        if (!bIsStop)
        {
            mInstance = null;
            IsInitialized = false;
        }
        super.onDestroy();
    }

    public void onDisconnected()
    {
    }


}
