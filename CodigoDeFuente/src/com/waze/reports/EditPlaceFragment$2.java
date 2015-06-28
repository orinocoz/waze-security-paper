// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeLocListener;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment, VenueData

class init> extends RunnableExecutor
{

    final EditPlaceFragment this$0;

    public void event()
    {
        if (EditPlaceFragment.access$0(EditPlaceFragment.this).longitude == 0 || EditPlaceFragment.access$0(EditPlaceFragment.this).latitude == 0)
        {
            com.waze.tiveLocation tivelocation = NativeLocListener.GetNativeLocation(NativeLocListener.getInstance().getLastLocation());
            EditPlaceFragment.access$0(EditPlaceFragment.this).longitude = tivelocation.mLongtitude;
            EditPlaceFragment.access$0(EditPlaceFragment.this).latitude = tivelocation.mLatitude;
        }
        EditPlaceFragment.access$1(EditPlaceFragment.this);
        EditPlaceFragment.access$2(EditPlaceFragment.this).zoomOnMap(EditPlaceFragment.access$0(EditPlaceFragment.this).longitude, EditPlaceFragment.access$0(EditPlaceFragment.this).latitude, 250);
    }

    r()
    {
        this$0 = EditPlaceFragment.this;
        super();
    }
}
