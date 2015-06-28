// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.navigate.AddressItem;
import com.waze.navigate.AddressPreviewActivity;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze:
//            MainActivity, NativeManager

class sItem
    implements Runnable
{

    final MainActivity this$0;
    private final AddressItem val$defaultItem;

    public void run()
    {
        DriveToNativeManager.getInstance().unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, MainActivity.access$2(MainActivity.this));
        NativeManager.getInstance().CloseProgressPopup();
        MainActivity.access$3(MainActivity.this, null);
        Intent intent = new Intent(MainActivity.this, com/waze/navigate/AddressPreviewActivity);
        intent.putExtra("AddressItem", val$defaultItem);
        startActivityForResult(intent, 1);
    }

    sItem()
    {
        this$0 = final_mainactivity;
        val$defaultItem = AddressItem.this;
        super();
    }
}
