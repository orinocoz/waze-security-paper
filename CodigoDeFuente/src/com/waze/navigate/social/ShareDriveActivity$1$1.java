// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.ifs.async.RunnableExecutor;
import com.waze.main.navigate.LocationData;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        if (ShareDriveActivity.access$2(_fld0))
        {
            ShareDriveActivity.access$0(_fld0).zoomOnMap(ShareDriveActivity.access$1(_fld0).locationX, ShareDriveActivity.access$1(_fld0).locationY, 500);
            return;
        } else
        {
            ShareDriveActivity.access$0(_fld0).zoomOnMap(ShareDriveActivity.access$1(_fld0).locationX, 500 + ShareDriveActivity.access$1(_fld0).locationY, 500);
            return;
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/navigate/social/ShareDriveActivity$1

/* anonymous class */
    class ShareDriveActivity._cls1 extends RunnableExecutor
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
                postDelayed(new ShareDriveActivity._cls1._cls1(), 100L);
                return;
            }
        }


            
            {
                this$0 = ShareDriveActivity.this;
                super();
            }
    }

}
