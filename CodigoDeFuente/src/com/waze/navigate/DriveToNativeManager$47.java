// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.waze.AppService;
import com.waze.MainActivity;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, AddressItem, AddressPreviewActivity

class this._cls0 extends Handler
{

    final DriveToNativeManager this$0;

    public void handleMessage(Message message)
    {
        AddressItem addressitem;
        if (message.what != DriveToNativeManager.UH_SEARCH_ADD_RESULT)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, this);
        addressitem = (AddressItem)message.getData().getSerializable("address_item");
        if (addressitem != null) goto _L2; else goto _L1
_L1:
        MainActivity mainactivity;
        return;
_L2:
        if ((mainactivity = AppService.getMainActivity()) == null) goto _L1; else goto _L3
_L3:
        Intent intent = new Intent(mainactivity, com/waze/navigate/AddressPreviewActivity);
        intent.putExtra("AddressItem", addressitem);
        mainactivity.startActivity(intent);
        return;
        super.handleMessage(message);
        return;
    }

    ()
    {
        this$0 = DriveToNativeManager.this;
        super();
    }
}
