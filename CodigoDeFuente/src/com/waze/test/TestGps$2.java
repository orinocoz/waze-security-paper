// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.waze.test:
//            TestGps

class this._cls0
    implements LocationListener
{

    final TestGps this$0;

    public void onLocationChanged(Location location)
    {
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }

    n()
    {
        this$0 = TestGps.this;
        super();
    }
}
