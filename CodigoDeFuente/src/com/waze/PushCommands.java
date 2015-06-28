// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.net.Uri;
import com.waze.messages.QuestionData;
import com.waze.push.Alerter;

// Referenced classes of package com.waze:
//            FreeMapAppActivity, ActionIntent, OfflineNativeManager

public class PushCommands
{

    public PushCommands()
    {
    }

    public static void CreatePush(Context context, QuestionData questiondata)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16 && questiondata.ActionText1 != null && !questiondata.ActionText1.isEmpty() && questiondata.ActionText2 != null && !questiondata.ActionText2.isEmpty())
        {
            Intent intent1 = new Intent(context, com/waze/FreeMapAppActivity);
            intent1.setData(Uri.parse(questiondata.ActionText1));
            PendingIntent pendingintent1 = PendingIntent.getActivity(context, 0, intent1, 0x10000000);
            Intent intent2 = new Intent(context, com/waze/ActionIntent);
            Uri uri = Uri.parse(questiondata.ActionText1);
            intent2.putExtra("QuestionID", questiondata.QuestionID);
            intent2.putExtra("QuestionType", "ALERT");
            intent2.putExtra("Action", questiondata.ActionText1);
            intent2.setData(uri);
            PendingIntent pendingintent2 = PendingIntent.getBroadcast(context, 1, intent2, 0x10000000);
            Intent intent3 = new Intent(context, com/waze/ActionIntent);
            intent3.setData(Uri.parse(questiondata.ActionText2));
            intent3.putExtra("QuestionID", questiondata.QuestionID);
            intent2.putExtra("QuestionType", "ALERT");
            intent2.putExtra("Action", questiondata.ActionText2);
            PendingIntent pendingintent3 = PendingIntent.getBroadcast(context, 1, intent3, 0x10000000);
            android.app.Notification.Builder builder = new android.app.Notification.Builder(context);
            builder.setContentIntent(pendingintent1);
            builder.setSmallIcon(0x7f020288);
            builder.setContentTitle("Waze");
            builder.setContentText(questiondata.Text);
            builder.setPriority(2);
            builder.setAutoCancel(true);
            builder.setDefaults(7);
            builder.addAction(0x7f02046c, questiondata.SubText2, pendingintent3);
            builder.addAction(0x7f02042f, questiondata.SubText1, pendingintent2);
            Notification notification1 = builder.build();
            notification1.flags = 0x11 | notification1.flags;
            notification1.when = System.currentTimeMillis();
            notification1.ledARGB = 0xff00ffff;
            notification1.ledOnMS = 15000;
            notification1.ledOffMS = 15000;
            ((NotificationManager)context.getSystemService("notification")).notify(2, notification1);
            return;
        } else
        {
            Intent intent = new Intent(context, com/waze/FreeMapAppActivity);
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setData(Uri.parse(questiondata.defaultAction));
            PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x10000000);
            Notification notification = createNotification();
            notification.setLatestEventInfo(context, "Waze", questiondata.Text, pendingintent);
            notification.flags = 0x12 | notification.flags;
            ((NotificationManager)context.getSystemService("notification")).notify(2, notification);
            return;
        }
    }

    public static void ParseConstructionInstructionCommand(Context context, String s)
    {
        Location location = Alerter.instance().getBestLocation(context);
        if (location != null)
        {
            QuestionData questiondata = OfflineNativeManager.getInstance().HandleCommandForPush(s, 0xf4240 * (int)location.getLongitude(), 0xf4240 * (int)location.getLatitude());
            if (questiondata != null)
            {
                CreatePush(context, questiondata);
            }
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
}
