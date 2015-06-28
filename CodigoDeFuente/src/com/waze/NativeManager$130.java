// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.reports.VenueData;

// Referenced classes of package com.waze:
//            NativeManager

class val.questionId
    implements Runnable
{

    final NativeManager this$0;
    private final String val$from;
    private final VenueData val$origVenue;
    private final String val$questionId;
    private final VenueData val$venue;

    public void run()
    {
        NativeManager.access$80(NativeManager.this, val$venue, val$origVenue, val$from, val$questionId);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$venue = venuedata;
        val$origVenue = venuedata1;
        val$from = s;
        val$questionId = String.this;
        super();
    }
}
