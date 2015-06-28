// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity, AddressItem, DriveToNativeManager

class this._cls0 extends RunnableExecutor
{

    final AddressOptionsActivity this$0;

    public void event()
    {
        AddressOptionsActivity.access$0(AddressOptionsActivity.this).setAddressOptionsView(AddressOptionsActivity.access$1(AddressOptionsActivity.this).index, AddressOptionsActivity.access$1(AddressOptionsActivity.this).getLocationX().intValue(), AddressOptionsActivity.access$1(AddressOptionsActivity.this).getLocationY().intValue(), true);
    }

    ()
    {
        this$0 = AddressOptionsActivity.this;
        super();
    }
}
