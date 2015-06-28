// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.waze:
//            GeoFencingService

public class ActivityRecognitionReceiver extends BroadcastReceiver
{

    public ActivityRecognitionReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
label0:
        {
            Bundle bundle = intent.getExtras();
            bundle.getInt("Confidence");
            if (bundle.getInt("Activity") == 2)
            {
                if (!GeoFencingService.IsRunning())
                {
                    break label0;
                }
                GeoFencingService.CreatePushMessage();
                GeoFencingService.stop(false);
            }
            return;
        }
        GeoFencingService.start(context);
    }
}
