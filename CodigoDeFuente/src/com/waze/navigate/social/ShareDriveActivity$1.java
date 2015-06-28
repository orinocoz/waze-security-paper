// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.ifs.async.RunnableExecutor;
import com.waze.main.navigate.LocationData;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0 extends RunnableExecutor
{

    final ShareDriveActivity this$0;

    public void event()
    {
        if (mType == 0)
        {
            ShareDriveActivity.access$0(ShareDriveActivity.this).setMeeting("");
            return;
        } else
        {
            ShareDriveActivity.access$0(ShareDriveActivity.this).setAddressOptionsView(0, ShareDriveActivity.access$1(ShareDriveActivity.this).locationX, ShareDriveActivity.access$1(ShareDriveActivity.this).locationY, true);
            postDelayed(new Runnable() {

                final ShareDriveActivity._cls1 this$1;

                public void run()
                {
                    if (ShareDriveActivity.access$2(this$0))
                    {
                        ShareDriveActivity.access$0(this$0).zoomOnMap(ShareDriveActivity.access$1(this$0).locationX, ShareDriveActivity.access$1(this$0).locationY, 500);
                        return;
                    } else
                    {
                        ShareDriveActivity.access$0(this$0).zoomOnMap(ShareDriveActivity.access$1(this$0).locationX, 500 + ShareDriveActivity.access$1(this$0).locationY, 500);
                        return;
                    }
                }

            
            {
                this$1 = ShareDriveActivity._cls1.this;
                super();
            }
            }, 100L);
            return;
        }
    }


    _cls1.this._cls1()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
