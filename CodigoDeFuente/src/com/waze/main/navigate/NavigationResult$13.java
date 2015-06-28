// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import com.waze.NativeManager;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult, LocationData

class val.wazesPhones
    implements com.waze.navigate..LocationDataListener
{

    final NavigationResult this$0;
    private final int val$addUids[];
    private final int val$inviteIds[];
    private final String val$invitePhones[];
    private final String val$wazesPhones[];

    public void onComplete(LocationData locationdata)
    {
        NativeManager.getInstance().CreateMeetingBulk(locationdata.locationName, "ShareDrive", locationdata.locationX, locationdata.locationY, val$addUids, val$invitePhones, val$inviteIds, numAdd, numInvite, true, val$wazesPhones, locationdata.mStreet, locationdata.mCity, null, true, locationdata.mVenueId);
    }

    tionDataListener()
    {
        this$0 = final_navigationresult;
        val$addUids = ai;
        val$invitePhones = as;
        val$inviteIds = ai1;
        val$wazesPhones = _5B_Ljava.lang.String_3B_.this;
        super();
    }
}
