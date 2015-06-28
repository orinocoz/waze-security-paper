// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import com.waze.reports.VenueData;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, AddressItem

class val.onGoAnalytics
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final AddressItem val$ai;
    private final boolean val$onGoAnalytics;
    private final boolean val$storeAddress;

    public void run()
    {
        Log.d("WAZE", (new StringBuilder("navigate event running in thread ")).append(Thread.currentThread().getId()).toString());
        Log.d("WAZE", (new StringBuilder("ai=")).append(val$ai).toString());
        if (val$storeAddress)
        {
            String s2 = DriveToNativeManager.access$28(DriveToNativeManager.this, val$ai);
            if (s2 != null)
            {
                val$ai.setId(s2);
            }
        }
        String s = "";
        if (val$ai.venueData != null && val$ai.venueData.RoutingContext != null)
        {
            s = val$ai.venueData.RoutingContext;
        }
        if (val$onGoAnalytics)
        {
            DriveToNativeManager.access$29(DriveToNativeManager.this, val$ai.index);
        }
        String s1 = val$ai.getTitle();
        if (val$ai.getCategory().intValue() == 7)
        {
            s1 = val$ai.getSecondaryTitle();
        }
        if (s1 == null || s1.isEmpty())
        {
            s1 = val$ai.getAddress();
        }
        DriveToNativeManager.access$30(DriveToNativeManager.this, val$ai.getLocationX().intValue(), val$ai.getLocationY().intValue(), s1, val$ai.getDealId(), val$ai.advPointId, val$ai.VanueID, val$ai.getId(), val$ai.getCountry(), val$ai.getState(), val$ai.getCity(), val$ai.getStreet(), val$ai.getHouse(), s);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$ai = addressitem;
        val$storeAddress = flag;
        val$onGoAnalytics = Z.this;
        super();
    }
}
