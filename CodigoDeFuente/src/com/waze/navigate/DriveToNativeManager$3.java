// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.navigate.social.AddFriendsData;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class it> extends RunnableUICallback
{

    private AddFriendsData data;
    final DriveToNativeManager this$0;
    private final dFriendsListener val$listener;

    public void callback()
    {
        val$listener.onComplete(data);
    }

    public void event()
    {
        try
        {
            data = DriveToNativeManager.access$2(DriveToNativeManager.this);
            return;
        }
        catch (Exception exception)
        {
            data = null;
        }
    }

    dFriendsListener()
    {
        this$0 = final_drivetonativemanager;
        val$listener = dFriendsListener.this;
        super();
    }
}
