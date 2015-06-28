// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.SystemClock;

// Referenced classes of package com.waze:
//            NativeManager, Logger

class Name
    implements SensorEventListener
{

    public final String mSensorName;
    final NativeManager this$0;

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        long l;
        if (NativeManager.access$98(NativeManager.this))
        {
            if ((l = SystemClock.elapsedRealtime()) - NativeManager.access$99(NativeManager.this) > 0x1d4c0L)
            {
                Logger.w((new StringBuilder("WAZE TEMPERATURE PROFILER. Current temperature: ")).append(sensorevent.values[0]).append(". Sensor: ").append(mSensorName).toString());
                NativeManager.access$100(NativeManager.this, l);
                return;
            }
        }
    }

    t(Sensor sensor)
    {
        this$0 = NativeManager.this;
        super();
        mSensorName = sensor.getName();
    }
}
