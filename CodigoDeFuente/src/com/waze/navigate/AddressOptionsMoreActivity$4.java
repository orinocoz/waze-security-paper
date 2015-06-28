// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsMoreActivity, AddFavoriteNameActivity, DriveToNativeManager

class this._cls0
    implements android.view.ty._cls4
{

    final AddressOptionsMoreActivity this$0;

    public void onClick(View view)
    {
        if (AddressOptionsMoreActivity.access$2(AddressOptionsMoreActivity.this))
        {
            Intent intent = new Intent(AddressOptionsMoreActivity.this, com/waze/navigate/AddFavoriteNameActivity);
            intent.putExtra("AddressItem", AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this));
            startActivityForResult(intent, 1);
            return;
        } else
        {
            DriveToNativeManager.getInstance().eraseAddressItem(AddressOptionsMoreActivity.access$0(AddressOptionsMoreActivity.this));
            setResult(-1);
            finish();
            return;
        }
    }

    ()
    {
        this$0 = AddressOptionsMoreActivity.this;
        super();
    }
}
