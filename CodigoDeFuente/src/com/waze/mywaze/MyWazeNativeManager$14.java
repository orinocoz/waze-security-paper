// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.email
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$email;
    private final String val$first;
    private final String val$last;
    private final String val$password;
    private final String val$user;

    public void run()
    {
        MyWazeNativeManager.access$28(MyWazeNativeManager.this, val$first, val$last, val$user, val$password, val$email);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$first = s;
        val$last = s1;
        val$user = s2;
        val$password = s3;
        val$email = String.this;
        super();
    }
}
