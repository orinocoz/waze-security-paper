// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;

// Referenced classes of package com.waze.reports:
//            AddPlaceFlowActivity, VenueData

class this._cls0
    implements Runnable
{

    final AddPlaceFlowActivity this$0;

    public void run()
    {
        AddPlaceFlowActivity.access$2(AddPlaceFlowActivity.this, AddPlaceFlowActivity.access$0(AddPlaceFlowActivity.this).getAddressByLocationNTV(AddPlaceFlowActivity.access$1(AddPlaceFlowActivity.this).longitude, AddPlaceFlowActivity.access$1(AddPlaceFlowActivity.this).latitude));
    }

    ()
    {
        this$0 = AddPlaceFlowActivity.this;
        super();
    }
}
