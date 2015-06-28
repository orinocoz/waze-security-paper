// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.updates
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$email;
    private final String val$nickname;
    private final String val$password;
    private final boolean val$updates;
    private final String val$username;

    public void run()
    {
        MyWazeNativeManager.access$42(MyWazeNativeManager.this, val$username, val$password, val$nickname, val$email, val$updates);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$username = s;
        val$password = s1;
        val$nickname = s2;
        val$email = s3;
        val$updates = Z.this;
        super();
    }
}
