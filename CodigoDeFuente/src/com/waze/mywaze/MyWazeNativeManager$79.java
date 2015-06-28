// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.LastName
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final boolean val$IsConnectOnly;
    private final String val$LastName;
    private final boolean val$bIsForce;
    private final String val$firstName;

    public void run()
    {
        MyWazeNativeManager.access$78(MyWazeNativeManager.this, val$bIsForce, val$IsConnectOnly, val$firstName, val$LastName);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$bIsForce = flag;
        val$IsConnectOnly = flag1;
        val$firstName = s;
        val$LastName = String.this;
        super();
    }
}
