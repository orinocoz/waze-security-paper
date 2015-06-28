// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.LayoutManager;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.iTimeOut
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final FriendUserData val$friendLocation;
    private final int val$iTimeOut;
    private final LayoutManager val$layoutMgr;

    public void run()
    {
        val$layoutMgr.showFriendOnTheWayPopup(val$friendLocation, val$iTimeOut);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$layoutMgr = layoutmanager;
        val$friendLocation = frienduserdata;
        val$iTimeOut = I.this;
        super();
    }
}
