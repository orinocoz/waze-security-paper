// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import com.waze.AppService;
import com.waze.reports.VenueData;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem

class this._cls0
    implements android.view.y._cls19
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        AddressPreviewActivity.access$2(AddressPreviewActivity.this, "ADS_PREVIEW_URL_CLICKED");
        AppService.OpenBrowser(AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData.website);
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
