// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.location.ActivityRecognitionClient;

// Referenced classes of package com.waze:
//            ActivityRecognitionService

public class ActivityRecognitionConnection
    implements com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks, com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener
{

    private static final String TAG = "ActivityRecognition";
    private static PendingIntent callbackIntent;
    private static ActivityRecognitionClient mActivityRecognitionClient = null;
    private Context context;

    public ActivityRecognitionConnection()
    {
    }

    public void onConnected(Bundle bundle)
    {
        Intent intent = new Intent(context, com/waze/ActivityRecognitionService);
        callbackIntent = PendingIntent.getService(context, 0, intent, 0x8000000);
        Log.e("radius", " Activity recognitio request updates");
        mActivityRecognitionClient.requestActivityUpdates(0L, callbackIntent);
    }

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        Log.e("radius", "Activity recognitio request failed");
    }

    public void onDisconnected()
    {
    }

    public void startActivityRecognitionConnection(Context context1)
    {
        context = context1;
        if (mActivityRecognitionClient == null)
        {
            mActivityRecognitionClient = new ActivityRecognitionClient(context1, this, this);
            mActivityRecognitionClient.connect();
            Log.e("radius", " Activity recognitio start");
        }
    }

    public void stopActivityRecognitionConnection()
    {
        try
        {
            Log.e("Radius", "Stop updates activity recognition");
            mActivityRecognitionClient.removeActivityUpdates(callbackIntent);
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            Log.e("Radius", " Exception Stop updates activity recognition");
        }
    }

}
