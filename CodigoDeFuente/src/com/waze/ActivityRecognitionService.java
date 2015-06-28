// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;

public class ActivityRecognitionService extends IntentService
{

    private static final String TAG = "ActivityRecognition";

    public ActivityRecognitionService()
    {
        super("ActivityRecognitionService");
    }

    private String getNameFromType(int i)
    {
        switch (i)
        {
        case 4: // '\004'
        case 6: // '\006'
        default:
            return "unknown";

        case 0: // '\0'
            return "in_vehicle";

        case 1: // '\001'
            return "Ride";

        case 8: // '\b'
            return "Running";

        case 7: // '\007'
            return "walking";

        case 2: // '\002'
            return "on_foot";

        case 3: // '\003'
            return "still";

        case 5: // '\005'
            return "tilting";
        }
    }

    protected void onHandleIntent(Intent intent)
    {
        Log.e("radius", "Activity recognitio Service Get data");
        if (ActivityRecognitionResult.hasResult(intent))
        {
            ActivityRecognitionResult activityrecognitionresult = ActivityRecognitionResult.extractResult(intent);
            Intent intent1 = new Intent("com.android.ACTIVITY_RECOGNITION");
            intent1.putExtra("Activity", activityrecognitionresult.getMostProbableActivity().getType());
            intent1.putExtra("Confidence", activityrecognitionresult.getMostProbableActivity().getConfidence());
            sendBroadcast(intent1);
        }
    }
}
