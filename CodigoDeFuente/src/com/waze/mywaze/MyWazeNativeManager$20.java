// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.nickname
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$nickname;
    private final String val$password;
    private final String val$username;

    public void run()
    {
        MyWazeNativeManager.access$34(MyWazeNativeManager.this, val$username, val$password, val$nickname);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$username = s;
        val$password = s1;
        val$nickname = String.this;
        super();
    }
}
