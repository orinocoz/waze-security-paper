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

class  extends RunnableExecutor
{

    final NativeLocListener this$0;

    public void event()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        final Location lastKnownLocation = NativeLocListener.access$4(NativeLocListener.this).getLastKnownLocation("network");
        if (lastKnownLocation != null && 5000L + lastKnownLocation.getTime() >= System.currentTimeMillis())
        {
            NativeLocListener.access$6(NativeLocListener.this, System.currentTimeMillis());
            NativeLocListener.access$7(NativeLocListener.this, lastKnownLocation, NativeLocListener.access$1(NativeLocListener.this));
            if (nativemanager != null && NativeManager.IsAppStarted())
            {
                if (nativemanager.IsNativeThread())
                {
                    NativeLocListener.access$12(NativeLocListener.this, NativeLocListener.access$8(NativeLocListener.this), lastKnownLocation, NativeLocListener.access$1(NativeLocListener.this), NativeLocListener.access$9(NativeLocListener.this), NativeLocListener.access$10(NativeLocListener.this), NativeLocListener.access$11(NativeLocListener.this));
                    return;
                } else
                {
                    nativemanager.PostRunnable(new Runnable() {

                        final NativeLocListener._cls1 this$1;
                        private final Location val$lastKnownLocation;

                        public void run()
                        {
                            NativeLocListener.access$12(this$0, NativeLocListener.access$8(this$0), lastKnownLocation, NativeLocListener.access$1(this$0), NativeLocListener.access$9(this$0), NativeLocListener.access$10(this$0), NativeLocListener.access$11(this$0));
                        }

            
            {
                this$1 = NativeLocListener._cls1.this;
                lastKnownLocation = location;
                super();
            }
                    });
                    return;
                }
            }
        }
    }


    (Executor executor)
    {
        this$0 = NativeLocListener.this;
        super(executor);
    }
}
