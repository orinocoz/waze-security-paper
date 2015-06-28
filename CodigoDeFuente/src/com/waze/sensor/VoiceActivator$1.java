// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.sensor;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.waze.NativeManager;

// Referenced classes of package com.waze.sensor:
//            VoiceActivator

class ner
    implements SensorEventListener
{

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        if (sensorevent.sensor.getType() == 8 && sensorevent.values[0] < sensorevent.sensor.getMaximumRange() && VoiceActivator.access$0())
        {
            NativeManager.getInstance().asrActivated();
        }
    }

    ner()
    {
    }
}
