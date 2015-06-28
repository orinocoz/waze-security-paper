// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.location.Location;
import android.location.LocationManager;
import com.waze.ifs.async.RunnableExecutor;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            NativeLocListener, NativeManager

class val.lastKnownLocation
    implements Runnable
{

    final is._cls0 this$1;
    private final Location val$lastKnownLocation;

    public void run()
    {
        NativeLocListener.access$12(_fld0, NativeLocListener.access$8(_fld0), val$lastKnownLocation, NativeLocListener.access$1(_fld0), NativeLocListener.access$9(_fld0), NativeLocListener.access$10(_fld0), NativeLocListener.access$11(_fld0));
    }

    utor()
    {
        this$1 = final_utor;
        val$lastKnownLocation = Location.this;
        super();
    }

    // Unreferenced inner class com/waze/NativeLocListener$1

/* anonymous class */
    class NativeLocListener._cls1 extends RunnableExecutor
    {

        final NativeLocListener this$0;

        public void event()
        {
            NativeManager nativemanager = NativeManager.getInstance();
            Location location = NativeLocListener.access$4(NativeLocListener.this).getLastKnownLocation("network");
            if (location != null && 5000L + location.getTime() >= System.currentTimeMillis())
            {
                NativeLocListener.access$6(NativeLocListener.this, System.currentTimeMillis());
                NativeLocListener.access$7(NativeLocListener.this, location, NativeLocListener.access$1(NativeLocListener.this));
                if (nativemanager != null && NativeManager.IsAppStarted())
                {
                    if (nativemanager.IsNativeThread())
                    {
                        NativeLocListener.access$12(NativeLocListener.this, NativeLocListener.access$8(NativeLocListener.this), location, NativeLocListener.access$1(NativeLocListener.this), NativeLocListener.access$9(NativeLocListener.this), NativeLocListener.access$10(NativeLocListener.this), NativeLocListener.access$11(NativeLocListener.this));
                        return;
                    } else
                    {
                        nativemanager.PostRunnable(location. new NativeLocListener._cls1._cls1());
                        return;
                    }
                }
            }
        }


            
            {
                this$0 = NativeLocListener.this;
                super(executor);
            }
    }

}
