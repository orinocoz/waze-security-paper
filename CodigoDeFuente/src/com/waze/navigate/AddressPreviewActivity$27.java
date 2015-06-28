// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.y._cls27
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        AddressPreviewActivity.access$31(AddressPreviewActivity.this);
        AddressPreviewActivity.access$10(AddressPreviewActivity.this).centerMapInAddressOptionsView(AddressPreviewActivity.access$6(AddressPreviewActivity.this).index, AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), false, AddressPreviewActivity.access$6(AddressPreviewActivity.this).getIcon());
        AddressPreviewActivity.access$10(AddressPreviewActivity.this).showOnMap(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue());
        setResult(3);
        AddressPreviewActivity.access$22(AddressPreviewActivity.this, true);
        finish();
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
