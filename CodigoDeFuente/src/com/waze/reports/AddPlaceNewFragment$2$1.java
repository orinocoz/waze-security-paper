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

class this._cls1
    implements Runnable
{

    final ue this$1;

    public void run()
    {
        AddPlaceNewFragment.access$0(_fld0);
        AddPlaceNewFragment.access$1(_fld0).zoomOnMap(mVenue.longitude, mVenue.latitude, 250);
    }

    >()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/reports/AddPlaceNewFragment$2

/* anonymous class */
    class AddPlaceNewFragment._cls2 extends RunnableExecutor
    {

        final AddPlaceNewFragment this$0;

        public void event()
        {
            if (mVenue.longitude == 0 || mVenue.latitude == 0)
            {
                com.waze.NativeLocListener.NativeLocation nativelocation = NativeLocListener.GetNativeLocation(NativeLocListener.getInstance().getLastLocation());
                mVenue.longitude = nativelocation.mLongtitude;
                mVenue.latitude = nativelocation.mLatitude;
            }
            NativeManager.Post(new AddPlaceNewFragment._cls2._cls1());
        }


            
            {
                this$0 = AddPlaceNewFragment.this;
                super();
            }
    }

}
