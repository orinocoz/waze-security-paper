// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager, Group

class val.group
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final Group val$group;

    public void run()
    {
        MyWazeNativeManager.access$30(MyWazeNativeManager.this, val$group.name, val$group.icon);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$group = Group.this;
        super();
    }
}
