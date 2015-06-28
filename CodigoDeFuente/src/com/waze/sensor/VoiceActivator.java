// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.sensor;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import com.waze.Logger;
import com.waze.NativeManager;

public class VoiceActivator
{

    private static long DOUBLE_WAVE_ACTIVATION_PERIOD = 2000L;
    public static final VoiceActivator instance = new VoiceActivator();
    private static SensorEventListener listener = new SensorEventListener() {

        public void onAccuracyChanged(Sensor sensor, int i)
        {
        }

        public void onSensorChanged(SensorEvent sensorevent)
        {
            if (sensorevent.sensor.getType() == 8 && sensorevent.values[0] < sensorevent.sensor.getMaximumRange() && VoiceActivator.isActivated())
            {
                NativeManager.getInstance().asrActivated();
            }
        }

    };
    private static long mActivationStartTime = 0L;
    private static boolean mIsTwice = false;
    private SensorManager sensorManager;

    public VoiceActivator()
    {
    }

    public static void activate(Context context, boolean flag)
    {
        mIsTwice = flag;
        instance.sensorManager = (SensorManager)context.getSystemService("sensor");
        instance.sensorManager.registerListener(listener, instance.sensorManager.getDefaultSensor(8), 2);
    }

    public static void deactivate(Context context)
    {
        instance.sensorManager = (SensorManager)context.getSystemService("sensor");
        instance.sensorManager.unregisterListener(listener);
    }

    private static boolean isActivated()
    {
        long l = SystemClock.elapsedRealtime();
        long l1 = l - mActivationStartTime;
        Logger.d_("VoiceActivator", (new StringBuilder("Activation delta: ")).append(l1).toString());
        if (mIsTwice && (mActivationStartTime == 0L || l1 > DOUBLE_WAVE_ACTIVATION_PERIOD))
        {
            mActivationStartTime = l;
            return false;
        } else
        {
            mActivationStartTime = 0L;
            return true;
        }
    }


}
