// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navigate.AddressItem;

// Referenced classes of package com.waze:
//            NativeManager

class val.typedQuery
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Query;
    private final String val$Ref;
    private final boolean val$bHistoryStat;
    private final boolean val$bToDrive;
    private final AddressItem val$calendarAI;
    private final int val$feature;
    private final String val$response;
    private final String val$typedQuery;
    private final String val$venueID;
    private final String val$venue_context;

    public void run()
    {
        String s;
        if (val$calendarAI != null)
        {
            s = val$calendarAI.getMeetingId();
            NativeManager.access$35(NativeManager.this, val$calendarAI);
            NativeManager.access$36(NativeManager.this).VanueID = val$venueID;
        } else
        {
            NativeManager.access$35(NativeManager.this, null);
            s = null;
        }
        NativeManager.access$37(NativeManager.this, val$venueID, val$Ref, s, val$venue_context, val$bToDrive, val$Query, val$bHistoryStat, val$feature, val$response, val$typedQuery);
    }

    tem()
    {
        this$0 = final_nativemanager;
        val$calendarAI = addressitem;
        val$venueID = s;
        val$Ref = s1;
        val$venue_context = s2;
        val$bToDrive = flag;
        val$Query = s3;
        val$bHistoryStat = flag1;
        val$feature = i;
        val$response = s4;
        val$typedQuery = String.this;
        super();
    }
}
