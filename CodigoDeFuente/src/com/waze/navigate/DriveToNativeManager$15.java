// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, NearbyStation

class t> extends RunnableUICallback
{

    private NearbyStation nearbyStations[];
    final DriveToNativeManager this$0;
    private final rbyStationsListener val$listener;

    public void callback()
    {
        val$listener.onComplete(nearbyStations);
    }

    public void event()
    {
        try
        {
            nearbyStations = DriveToNativeManager.access$14(DriveToNativeManager.this);
            return;
        }
        catch (Exception exception)
        {
            nearbyStations = null;
        }
    }

    rbyStationsListener()
    {
        this$0 = final_drivetonativemanager;
        val$listener = rbyStationsListener.this;
        super();
    }
}
