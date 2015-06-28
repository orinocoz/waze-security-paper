// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.main.navigate.LocationData;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private LocationData locationData;
    final DriveToNativeManager this$0;
    private final String val$Index;
    private final ationDataListener val$listener;
    private final Integer val$locationX;
    private final Integer val$locationY;
    private final int val$type;

    public void callback()
    {
        val$listener.onComplete(locationData);
    }

    public void event()
    {
        try
        {
            locationData = DriveToNativeManager.access$42(DriveToNativeManager.this, val$type, val$locationX.intValue(), val$locationY.intValue(), val$Index);
            return;
        }
        catch (Exception exception)
        {
            locationData = null;
        }
    }

    ationDataListener()
    {
        this$0 = final_drivetonativemanager;
        val$type = i;
        val$locationX = integer;
        val$locationY = integer1;
        val$Index = s;
        val$listener = ationDataListener.this;
        super();
    }
}
