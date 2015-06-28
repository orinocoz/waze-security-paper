// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.ty._cls6
{

    final AddressOptionsActivity this$0;

    public void onClick(View view)
    {
        AddressOptionsActivity.access$0(AddressOptionsActivity.this).VerifyEventByIndex(AddressOptionsActivity.access$1(AddressOptionsActivity.this).index, AddressOptionsActivity.access$1(AddressOptionsActivity.this).getMeetingId(), AddressOptionsActivity.access$9(AddressOptionsActivity.this).getId(), Boolean.valueOf(false));
        Analytics.log("VERIFY_EVENT_SAVE_EVENT_LOCATION");
        Intent intent = new Intent();
        intent.putExtra("AddressItem", AddressOptionsActivity.access$1(AddressOptionsActivity.this));
        setResult(32782, intent);
        finish();
    }

    ()
    {
        this$0 = AddressOptionsActivity.this;
        super();
    }
}
