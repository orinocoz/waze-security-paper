// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.pioneer;

import android.util.Log;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import java.util.concurrent.Executor;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2CertifiedInfo;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2Kit;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2LocationInfo;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2MainUnitSpecInfo;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2LocationListener;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2RequiredListener;
import jp.pioneer.mbg.pioneerkit.ExtCertifiedInfo;
import jp.pioneer.mbg.pioneerkit.ExtDeviceSpecInfo;
import jp.pioneer.mbg.pioneerkit.ExtLocation;
import jp.pioneer.mbg.pioneerkit.IExtLocationListener;
import jp.pioneer.mbg.pioneerkit.IExtRequiredListener;
import jp.pioneer.mbg.pioneerkit.PioneerKit;

// Referenced classes of package com.waze.pioneer:
//            PioneerNativeManager

public final class PioneerManager
    implements IExtRequiredListener, IExtLocationListener, IAAM2RequiredListener, IAAM2LocationListener
{

    private static final boolean ENABLED = true;
    private static final boolean LOCATION_ENABLED = true;
    private static final String TAG = "WAZE_PIONEER";
    private static PioneerManager mInstance = null;
    private static boolean mIsOldSdk = true;
    long lastFix;
    private boolean mCertified;
    private ExtDeviceSpecInfo mDeviceInfo;
    private AAM2MainUnitSpecInfo mNewDeviceInfo;
    private boolean mStarted;
    private boolean mWaiting;

    private PioneerManager()
    {
        lastFix = 0L;
        mWaiting = false;
        mStarted = false;
        mCertified = false;
        mDeviceInfo = null;
        mNewDeviceInfo = null;
    }

    private void _notify()
    {
        this;
        JVM INSTR monitorenter ;
        mWaiting = false;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void _wait()
    {
        this;
        JVM INSTR monitorenter ;
_L2:
        boolean flag = mWaiting;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        wait();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Logger.ee("WAZE_PIONEER", exception1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public static PioneerManager create()
    {
        if (mInstance == null)
        {
            mInstance = new PioneerManager();
            Log.d("WAZE_PIONEER", "Pioneer app mode enabled - will start when Waze will be fully initialized.");
            NativeManager.registerOnAppStartedEvent(new RunnableExecutor(AppService.getInstance()) {

                public void event()
                {
                    PioneerManager.start();
                }

            });
        }
        return mInstance;
    }

    private com.waze.NativeLocListener.NativeLocation getAAM2KitNativeLocation(AAM2LocationInfo aam2locationinfo)
    {
        com.waze.NativeLocListener.NativeLocation nativelocation = new com.waze.NativeLocListener.NativeLocation();
        nativelocation.mLongtitude = (int)(1000000D * aam2locationinfo.getLongitude());
        nativelocation.mLatitude = (int)(1000000D * aam2locationinfo.getLatitude());
        nativelocation.mAltitude = (int)Math.round(aam2locationinfo.getAltitude());
        nativelocation.mGpsTime = (int)(aam2locationinfo.getTime() / 1000L);
        nativelocation.mGpsTime = (int)(System.currentTimeMillis() / 1000L);
        nativelocation.mSpeed = (int)(1000F * aam2locationinfo.getSpeed());
        nativelocation.mSteering = (int)aam2locationinfo.getBearing();
        nativelocation.mAccuracy = aam2locationinfo.getAccuracy();
        return nativelocation;
    }

    public static PioneerManager getInstance()
    {
        create();
        return mInstance;
    }

    private com.waze.NativeLocListener.NativeLocation getNativeLocation(ExtLocation extlocation)
    {
        com.waze.NativeLocListener.NativeLocation nativelocation = new com.waze.NativeLocListener.NativeLocation();
        nativelocation.mLongtitude = (int)(1000000D * extlocation.getLongitude());
        nativelocation.mLatitude = (int)(1000000D * extlocation.getLatitude());
        nativelocation.mAltitude = (int)Math.round(extlocation.getAltitude());
        nativelocation.mGpsTime = (int)(extlocation.getTime() / 1000L);
        nativelocation.mGpsTime = (int)(System.currentTimeMillis() / 1000L);
        nativelocation.mSpeed = (int)(1000F * extlocation.getSpeed());
        nativelocation.mSteering = (int)extlocation.getBearing();
        nativelocation.mAccuracy = extlocation.getAccuracy();
        return nativelocation;
    }

    private void initNativeLayer()
    {
        NativeManager.Post(new Runnable() {

            final PioneerManager this$0;

            public void run()
            {
                PioneerNativeManager.create();
                _notify();
            }

            
            {
                this$0 = PioneerManager.this;
                super();
            }
        });
        _wait();
    }

    public static boolean isActive()
    {
        return mInstance != null && mInstance.mStarted && mInstance.mCertified;
    }

    public static boolean isExtLocationActive()
    {
        boolean flag;
        if (mIsOldSdk)
        {
            if (mInstance != null && mInstance.mDeviceInfo != null && mInstance.mDeviceInfo.getLocationDevice() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        if (mInstance.mNewDeviceInfo.getLocationDevice() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return mInstance != null && mInstance.mStarted && flag;
    }

    private void onPioneerConnected()
    {
        Log.d("WAZE_PIONEER", "Pioneer connected - post event");
        Runnable runnable = new Runnable() {

            final PioneerManager this$0;

            public void run()
            {
                PioneerNativeManager.onPioneerConnected();
            }

            
            {
                this$0 = PioneerManager.this;
                super();
            }
        };
        if (NativeManager.IsAppStarted())
        {
            NativeManager.Post(runnable);
            return;
        } else
        {
            NativeManager.registerOnAppStartedEvent(new RunnableExecutor(runnable) {

                final PioneerManager this$0;
                private final Runnable val$event;

                public void event()
                {
                    NativeManager.Post(event);
                }

            
            {
                this$0 = PioneerManager.this;
                event = runnable;
                super(final_executor);
            }
            });
            return;
        }
    }

    public static void start()
    {
        Logger.ii("Starting Pioneer manager");
        create();
        mInstance.initNativeLayer();
        PioneerKit.pStartPioneerKit(AppService.getAppContext(), mInstance);
    }

    public static void stop()
    {
        if (mInstance != null && mInstance.mStarted)
        {
            Logger.ii("Stopping Pioneer manager");
            if (mIsOldSdk)
            {
                PioneerKit.pStopPioneerKit(AppService.getAppContext(), mInstance);
            } else
            {
                AAM2Kit.pStopAAM2Kit(AppService.getAppContext(), mInstance);
            }
            mInstance.mStarted = false;
        }
    }

    public void onAAM2CertifiedResult(boolean flag)
    {
        Log.d("WAZE_PIONEER", (new StringBuilder("Received certified AAM2 result event event: ")).append(flag).toString());
        mCertified = flag;
    }

    public void onAAM2ReceiveDriveStopping(boolean flag)
    {
        Log.d("WAZE_PIONEER", (new StringBuilder("Received drive AAM2 stopping event: ")).append(flag).toString());
    }

    public void onAAM2ReceiveLocationInfo(final AAM2LocationInfo arg0)
    {
        NativeManager.Post(new Runnable() {

            final PioneerManager this$0;
            private final AAM2LocationInfo val$arg0;

            public void run()
            {
                com.waze.NativeLocListener.NativeLocation nativelocation = getAAM2KitNativeLocation(arg0);
                PioneerNativeManager.getInstance().LocationCallbackNTV(nativelocation.mGpsTime, nativelocation.mLatitude, nativelocation.mLongtitude, nativelocation.mAltitude, nativelocation.mSpeed, nativelocation.mSteering, nativelocation.mAccuracy);
            }

            
            {
                this$0 = PioneerManager.this;
                arg0 = aam2locationinfo;
                super();
            }
        });
    }

    public void onAAM2ReceiveParkingSwitch(boolean flag)
    {
        Log.d("WAZE_PIONEER", (new StringBuilder("Received parking AAM2 event: ")).append(flag).toString());
    }

    public AAM2CertifiedInfo onAAM2RequireCertification()
    {
        Log.d("WAZE_PIONEER", "Received require AAM2 certification event.");
        return new AAM2CertifiedInfo("Waze", "com.waze", "bbf0f5f5ee2aad9ab239ac9a93085760");
    }

    public void onAAM2StartAdvancedAppMode(AAM2MainUnitSpecInfo aam2mainunitspecinfo)
    {
        Log.d("WAZE_PIONEER", (new StringBuilder("Received AAM2 start advanced app mode event. Pointers #: ")).append(aam2mainunitspecinfo.getPointerNum()).append(". Location device: ").append(aam2mainunitspecinfo.getLocationDevice()).toString());
        mStarted = true;
        mNewDeviceInfo = aam2mainunitspecinfo;
        mIsOldSdk = false;
        AppService.getMainActivity().cancelSplash();
        ActivityBase.setGlobalOrientation(0);
        onPioneerConnected();
        if (aam2mainunitspecinfo.getLocationDevice() != 0)
        {
            Log.d("WAZE_PIONEER", (new StringBuilder("Taking location from Pioneer. Current device: ")).append(mNewDeviceInfo.getLocationDevice()).toString());
            AAM2Kit.pRegisterLocationListener(this);
            return;
        }
        StringBuilder stringbuilder = new StringBuilder("External location is not ready or disabled. Device: ");
        Object obj;
        if (mNewDeviceInfo != null)
        {
            obj = Integer.valueOf(mNewDeviceInfo.getLocationDevice());
        } else
        {
            obj = "Unavailable";
        }
        Log.w("WAZE_PIONEER", stringbuilder.append(obj).toString());
    }

    public void onAAM2StopAdvancedAppMode()
    {
        Log.d("WAZE_PIONEER", "Received AAM2 stop advanced app mode event.");
        NativeManager nativemanager = NativeManager.getInstance();
        if (!NativeManager.isShuttingDown())
        {
            nativemanager.setGpsSourceName(null);
            nativemanager.startLocation();
            ActivityBase.setGlobalOrientation(2);
        }
        mStarted = false;
    }

    public void onCertifiedResult(boolean flag)
    {
        Log.d("WAZE_PIONEER", (new StringBuilder("Received certified result event event: ")).append(flag).toString());
        mCertified = flag;
    }

    public void onReceiveLocationInfo(final ExtLocation loc)
    {
        NativeManager.Post(new Runnable() {

            final PioneerManager this$0;
            private final ExtLocation val$loc;

            public void run()
            {
                com.waze.NativeLocListener.NativeLocation nativelocation = getNativeLocation(loc);
                PioneerNativeManager.getInstance().LocationCallbackNTV(nativelocation.mGpsTime, nativelocation.mLatitude, nativelocation.mLongtitude, nativelocation.mAltitude, nativelocation.mSpeed, nativelocation.mSteering, nativelocation.mAccuracy);
            }

            
            {
                this$0 = PioneerManager.this;
                loc = extlocation;
                super();
            }
        });
    }

    public void onReceiveParkingInfo(boolean flag)
    {
        Log.d("WAZE_PIONEER", (new StringBuilder("Received parking event: ")).append(flag).toString());
    }

    public ExtCertifiedInfo onRequireCertification()
    {
        Log.d("WAZE_PIONEER", "Received require certification event.");
        return new ExtCertifiedInfo("Waze", "com.waze", "bbf0f5f5ee2aad9ab239ac9a93085760");
    }

    public void onStartAdvancedAppMode(ExtDeviceSpecInfo extdevicespecinfo)
    {
        Log.d("WAZE_PIONEER", (new StringBuilder("Received start advanced app mode event. Pointers #: ")).append(extdevicespecinfo.getPointerNum()).append(". Location device: ").append(extdevicespecinfo.getLocationDevice()).toString());
        mStarted = true;
        mDeviceInfo = extdevicespecinfo;
        mIsOldSdk = true;
        AppService.getMainActivity().cancelSplash();
        ActivityBase.setGlobalOrientation(0);
        onPioneerConnected();
        if (mDeviceInfo.getLocationDevice() != 0)
        {
            Log.d("WAZE_PIONEER", (new StringBuilder("Taking location from Pioneer. Current device: ")).append(mDeviceInfo.getLocationDevice()).toString());
            NativeManager nativemanager = NativeManager.getInstance();
            nativemanager.stopLocation();
            nativemanager.setGpsSourceName("PioneerV1");
            PioneerKit.pRegisterLocationListener(mInstance);
            return;
        }
        StringBuilder stringbuilder = new StringBuilder("External location is not ready or disabled. Device: ");
        Object obj;
        if (mDeviceInfo != null)
        {
            obj = Integer.valueOf(mDeviceInfo.getLocationDevice());
        } else
        {
            obj = "Unavailable";
        }
        Log.w("WAZE_PIONEER", stringbuilder.append(obj).toString());
    }

    public void onStopAdvancedAppMode()
    {
        Log.d("WAZE_PIONEER", "Received stop advanced app mode event.");
        NativeManager nativemanager = NativeManager.getInstance();
        if (!NativeManager.isShuttingDown())
        {
            nativemanager.setGpsSourceName(null);
            nativemanager.startLocation();
            ActivityBase.setGlobalOrientation(2);
        }
        mStarted = false;
    }




}
