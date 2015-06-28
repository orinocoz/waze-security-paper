// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.util.Log;
import android.view.View;

// Referenced classes of package com.waze.navigate:
//            GenericView, AddFavoriteNameActivity, AddressOptionsActivity

public class AddToFavoritesButton extends GenericView
{

    public AddToFavoritesButton()
    {
        super(Integer.valueOf(0x7f0201a6), 0x7f0700f6, Integer.valueOf(0));
    }

    void onClick(AddressOptionsActivity addressoptionsactivity, View view)
    {
        Log.d("WAZE", (new StringBuilder(String.valueOf(getClass().toString()))).append(":onClick").toString());
        Intent intent = new Intent(addressoptionsactivity, com/waze/navigate/AddFavoriteNameActivity);
        intent.putExtra("AddressItem", addressoptionsactivity.getAddressItem());
        addressoptionsactivity.startActivityForResult(intent, 1);
    }
}
