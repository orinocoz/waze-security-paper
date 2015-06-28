// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager, Group

class init> extends RunnableUICallback
{

    Group groups[];
    final MyWazeNativeManager this$0;
    private final GroupsListener val$listener;

    public void callback()
    {
        val$listener.onComplete(groups);
    }

    public void event()
    {
        groups = MyWazeNativeManager.access$25(MyWazeNativeManager.this);
    }

    GroupsListener()
    {
        this$0 = final_mywazenativemanager;
        val$listener = GroupsListener.this;
        super();
    }
}
