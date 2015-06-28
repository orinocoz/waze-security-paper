// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navbar;

import com.waze.NativeManager;
import com.waze.main.navigate.LocationData;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.navbar:
//            NavBar

class this._cls0
    implements com.waze.navigate.iveManager.LocationDataListener
{

    final NavBar this$0;

    public void onComplete(LocationData locationdata)
    {
        destinationData = locationdata;
        NavBar.access$0(NavBar.this).setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        NavBar.access$10(NavBar.this).venueGet(NavBar.access$15(NavBar.this), 0);
    }

    ationData()
    {
        this$0 = NavBar.this;
        super();
    }
}
