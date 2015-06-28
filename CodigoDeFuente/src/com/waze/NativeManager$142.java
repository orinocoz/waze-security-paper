// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.PendingIntent;
import android.content.Intent;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.waze.messages.QuestionData;

// Referenced classes of package com.waze:
//            NativeManager, AppService, GeoFencingService, NativeLocListener

class val.expirationTime
    implements Runnable
{

    final NativeManager this$0;
    private final int val$expirationTime;
    private final double val$lat;
    private final double val$lon;
    private final QuestionData val$question;
    private final int val$radius;

    public void run()
    {
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(AppService.getAppContext()) == 0)
        {
            if (GeoFencingService.IsRunning())
            {
                GeoFencingService.stop(false);
            }
            Intent intent = new Intent("com.android.GEO_FENCING");
            PendingIntent pendingintent = PendingIntent.getBroadcast(AppService.getAppContext(), 0, intent, 0);
            QuestionData.SaveQuestionData(val$question);
            NativeLocListener.getInstance().RemoveProximityAlert(pendingintent);
            NativeLocListener.getInstance().SetApproximityAlert(pendingintent, val$lon, val$lat, val$radius, val$expirationTime);
        }
    }

    ata()
    {
        this$0 = final_nativemanager;
        val$question = questiondata;
        val$lon = d;
        val$lat = d1;
        val$radius = i;
        val$expirationTime = I.this;
        super();
    }
}
