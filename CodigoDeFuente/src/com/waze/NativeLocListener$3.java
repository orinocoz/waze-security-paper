// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.location.Location;

// Referenced classes of package com.waze:
//            NativeLocListener

class val.sendTime
    implements Runnable
{

    final NativeLocListener this$0;
    private final Location val$lastLoc;
    private final long val$sendTime;

    public void run()
    {
        NativeLocListener.access$12(NativeLocListener.this, NativeLocListener.access$8(NativeLocListener.this), val$lastLoc, val$sendTime, NativeLocListener.access$9(NativeLocListener.this), NativeLocListener.access$10(NativeLocListener.this), NativeLocListener.access$11(NativeLocListener.this));
    }

    ()
    {
        this$0 = final_nativeloclistener;
        val$lastLoc = location;
        val$sendTime = J.this;
        super();
    }
}
