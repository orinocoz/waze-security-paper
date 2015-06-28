// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.navigate:
//            GenericView, AddressOptionsActivity, AddressItem, DriveToNativeManager

public class GoButton extends GenericView
{

    public GoButton()
    {
        super(Integer.valueOf(0x7f0201cf), 0x7f0700f8, Integer.valueOf(0));
    }

    void onClick(AddressOptionsActivity addressoptionsactivity, View view)
    {
        Log.d("WAZE", (new StringBuilder(String.valueOf(getClass().toString()))).append(":onClick").toString());
        AddressItem addressitem = addressoptionsactivity.getAddressItem();
        if (addressitem.getType().intValue() == 1)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "HOME");
        } else
        if (addressitem.getType().intValue() == 3)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "WORK");
        } else
        if (addressitem.getType().intValue() == 5)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "OTHER_FAV");
        }
        if (addressitem.getType().intValue() != 9)
        {
            DriveToNativeManager drivetonativemanager = DriveToNativeManager.getInstance();
            int i = addressitem.getType().intValue();
            boolean flag = false;
            if (i != 11)
            {
                flag = true;
            }
            drivetonativemanager.navigate(addressitem, addressoptionsactivity, true, flag);
            DriveToNativeManager.getInstance().notifyAddressItemNavigate(addressitem.index);
            return;
        } else
        {
            DriveToNativeManager.getInstance().drive(addressitem.getMeetingId(), false);
            addressoptionsactivity.navigateCallback(0);
            return;
        }
    }
}
