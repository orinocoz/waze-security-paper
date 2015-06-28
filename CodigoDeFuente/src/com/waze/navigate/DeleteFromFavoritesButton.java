// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import android.view.View;

// Referenced classes of package com.waze.navigate:
//            GenericView, AddressOptionsActivity, AddressItem, DriveToNativeManager

public class DeleteFromFavoritesButton extends GenericView
{

    public DeleteFromFavoritesButton()
    {
        super(Integer.valueOf(0x7f0201a7), 0x7f0700f5, Integer.valueOf(0));
    }

    void onClick(AddressOptionsActivity addressoptionsactivity, View view)
    {
        Log.d("WAZE", (new StringBuilder(String.valueOf(getClass().toString()))).append(":onClick").toString());
        AddressItem addressitem = addressoptionsactivity.getAddressItem();
        Log.d("WAZE", (new StringBuilder("fav= ")).append(addressitem.toString()).toString());
        DriveToNativeManager.getInstance().eraseAddressItem(addressitem);
        addressoptionsactivity.setResult(-1);
        addressoptionsactivity.finish();
    }
}
