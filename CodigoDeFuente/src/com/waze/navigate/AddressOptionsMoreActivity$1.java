// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsMoreActivity, DriveToNativeManager, AddressItem

class this._cls0
    implements android.view.ty._cls1
{

    final AddressOptionsMoreActivity this$0;

    public void onClick(View view)
    {
        boolean flag = true;
        DriveToNativeManager drivetonativemanager = DriveToNativeManager.getInstance();
        if (AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this).getCategory().intValue() == flag)
        {
            flag = false;
        }
        drivetonativemanager.navigate(AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this), null, false, flag);
        setResult(2);
        finish();
    }

    ()
    {
        this$0 = AddressOptionsMoreActivity.this;
        super();
    }
}
