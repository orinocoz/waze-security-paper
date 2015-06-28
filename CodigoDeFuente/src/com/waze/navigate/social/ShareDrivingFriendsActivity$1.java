// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.navigate.social:
//            ShareDrivingFriendsActivity

class this._cls0 extends RunnableExecutor
{

    final ShareDrivingFriendsActivity this$0;

    public void event()
    {
        if (!ShareDrivingFriendsActivity.access$0(ShareDrivingFriendsActivity.this))
        {
            DriveToNativeManager.getInstance().setMeeting(sMeeting);
            ShareDrivingFriendsActivity.access$1(ShareDrivingFriendsActivity.this, true);
        }
    }

    ()
    {
        this$0 = ShareDrivingFriendsActivity.this;
        super();
    }
}
