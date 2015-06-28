// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.reports:
//            AddPlaceNewFragment, VenueData

class it> extends RunnableExecutor
{

    final AddPlaceNewFragment this$0;

    public void event()
    {
        if (mVenue.longitude == 0 || mVenue.latitude == 0)
        {
            com.waze.veLocation velocation = NativeLocListener.GetNativeLocation(NativeLocListener.getInstance().getLastLocation());
            mVenue.longitude = velocation.mLongtitude;
            mVenue.latitude = velocation.mLatitude;
        }
        NativeManager.Post(new Runnable() {

            final AddPlaceNewFragment._cls2 this$1;

            public void run()
            {
                AddPlaceNewFragment.access$0(this$0);
                AddPlaceNewFragment.access$1(this$0).zoomOnMap(mVenue.longitude, mVenue.latitude, 250);
            }

            
            {
                this$1 = AddPlaceNewFragment._cls2.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = AddPlaceNewFragment.this;
        super();
    }
}
