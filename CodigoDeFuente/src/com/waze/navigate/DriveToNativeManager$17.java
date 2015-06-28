// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.autocomplete.PlaceData;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private PlaceData AdsData;
    final DriveToNativeManager this$0;
    private final oCompleteAdsResult val$listener;
    private final String val$query;

    public void callback()
    {
        val$listener.onComplete(AdsData);
    }

    public void event()
    {
        AdsData = DriveToNativeManager.access$16(DriveToNativeManager.this, val$query);
    }

    oCompleteAdsResult()
    {
        this$0 = final_drivetonativemanager;
        val$query = s;
        val$listener = oCompleteAdsResult.this;
        super();
    }
}
