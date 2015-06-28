// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.PendingIntent;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.util.Log;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.main.navigate.GeoFencingReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            AppService, NativeManager, Logger

public final class NativeLocListener
    implements LocationListener, SensorEventListener
{
    private class GpsStatusListener
        implements android.location.GpsStatus.Listener
    {

        final NativeLocListener this$0;

        public void onGpsStatusChanged(int i)
        {
            int j = 0;
            i;
            JVM INSTR tableswitch 4 4: default 20
        //                       4 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            Iterator iterator = mLocationManager.getGpsStatus(null).getSatellites().iterator();
_L5:
            if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
            int k = j;
            NativeManager nativemanager = AppService.getNativeManager();
            if (nativemanager != null && NativeManager.IsAppStarted())
            {
                if (nativemanager.IsNativeThread())
                {
                    SatteliteListenerCallbackNTV(k);
                    return;
                } else
                {
                    nativemanager.PostRunnable(k. new Runnable() {

                        final GpsStatusListener this$1;
                        private final int val$satelliteNumberFinal;

                        public void run()
                        {
                            SatteliteListenerCallbackNTV(satelliteNumberFinal);
                        }

            
            {
                this$1 = final_gpsstatuslistener;
                satelliteNumberFinal = I.this;
                super();
            }
                    });
                    return;
                }
            }
              goto _L1
_L4:
            j++;
            iterator.next();
              goto _L5
        }


        private GpsStatusListener()
        {
            this$0 = NativeLocListener.this;
            super();
        }
    }

    public static class NativeLocation
    {

        public static final int FIXED_POINT_FACTOR = 0xf4240;
        public int mAccuracy;
        public int mAltitude;
        public int mGpsTime;
        public int mLatitude;
        public int mLongtitude;
        public int mSpeed;
        public int mSteering;

        public NativeLocation()
        {
        }
    }

    private final class WatchDogTask extends TimerTask
    {

        final NativeLocListener this$0;

        public void run()
        {
            final long timeSinceFix;
            if (!mGpsFixSent)
            {
                if ((timeSinceFix = System.currentTimeMillis() - mLastGpsFixTime) >= 60000L || mHasGps && timeSinceFix >= 10000L)
                {
                    Runnable runnable = (new Runnable() {

                        final WatchDogTask this$1;

                        public void run()
                        {
                            start();
                        }

            
            {
                this$1 = WatchDogTask.this;
                super();
            }
                    }). new Runnable() {

                        final WatchDogTask this$1;
                        private final Runnable val$startEvent;
                        private final long val$timeSinceFix;

                        public void run()
                        {
                            Logger.w_("LOCATION_LISTENER", (new StringBuilder("No GPS fix for ")).append(timeSinceFix).append(" ms. Restarting GPS engine. ").toString());
                            mGpsFixSent = false;
                            stop();
                            NativeManager.Post(startEvent);
                        }

            
            {
                this$1 = final_watchdogtask;
                timeSinceFix = l;
                startEvent = Runnable.this;
                super();
            }
                    };
                    mGpsFixSent = true;
                    NativeManager.Post(runnable);
                    return;
                }
            }
        }


        private WatchDogTask()
        {
            this$0 = NativeLocListener.this;
            super();
        }

        WatchDogTask(WatchDogTask watchdogtask)
        {
            this();
        }
    }


    public static boolean bIsStartCompass = false;
    private static NativeLocListener mInstance = null;
    private final long GPS_FIX_WATCH_DOG_PERIOD = 60000L;
    private final long GPS_LOCATION_WATCH_DOG_PERIOD = 10000L;
    private final long GPS_MOCK_DETECT_PERIOD = 2000L;
    final float I[] = new float[16];
    private final String LOGGER_TAG = "LOCATION_LISTENER";
    float R[];
    private final int SENSOR_MASK_ACCEL = 2;
    private final int SENSOR_MASK_CLEAR_CACHE = 16;
    private final int SENSOR_MASK_COMPASS = 4;
    private final int SENSOR_MASK_GYRO;
    private final int SENSOR_MASK_RESET_GPS = 8;
    private final int STATUS_GPS_AVAILABLE = 2;
    private final int STATUS_NETWORK_AVAILABLE;
    private final byte STATUS_NOT_AVAILABLE = 0;
    float aValues[];
    private float mAccelData[] = {
        0.0F, 0.0F, 0.0F
    };
    private Sensor mAccelerometer;
    private boolean mClearCache;
    private Sensor mCompass;
    private float mCompassData[] = {
        0.0F, 0.0F, 0.0F
    };
    private WatchDogTask mFixWatchDog;
    private boolean mGpsFixSent;
    private GpsStatusListener mGpsStatusListener;
    private Sensor mGyro;
    private float mGyroData[] = {
        0.0F, 0.0F, 0.0F
    };
    private boolean mHasGps;
    private long mLastGpsFixTime;
    private Location mLastLocation;
    private ArrayList mLocListeners;
    private LocationManager mLocationManager;
    private TimerTask mMockGpsDetect;
    private boolean mResetGps;
    private Sensor mRotation;
    private int mSatelliteNumber;
    private SensorManager mSensorManager;
    private boolean mStarted;
    private int mStatus;
    float mValues[];
    float m_vforientVals[];
    private boolean mbLoggedIn;
    private boolean mbReportedMockLocation;
    int nCompass;
    float orientationValues[];

    private NativeLocListener(LocationManager locationmanager, SensorManager sensormanager)
    {
        boolean flag = true;
        super();
        aValues = new float[3];
        mValues = new float[3];
        m_vforientVals = new float[3];
        R = new float[16];
        orientationValues = new float[3];
        nCompass = 0;
        mLocListeners = new ArrayList();
        mLocationManager = null;
        mSensorManager = null;
        mGpsStatusListener = null;
        mLastLocation = null;
        mLastGpsFixTime = 0L;
        mGpsFixSent = false;
        mFixWatchDog = null;
        mMockGpsDetect = null;
        mStarted = false;
        mbReportedMockLocation = false;
        mbLoggedIn = false;
        mAccelerometer = null;
        mGyro = null;
        mRotation = null;
        mCompass = null;
        STATUS_NETWORK_AVAILABLE = ((flag) ? 1 : 0);
        mStatus = 3;
        mHasGps = false;
        mSatelliteNumber = 0;
        SENSOR_MASK_GYRO = ((flag) ? 1 : 0);
        mLocationManager = locationmanager;
        mSensorManager = sensormanager;
        int i = GetLocationSensorMaskNTV();
        if (mSensorManager != null)
        {
            if ((i & 2) != 0)
            {
                mAccelerometer = mSensorManager.getDefaultSensor(flag);
            }
            if ((i & 1) != 0)
            {
                mGyro = mSensorManager.getDefaultSensor(4);
            }
            if ((i & 4) != 0)
            {
                mCompass = mSensorManager.getDefaultSensor(2);
            }
        }
        boolean flag1;
        if ((i & 8) != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        mResetGps = flag1;
        if ((i & 0x10) == 0)
        {
            flag = false;
        }
        mClearCache = flag;
    }

    private native int GetLocationSensorMaskNTV();

    public static NativeLocation GetNativeLocation(Location location)
    {
        NativeLocation nativelocation = new NativeLocation();
        nativelocation.mLongtitude = (int)Math.round(1000000D * location.getLongitude());
        nativelocation.mLatitude = (int)Math.round(1000000D * location.getLatitude());
        nativelocation.mAltitude = (int)Math.round(location.getAltitude());
        nativelocation.mGpsTime = (int)(location.getTime() / 1000L);
        nativelocation.mSpeed = (int)(1000F * location.getSpeed());
        nativelocation.mSteering = (int)location.getBearing();
        nativelocation.mAccuracy = (int)location.getAccuracy();
        return nativelocation;
    }

    private native void LocListenerCallbackNTV(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1, int i2, float f, float f1, float f2, float f3, float f4, 
            float f5, float f6, float f7, float f8);

    private native void SatteliteListenerCallbackNTV(int i);

    private native void SetCompassNTV(int i);

    private void SetLocationAfterAppServiceStart()
    {
        RunnableExecutor runnableexecutor = new RunnableExecutor(AppService.getInstance()) {

            final NativeLocListener this$0;

            public void event()
            {
                NativeManager nativemanager = NativeManager.getInstance();
                Location location = mLocationManager.getLastKnownLocation("network");
                if (location != null && 5000L + location.getTime() >= System.currentTimeMillis())
                {
                    mLastGpsFixTime = System.currentTimeMillis();
                    setLastLocation(location, mLastGpsFixTime);
                    if (nativemanager != null && NativeManager.IsAppStarted())
                    {
                        if (nativemanager.IsNativeThread())
                        {
                            UpdateNativeLayer(mStatus, location, mLastGpsFixTime, mAccelData, mGyroData, mCompassData);
                            return;
                        } else
                        {
                            nativemanager.PostRunnable(location. new Runnable() {

                                final _cls1 this$1;
                                private final Location val$lastKnownLocation;

                                public void run()
                                {
                                    UpdateNativeLayer(mStatus, lastKnownLocation, mLastGpsFixTime, mAccelData, mGyroData, mCompassData);
                                }

            
            {
                this$1 = final__pcls1;
                lastKnownLocation = Location.this;
                super();
            }
                            });
                            return;
                        }
                    }
                }
            }


            
            {
                this$0 = NativeLocListener.this;
                super(executor);
            }
        };
        if (NativeManager.IsAppStarted())
        {
            runnableexecutor.run();
            return;
        } else
        {
            NativeManager.registerOnAppStartedEvent(runnableexecutor);
            return;
        }
    }

    private void UpdateNativeLayer(int i, Location location, long l, float af[], float af1[], float af2[])
    {
        if (location == null)
        {
            return;
        }
        NativeLocation nativelocation = GetNativeLocation(location);
        boolean flag = location.getProvider().equals("network");
        int j = 0;
        if (flag)
        {
            j = 1;
            if ((i & 1) == 0)
            {
                nativelocation.mAccuracy = -1;
            }
        }
        if (location.getProvider().equals("gps"))
        {
            int k = i & 2;
            j = 0;
            if (k == 0)
            {
                nativelocation.mAccuracy = -1;
            }
        }
        if (android.os.Build.VERSION.SDK_INT >= 18 && mbLoggedIn && !mbReportedMockLocation && location.isFromMockProvider())
        {
            setGpsFakeStatusNTV();
            mbReportedMockLocation = true;
        }
        LocListenerCallbackNTV(nativelocation.mGpsTime, nativelocation.mLatitude, nativelocation.mLongtitude, nativelocation.mAltitude, nativelocation.mSpeed, nativelocation.mSteering, nativelocation.mAccuracy, j, (int)(System.currentTimeMillis() - l), af[0], af[1], af[2], af1[0], af1[1], af1[2], af2[0], af2[1], af2[2]);
    }

    public static NativeLocListener getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new NativeLocListener((LocationManager)AppService.getAppContext().getSystemService("location"), (SensorManager)AppService.getAppContext().getSystemService("sensor"));
            mInstance.SetLocationAfterAppServiceStart();
        }
        return mInstance;
    }

    private void setCompass(final int nCompass)
    {
        NativeManager nativemanager;
label0:
        {
            nativemanager = AppService.getNativeManager();
            if (nativemanager != null && NativeManager.IsAppStarted())
            {
                if (!nativemanager.IsNativeThread())
                {
                    break label0;
                }
                SetCompassNTV(nCompass);
            }
            return;
        }
        nativemanager.PostRunnable(new Runnable() {

            final NativeLocListener this$0;
            private final int val$nCompass;

            public void run()
            {
                SetCompassNTV(nCompass);
            }

            
            {
                this$0 = NativeLocListener.this;
                nCompass = i;
                super();
            }
        });
    }

    private native void setGpsFakeStatusNTV();

    private void setLastLocation(Location location, long l)
    {
        this;
        JVM INSTR monitorenter ;
        if (location.getProvider().equals("gps"))
        {
            mLastGpsFixTime = l;
        }
        mLastLocation = location;
        updateListeners();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void startWD()
    {
        if (mFixWatchDog != null)
        {
            mFixWatchDog.cancel();
        }
        mFixWatchDog = new WatchDogTask(null);
        try
        {
            NativeManager.getInstance().getTimer().scheduleAtFixedRate(mFixWatchDog, 60000L, 10000L);
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            mFixWatchDog = null;
        }
        Log.w("WAZE", "Cannot start watchdog. The timer was canceled");
    }

    private void stopWD()
    {
        if (mFixWatchDog != null)
        {
            mFixWatchDog.cancel();
            mFixWatchDog = null;
        }
        if (mMockGpsDetect != null)
        {
            mMockGpsDetect.cancel();
            mMockGpsDetect = null;
        }
    }

    private void updateListeners()
    {
        int i = 0;
        do
        {
            if (i >= mLocListeners.size())
            {
                return;
            }
            ((RunnableExecutor)mLocListeners.get(i)).run();
            i++;
        } while (true);
    }

    public void RegisterCompass()
    {
        if (mRotation == null)
        {
            mRotation = mSensorManager.getDefaultSensor(3);
        }
        mSensorManager.registerListener(this, mRotation, 2);
    }

    public void RemoveProximityAlert(PendingIntent pendingintent)
    {
        mLocationManager.removeProximityAlert(pendingintent);
    }

    public void SetApproximityAlert(PendingIntent pendingintent, double d, double d1, float f, long l)
    {
        GeoFencingReceiver.IsEntered = false;
        mLocationManager.addProximityAlert(d1, d, f, l, pendingintent);
    }

    public void UnregisterCompass()
    {
        if (mRotation != null)
        {
            mSensorManager.unregisterListener(this, mRotation);
        }
    }

    public Location getLastLocation()
    {
        this;
        JVM INSTR monitorenter ;
        Location location = mLastLocation;
        this;
        JVM INSTR monitorexit ;
        return location;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean gpsProviderEnabled()
    {
        return mLocationManager.isProviderEnabled("gps");
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onLocationChanged(final Location location)
    {
        if (location != null)
        {
            NativeManager nativemanager = AppService.getNativeManager();
            final int status = mStatus;
            final long fixTime = System.currentTimeMillis();
            setLastLocation(location, fixTime);
            if (bIsStartCompass)
            {
                RegisterCompass();
                bIsStartCompass = false;
            }
            if (location.getProvider().equals("gps"))
            {
                mHasGps = true;
            }
            if (nativemanager != null && NativeManager.IsAppStarted())
            {
                if (nativemanager.IsNativeThread())
                {
                    UpdateNativeLayer(status, location, fixTime, mAccelData, mGyroData, mCompassData);
                    return;
                } else
                {
                    nativemanager.PostRunnable(new Runnable() {

                        final NativeLocListener this$0;
                        private final long val$fixTime;
                        private final Location val$location;
                        private final int val$status;

                        public void run()
                        {
                            UpdateNativeLayer(status, location, fixTime, mAccelData, mGyroData, mCompassData);
                        }

            
            {
                this$0 = NativeLocListener.this;
                status = i;
                location = location1;
                fixTime = l;
                super();
            }
                    });
                    return;
                }
            }
        }
    }

    public void onLogin()
    {
        mbLoggedIn = true;
        mbReportedMockLocation = false;
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        if (sensorevent.values == null || sensorevent.values.length < 3) goto _L2; else goto _L1
_L1:
        sensorevent.sensor.getType();
        JVM INSTR tableswitch 1 4: default 52
    //                   1 53
    //                   2 97
    //                   3 126
    //                   4 82;
           goto _L2 _L3 _L4 _L5 _L6
_L2:
        return;
_L3:
        System.arraycopy(sensorevent.values, 0, mAccelData, 0, 3);
        aValues = (float[])sensorevent.values.clone();
        return;
_L6:
        System.arraycopy(sensorevent.values, 0, mGyroData, 0, 3);
        return;
_L4:
        System.arraycopy(sensorevent.values, 0, mCompassData, 0, 3);
        mValues = (float[])sensorevent.values.clone();
        return;
_L5:
        m_vforientVals = (float[])sensorevent.values.clone();
        int i = Math.round(m_vforientVals[0]);
        if (Math.abs(nCompass - i) > 5)
        {
            nCompass = i;
            setCompass(nCompass);
            return;
        }
        if (true) goto _L2; else goto _L7
_L7:
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        if (i != 2) goto _L2; else goto _L1
_L1:
        if (s.equals("gps"))
        {
            mStatus = 2 | mStatus;
        }
        if (s.equals("network"))
        {
            mStatus = 1 | mStatus;
        }
_L4:
        final Location lastLoc;
        final long sendTime;
        NativeManager nativemanager;
        lastLoc = mLocationManager.getLastKnownLocation(s);
        sendTime = System.currentTimeMillis();
        nativemanager = AppService.getNativeManager();
        if (lastLoc != null && nativemanager != null && NativeManager.IsAppStarted())
        {
            if (!nativemanager.IsNativeThread())
            {
                break; /* Loop/switch isn't completed */
            }
            UpdateNativeLayer(mStatus, lastLoc, sendTime, mAccelData, mGyroData, mCompassData);
        }
        return;
_L2:
        if (s.equals("gps"))
        {
            mStatus = -3 & mStatus;
        }
        if (s.equals("network"))
        {
            mStatus = -2 & mStatus;
        }
        if (true) goto _L4; else goto _L3
_L3:
        nativemanager.PostRunnable(new Runnable() {

            final NativeLocListener this$0;
            private final Location val$lastLoc;
            private final long val$sendTime;

            public void run()
            {
                UpdateNativeLayer(mStatus, lastLoc, sendTime, mAccelData, mGyroData, mCompassData);
            }

            
            {
                this$0 = NativeLocListener.this;
                lastLoc = location;
                sendTime = l;
                super();
            }
        });
        return;
    }

    public void registerLocListener(RunnableExecutor runnableexecutor)
    {
        this;
        JVM INSTR monitorenter ;
        if (runnableexecutor == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        if (!mLocListeners.contains(runnableexecutor))
        {
            mLocListeners.add(runnableexecutor);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void restart()
    {
        start();
    }

    public void start()
    {
        NetworkInfo networkinfo;
        try
        {
            stop();
            Logger.d_("LOCATION_LISTENER", "Starting location listener");
            if (mLocationManager.getProvider("network") != null)
            {
                mLocationManager.requestLocationUpdates("network", 0L, 0.0F, this);
            }
            if (mLocationManager.getProvider("gps") == null)
            {
                break MISSING_BLOCK_LABEL_164;
            }
            if (mResetGps)
            {
                Bundle bundle = new Bundle();
                mLocationManager.sendExtraCommand("gps", "force_xtra_injection", bundle);
                mLocationManager.sendExtraCommand("gps", "force_time_injection", bundle);
            }
            if (!mClearCache)
            {
                break MISSING_BLOCK_LABEL_151;
            }
            networkinfo = ((ConnectivityManager)AppService.getAppContext().getSystemService("connectivity")).getActiveNetworkInfo();
        }
        catch (Exception exception)
        {
            Logger.ee("Error starting location listener", exception);
            return;
        }
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        if (networkinfo.isConnected())
        {
            mLocationManager.sendExtraCommand("gps", "delete_aiding_data", null);
        }
        mLocationManager.requestLocationUpdates("gps", 0L, 0.0F, this);
        mStarted = true;
        mStatus = 3;
        mHasGps = false;
        mLastGpsFixTime = System.currentTimeMillis();
        if (mAccelerometer != null)
        {
            mSensorManager.registerListener(this, mAccelerometer, 3);
        }
        if (mGyro != null)
        {
            mSensorManager.registerListener(this, mGyro, 3);
        }
        if (mCompass != null)
        {
            mSensorManager.registerListener(this, mCompass, 3);
        }
        startWD();
        return;
    }

    public void stop()
    {
        if (mStarted)
        {
            Logger.d_("LOCATION_LISTENER", "Stopping location listener");
            mLocationManager.removeUpdates(this);
            if (mSensorManager != null)
            {
                mSensorManager.unregisterListener(this);
            }
            stopWD();
            mStarted = false;
        }
    }

    public void unregisterLocListener(RunnableExecutor runnableexecutor)
    {
        this;
        JVM INSTR monitorenter ;
        mLocListeners.remove(runnableexecutor);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }















}
