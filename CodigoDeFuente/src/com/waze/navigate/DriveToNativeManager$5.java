// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class it> extends RunnableUICallback
{

    private int nFriends;
    final DriveToNativeManager this$0;
    private final mberOfFriendsDrivingListener val$listener;

    public void callback()
    {
        val$listener.onComplete(nFriends);
    }

    public void event()
    {
        try
        {
            nFriends = DriveToNativeManager.access$4(DriveToNativeManager.this);
            return;
        }
        catch (Exception exception)
        {
            nFriends = -1;
        }
    }

    mberOfFriendsDrivingListener()
    {
        this$0 = final_drivetonativemanager;
        val$listener = mberOfFriendsDrivingListener.this;
        super();
    }
}
