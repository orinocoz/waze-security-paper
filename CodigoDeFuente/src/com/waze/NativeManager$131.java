// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.reports.VenueData;

// Referenced classes of package com.waze:
//            NativeManager

class val.venue
    implements Runnable
{

    final NativeManager this$0;
    private final VenueData val$venue;

    public void run()
    {
        NativeManager.access$81(NativeManager.this, val$venue);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$venue = VenueData.this;
        super();
    }
}
