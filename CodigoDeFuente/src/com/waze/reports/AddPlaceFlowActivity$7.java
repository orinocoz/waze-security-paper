// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.reports:
//            AddPlaceFlowActivity, VenueData

class this._cls0
    implements android.view.y._cls7
{

    final AddPlaceFlowActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("PLACES_THANK_YOU_POPUP_CLICKED", "CONTINUE|VENUE_ID", (new StringBuilder("TRUE|")).append(AddPlaceFlowActivity.access$7(AddPlaceFlowActivity.this).id).toString());
        wantMore();
    }

    ()
    {
        this$0 = AddPlaceFlowActivity.this;
        super();
    }
}
