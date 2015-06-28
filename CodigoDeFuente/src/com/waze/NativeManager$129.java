// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.reports.VenueData;

// Referenced classes of package com.waze:
//            NativeManager

class val.force
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$force;
    private final String val$from;
    private final String val$questionId;
    private final VenueData val$venue;

    public void run()
    {
        NativeManager.access$79(NativeManager.this, val$venue, val$from, val$questionId, val$force);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$venue = venuedata;
        val$from = s;
        val$questionId = s1;
        val$force = Z.this;
        super();
    }
}
