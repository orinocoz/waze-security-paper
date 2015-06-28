// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            Logger, NativeLocListener, NativeManager

class val.startEvent
    implements Runnable
{

    final val.startEvent this$1;
    private final Runnable val$startEvent;
    private final long val$timeSinceFix;

    public void run()
    {
        Logger.w_("LOCATION_LISTENER", (new StringBuilder("No GPS fix for ")).append(val$timeSinceFix).append(" ms. Restarting GPS engine. ").toString());
        NativeLocListener.access$3(cess._mth1(this._cls1.this), false);
        cess._mth1(this._cls1.this).stop();
        NativeManager.Post(val$startEvent);
    }

    ()
    {
        this$1 = final_;
        val$timeSinceFix = l;
        val$startEvent = Runnable.this;
        super();
    }
}
