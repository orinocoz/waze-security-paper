// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.waze.utils.OfflineStats;

// Referenced classes of package com.waze:
//            FreeMapAppActivity

public class ActionIntent extends BroadcastReceiver
{

    public ActionIntent()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        String s;
        Intent intent1;
        try
        {
            ((NotificationManager)context.getSystemService("notification")).cancel(2);
            context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            if (intent.getData() == null)
            {
                break MISSING_BLOCK_LABEL_175;
            }
            s = intent.getStringExtra("QuestionID");
            String s1 = intent.getStringExtra("QuestionType");
            String s2 = intent.getStringExtra("Action");
            String as[] = new String[2];
            as[0] = "PUSH_TYPE|ID|ACTION";
            as[1] = (new StringBuilder(String.valueOf(s1))).append("|").append(s).append("|").append(s2).toString();
            OfflineStats.SendStats(context, "INTERNAL_PUSH_CLICKED", as);
            intent1 = new Intent(context, com/waze/FreeMapAppActivity);
            intent1.setData(intent.getData());
        }
        catch (Throwable throwable)
        {
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        if (!s.isEmpty())
        {
            intent1.putExtra("QuestionID", s);
        }
        intent1.setFlags(0x10000000);
        context.startActivity(intent1);
    }
}
