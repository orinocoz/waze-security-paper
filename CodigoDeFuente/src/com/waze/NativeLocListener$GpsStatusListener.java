// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.location.GpsStatus;
import android.location.LocationManager;
import java.util.Iterator;

// Referenced classes of package com.waze:
//            NativeLocListener, AppService, NativeManager

private class this._cls0
    implements android.location.telliteNumberFinal
{

    final NativeLocListener this$0;

    public void onGpsStatusChanged(int i)
    {
        int j = 0;
        i;
        JVM INSTR tableswitch 4 4: default 20
    //                   4 21;
           goto _L1 _L2
_L1:
        return;
_L2:
        Iterator iterator = NativeLocListener.access$4(NativeLocListener.this).getGpsStatus(null).getSatellites().iterator();
_L5:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        final int satelliteNumberFinal = j;
        NativeManager nativemanager = AppService.getNativeManager();
        if (nativemanager != null && NativeManager.IsAppStarted())
        {
            if (nativemanager.IsNativeThread())
            {
                NativeLocListener.access$5(NativeLocListener.this, satelliteNumberFinal);
                return;
            } else
            {
                nativemanager.PostRunnable(new Runnable() {

                    final NativeLocListener.GpsStatusListener this$1;
                    private final int val$satelliteNumberFinal;

                    public void run()
                    {
                        NativeLocListener.access$5(this$0, satelliteNumberFinal);
                    }

            
            {
                this$1 = NativeLocListener.GpsStatusListener.this;
                satelliteNumberFinal = i;
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


    private _cls1.val.satelliteNumberFinal()
    {
        this$0 = NativeLocListener.this;
        super();
    }
}
