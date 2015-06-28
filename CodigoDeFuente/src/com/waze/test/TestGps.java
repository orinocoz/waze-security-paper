// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import java.util.Timer;
import java.util.TimerTask;

public class TestGps extends Activity
{

    final long GPS_WD_PERIOD = 10000L;
    Handler mGpsHandler;
    LocationListener mGpsListener;
    TimerTask mGpsWatchDog;
    boolean mStarted;
    Timer mTimer;

    public TestGps()
    {
        mGpsWatchDog = new TimerTask() {

            final TestGps this$0;

            public void run()
            {
                if (mStarted)
                {
                    mGpsHandler.post(new Runnable() {

                        final _cls1 this$1;

                        public void run()
                        {
                            stopGPS();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                    return;
                } else
                {
                    mGpsHandler.post(new Runnable() {

                        final _cls1 this$1;

                        public void run()
                        {
                            startGPS();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                    return;
                }
            }


            
            {
                this$0 = TestGps.this;
                super();
            }
        };
        mGpsListener = new LocationListener() {

            final TestGps this$0;

            public void onLocationChanged(Location location)
            {
            }

            public void onProviderDisabled(String s)
            {
            }

            public void onProviderEnabled(String s)
            {
            }

            public void onStatusChanged(String s, int i, Bundle bundle)
            {
            }

            
            {
                this$0 = TestGps.this;
                super();
            }
        };
        mGpsHandler = new Handler();
        mTimer = new Timer();
        mStarted = false;
    }

    private void startGPS()
    {
        mStarted = true;
        Toast.makeText(this, "Starting GPS", 0).show();
        ((LocationManager)getApplicationContext().getSystemService("location")).requestLocationUpdates("gps", 0L, 0.0F, mGpsListener);
    }

    private void stopGPS()
    {
        mStarted = false;
        Toast.makeText(this, "Stopping GPS", 0).show();
        ((LocationManager)getApplicationContext().getSystemService("location")).removeUpdates(mGpsListener);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030119);
        startGPS();
        mTimer.scheduleAtFixedRate(mGpsWatchDog, 10000L, 10000L);
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
    }


}
