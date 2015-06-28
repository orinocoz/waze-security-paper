// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.waze.LayoutManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

class anager extends Handler
{

    final PoiPopUp this$0;
    private final DriveToNativeManager val$dtnm;

    public void handleMessage(Message message)
    {
        AddressItem addressitem;
label0:
        {
            if (message.what == DriveToNativeManager.UH_SEARCH_ADD_RESULT)
            {
                NativeManager.getInstance().CloseProgressPopup();
                PoiPopUp.access$14(PoiPopUp.this).removeCallbacks(PoiPopUp.access$15(PoiPopUp.this));
                addressitem = (AddressItem)message.getData().getSerializable("address_item");
                val$dtnm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, PoiPopUp.access$14(PoiPopUp.this));
                if (!addressitem.getLocationX().equals(Integer.valueOf(-1)) || !addressitem.getLocationY().equals(Integer.valueOf(-1)))
                {
                    break label0;
                }
                if (PoiPopUp.access$15(PoiPopUp.this) != null)
                {
                    PoiPopUp.access$15(PoiPopUp.this).run();
                    PoiPopUp.access$16(PoiPopUp.this, null);
                }
            }
            return;
        }
        PoiPopUp.access$16(PoiPopUp.this, null);
        PoiPopUp.access$6().callCloseAllPopups(1);
        val$dtnm.navigate(addressitem, null, false, true);
        Analytics.adsContextNavigationInit();
    }

    anager()
    {
        this$0 = final_poipopup;
        val$dtnm = DriveToNativeManager.this;
        super();
    }
}
