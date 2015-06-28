// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;

// Referenced classes of package com.waze.reports:
//            EditPlaceFlowActivity, VenueData

class this._cls0
    implements Runnable
{

    final EditPlaceFlowActivity this$0;

    public void run()
    {
        EditPlaceFlowActivity.access$3(EditPlaceFlowActivity.this, EditPlaceFlowActivity.access$0(EditPlaceFlowActivity.this).getAddressByLocationNTV(EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).longitude, EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).latitude));
    }

    ()
    {
        this$0 = EditPlaceFlowActivity.this;
        super();
    }
}
