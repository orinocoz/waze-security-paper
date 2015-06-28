// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class this._cls0
    implements android.view.y._cls11
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        int i = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getType().intValue();
        if (i == 1)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "HOME");
        } else
        if (i == 3)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "WORK");
        } else
        if (i == 5)
        {
            Analytics.log("DRIVE_TYPE", "VAUE", "OTHER_FAV");
        }
        AddressPreviewActivity.access$2(AddressPreviewActivity.this, "ADS_PREVIEW_NAVIGATE");
        Analytics.adsContextNavigationInit();
        if (i != 9)
        {
            boolean flag = false;
            if (i != 11)
            {
                flag = true;
            }
            AddressPreviewActivity.access$10(AddressPreviewActivity.this).navigate(AddressPreviewActivity.access$6(AddressPreviewActivity.this), AddressPreviewActivity.this, true, flag);
            DriveToNativeManager.getInstance().notifyAddressItemNavigate(AddressPreviewActivity.access$6(AddressPreviewActivity.this).index);
            return;
        } else
        {
            AddressPreviewActivity.access$10(AddressPreviewActivity.this).drive(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getMeetingId(), false);
            navigateCallback(0);
            return;
        }
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
