// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import java.util.TimerTask;

// Referenced classes of package com.waze:
//            NativeLocListener, NativeManager, Logger

private final class <init> extends TimerTask
{

    final NativeLocListener this$0;

    public void run()
    {
        final long timeSinceFix;
        if (!NativeLocListener.access$0(NativeLocListener.this))
        {
            if ((timeSinceFix = System.currentTimeMillis() - NativeLocListener.access$1(NativeLocListener.this)) >= 60000L || NativeLocListener.access$2(NativeLocListener.this) && timeSinceFix >= 10000L)
            {
                Runnable runnable = new Runnable() {

                    final NativeLocListener.WatchDogTask this$1;
                    private final Runnable val$startEvent;
                    private final long val$timeSinceFix;

                    public void run()
                    {
                        Logger.w_("LOCATION_LISTENER", (new StringBuilder("No GPS fix for ")).append(timeSinceFix).append(" ms. Restarting GPS engine. ").toString());
                        NativeLocListener.access$3(this$0, false);
                        stop();
                        NativeManager.Post(startEvent);
                    }

            
            {
                this$1 = NativeLocListener.WatchDogTask.this;
                timeSinceFix = l;
                startEvent = runnable;
                super();
            }
                };
                NativeLocListener.access$3(NativeLocListener.this, true);
                NativeManager.Post(runnable);
                return;
            }
        }
    }


    private _cls2.val.startEvent()
    {
        this$0 = NativeLocListener.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }

    // Unreferenced inner class com/waze/NativeLocListener$WatchDogTask$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final NativeLocListener.WatchDogTask this$1;

        public void run()
        {
            start();
        }

            
            {
                this$1 = NativeLocListener.WatchDogTask.this;
                super();
            }
    }

}
