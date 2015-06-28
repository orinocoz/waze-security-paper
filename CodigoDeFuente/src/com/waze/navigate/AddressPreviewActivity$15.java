// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.y._cls15
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        AddressPreviewActivity.access$10(AddressPreviewActivity.this).VerifyEventByIndex(AddressPreviewActivity.access$6(AddressPreviewActivity.this).index, AddressPreviewActivity.access$6(AddressPreviewActivity.this).getMeetingId(), AddressPreviewActivity.access$21(AddressPreviewActivity.this).getId(), Boolean.valueOf(false));
        Analytics.log("VERIFY_EVENT_SAVE_EVENT_LOCATION");
        Intent intent = new Intent();
        intent.putExtra("AddressItem", AddressPreviewActivity.access$6(AddressPreviewActivity.this));
        setResult(32782, intent);
        AddressPreviewActivity.access$22(AddressPreviewActivity.this, true);
        finish();
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
