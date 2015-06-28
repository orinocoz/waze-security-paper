// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.allowPings
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final boolean val$allowPings;
    private final String val$nickname;
    private final String val$password;
    private final String val$username;

    public void run()
    {
        MyWazeNativeManager.access$31(MyWazeNativeManager.this, val$username, val$password, val$nickname, val$allowPings);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$username = s;
        val$password = s1;
        val$nickname = s2;
        val$allowPings = Z.this;
        super();
    }
}
