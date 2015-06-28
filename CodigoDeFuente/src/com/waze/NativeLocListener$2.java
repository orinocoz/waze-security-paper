// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.location.Location;

// Referenced classes of package com.waze:
//            NativeLocListener

class val.fixTime
    implements Runnable
{

    final NativeLocListener this$0;
    private final long val$fixTime;
    private final Location val$location;
    private final int val$status;

    public void run()
    {
        NativeLocListener.access$12(NativeLocListener.this, val$status, val$location, val$fixTime, NativeLocListener.access$9(NativeLocListener.this), NativeLocListener.access$10(NativeLocListener.this), NativeLocListener.access$11(NativeLocListener.this));
    }

    ()
    {
        this$0 = final_nativeloclistener;
        val$status = i;
        val$location = location1;
        val$fixTime = J.this;
        super();
    }
}
