// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.res.Configuration;
import android.content.res.Resources;
import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class this._cls0 extends RunnableExecutor
{

    final AddressPreviewActivity this$0;

    public void event()
    {
        AddressPreviewActivity.access$5(AddressPreviewActivity.this);
        final int locationX;
        final int locationY;
        if (getResources().getConfiguration().orientation == 1)
        {
            locationX = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue();
            locationY = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue() - (int)(AddressPreviewActivity.access$7(AddressPreviewActivity.this) * (float)AddressPreviewActivity.access$8(AddressPreviewActivity.this));
        } else
        {
            locationX = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue() + (int)((float)AddressPreviewActivity.access$1(AddressPreviewActivity.this) * AddressPreviewActivity.access$9(AddressPreviewActivity.this));
            locationY = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue();
        }
        postDelayed(new Runnable() {

            final AddressPreviewActivity._cls4 this$1;
            private final int val$locationX;
            private final int val$locationY;

            public void run()
            {
                AddressPreviewActivity.access$10(this$0).zoomOnMap(locationX, locationY, 2000);
            }

            
            {
                this$1 = AddressPreviewActivity._cls4.this;
                locationX = i;
                locationY = j;
                super();
            }
        }, 500L);
    }


    _cls1.val.locationY()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
