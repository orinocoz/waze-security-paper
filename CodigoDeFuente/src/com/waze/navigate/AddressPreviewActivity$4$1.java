// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.res.Configuration;
import android.content.res.Resources;
import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, DriveToNativeManager, AddressItem

class val.locationY
    implements Runnable
{

    final val.locationY this$1;
    private final int val$locationX;
    private final int val$locationY;

    public void run()
    {
        AddressPreviewActivity.access$10(_fld0).zoomOnMap(val$locationX, val$locationY, 2000);
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$locationX = i;
        val$locationY = I.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/AddressPreviewActivity$4

/* anonymous class */
    class AddressPreviewActivity._cls4 extends RunnableExecutor
    {

        final AddressPreviewActivity this$0;

        public void event()
        {
            AddressPreviewActivity.access$5(AddressPreviewActivity.this);
            final int locationX;
            int i;
            if (getResources().getConfiguration().orientation == 1)
            {
                locationX = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue();
                i = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue() - (int)(AddressPreviewActivity.access$7(AddressPreviewActivity.this) * (float)AddressPreviewActivity.access$8(AddressPreviewActivity.this));
            } else
            {
                locationX = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue() + (int)((float)AddressPreviewActivity.access$1(AddressPreviewActivity.this) * AddressPreviewActivity.access$9(AddressPreviewActivity.this));
                i = AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue();
            }
            postDelayed(i. new AddressPreviewActivity._cls4._cls1(), 500L);
        }


            
            {
                this$0 = AddressPreviewActivity.this;
                super();
            }
    }

}
