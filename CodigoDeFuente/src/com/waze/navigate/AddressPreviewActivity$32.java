// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.DialogInterface;
import com.waze.NativeManager;
import com.waze.reports.VenueData;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem

class this._cls0
    implements android.content.tener
{

    final AddressPreviewActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            AddressPreviewActivity.access$20(AddressPreviewActivity.this).venueFlag(AddressPreviewActivity.access$6(AddressPreviewActivity.this).venueData.id, AddressPreviewActivity.access$33(AddressPreviewActivity.this), null, null);
            AddressPreviewActivity.access$34(AddressPreviewActivity.this);
        }
    }

    ner()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
