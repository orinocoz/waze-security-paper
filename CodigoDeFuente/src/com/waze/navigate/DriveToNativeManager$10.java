// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.navigate.social.FriendsListData;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private FriendsListData data;
    final DriveToNativeManager this$0;
    private final endsListListener val$listener;

    public void callback()
    {
        val$listener.onComplete(data);
    }

    public void event()
    {
        try
        {
            data = DriveToNativeManager.access$9(DriveToNativeManager.this);
            return;
        }
        catch (Exception exception)
        {
            data = null;
        }
    }

    endsListListener()
    {
        this$0 = final_drivetonativemanager;
        val$listener = endsListListener.this;
        super();
    }
}
