// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;
import com.waze.reports.EditPlaceFlowActivity;
import com.waze.reports.VenueData;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem

class this._cls0
    implements android.view.y._cls29
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(AddressPreviewActivity.this, com/waze/reports/EditPlaceFlowActivity);
        intent.putExtra(com/waze/reports/VenueData.getName(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData);
        startActivityForResult(intent, 109);
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
