// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsMoreActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.ty._cls3
{

    final AddressOptionsMoreActivity this$0;

    public void onClick(View view)
    {
        AddressOptionsMoreActivity.access$1(AddressOptionsMoreActivity.this).centerMapInAddressOptionsView(AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this).index, AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this).getLocationX().intValue(), AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this).getLocationY().intValue(), false, AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this).getIcon());
        AddressOptionsMoreActivity.access$1(AddressOptionsMoreActivity.this).showOnMap(AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this).getLocationX().intValue(), AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this).getLocationY().intValue());
        setResult(3);
        finish();
    }

    ()
    {
        this$0 = AddressOptionsMoreActivity.this;
        super();
    }
}
