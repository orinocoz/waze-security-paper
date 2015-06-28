// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze:
//            AppService

public class StandbyManager extends BroadcastReceiver
{

    private static StandbyManager mInstance = null;
    private Context mContext;

    private StandbyManager()
    {
    }

    public static StandbyManager start(Context context)
    {
        if (mInstance == null)
        {
            mInstance = new StandbyManager();
            mInstance.mContext = context;
        }
        IntentFilter intentfilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(mInstance, intentfilter);
        return mInstance;
    }

    public void onReceive(Context context, Intent intent)
    {
        final boolean screenOn = true;
        if (AppService.IsAppRunning() && intent != null)
        {
            String s = intent.getAction();
            byte byte0 = -1;
            Log.w("WAZE", (new StringBuilder("Screen broadcast receiver got action: ")).append(s).toString());
            if ("android.intent.action.SCREEN_ON".equals(s))
            {
                byte0 = 1;
            }
            if ("android.intent.action.SCREEN_OFF".equals(s))
            {
                byte0 = 0;
            }
            if (byte0 >= 0)
            {
                if (byte0 != screenOn)
                {
                    screenOn = false;
                }
                AppService.Post(new Runnable() {

                    final StandbyManager this$0;
                    private final boolean val$screenOn;

                    public void run()
                    {
                        ActivityBase.setScreenState(screenOn);
                    }

            
            {
                this$0 = StandbyManager.this;
                screenOn = flag;
                super();
            }
                });
            }
        }
    }

    public void stop()
    {
        mContext.unregisterReceiver(mInstance);
    }

}
