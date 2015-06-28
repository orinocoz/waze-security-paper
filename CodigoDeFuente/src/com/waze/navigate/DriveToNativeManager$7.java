// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.navigate.social.FriendsListData;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class it> extends RunnableUICallback
{

    private FriendsListData data;
    final DriveToNativeManager this$0;
    private final iendsListListener val$listener;
    private final int val$locX;
    private final int val$locY;

    public void callback()
    {
        val$listener.onComplete(data);
    }

    public void event()
    {
        try
        {
            data = DriveToNativeManager.access$6(DriveToNativeManager.this, val$locX, val$locY);
            return;
        }
        catch (Exception exception)
        {
            data = null;
        }
    }

    iendsListListener()
    {
        this$0 = final_drivetonativemanager;
        val$locX = i;
        val$locY = j;
        val$listener = iendsListListener.this;
        super();
    }
}
