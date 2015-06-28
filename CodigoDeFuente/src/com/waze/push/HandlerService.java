// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import com.waze.Logger;
import com.waze.PushCommands;

// Referenced classes of package com.waze.push:
//            Alerter, Registrar

public class HandlerService extends IntentService
{

    private static final Object LOCK = com/waze/push/HandlerService;
    private static final String NAME = "Push Handler Service";
    private static final String WAKELOCK_KEY = "Hanlder service wakelock";
    private static android.os.PowerManager.WakeLock mWakeLock;

    public HandlerService()
    {
        super("Push Handler Service");
    }

    static void handleIntent(Context context, Intent intent)
    {
        synchronized (LOCK)
        {
            if (mWakeLock == null)
            {
                mWakeLock = ((PowerManager)context.getSystemService("power")).newWakeLock(1, "Hanlder service wakelock");
            }
        }
        mWakeLock.acquire();
        intent.setClass(context, com/waze/push/HandlerService);
        context.startService(intent);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void handleMessage(Context context, Intent intent)
    {
        String s = intent.getExtras().getString("alert");
        String s1 = intent.getExtras().getString("badge");
        int i;
        String s2;
        if (s1 == null)
        {
            i = -1;
        } else
        {
            i = Integer.valueOf(s1).intValue();
        }
        s2 = intent.getExtras().getString("constructionInstructions");
        if (s2 != null && !s2.isEmpty())
        {
            PushCommands.ParseConstructionInstructionCommand(context, s2);
        }
        Logger.d_("Push Service", (new StringBuilder("Badge: ")).append(i).toString());
        if (s != null)
        {
            Alerter.onAlert(context, s, intent.getExtras().getString("WazeUrl"), intent.getExtras().getString("type"));
        }
        if (i != -1)
        {
            Alerter.onBadge(context, i);
        }
    }

    private void handleRegistration(Context context, Intent intent)
    {
        String s = intent.getStringExtra("registration_id");
        String s1 = intent.getStringExtra("error");
        String s2 = intent.getStringExtra("unregistered");
        Logger.d_("Push Service", (new StringBuilder("handleRegistration: registrationId = ")).append(s).append(", error = ").append(s1).append(", unregistered = ").append(s2).toString());
        if (s != null)
        {
            Registrar.onRegistered(context, s);
        } else
        if (s2 != null)
        {
            Registrar.onUnRegistered(context, s);
            return;
        }
    }

    public final void onHandleIntent(Intent intent)
    {
        Context context;
        String s;
        context = getApplicationContext();
        s = intent.getAction();
        if (!s.equals("com.google.android.c2dm.intent.REGISTRATION")) goto _L2; else goto _L1
_L1:
        Logger.d_("Push Service", "GCM Registration message");
        handleRegistration(context, intent);
_L10:
        Object obj1 = LOCK;
        obj1;
        JVM INSTR monitorenter ;
        if (mWakeLock == null) goto _L4; else goto _L3
_L3:
        mWakeLock.release();
_L8:
        return;
_L2:
        if (s.equals("com.google.android.c2dm.intent.RECEIVE"))
        {
            Logger.d_("Push Service", "Got GCM push message !!!");
            handleMessage(context, intent);
            continue; /* Loop/switch isn't completed */
        }
          goto _L5
        Exception exception;
        exception;
        Object obj = LOCK;
        obj;
        JVM INSTR monitorenter ;
        if (mWakeLock == null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        mWakeLock.release();
_L7:
        throw exception;
_L5:
        if (s.equals("com.google.android.gcm.intent.RETRY"))
        {
            Logger.d_("Push Service", "GCM Retry message");
        }
        continue; /* Loop/switch isn't completed */
        Logger.e_("Push Service", "Wakelock reference is null");
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
_L4:
        Logger.e_("Push Service", "Wakelock reference is null");
          goto _L8
        Exception exception2;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        if (true) goto _L10; else goto _L9
_L9:
    }

}
