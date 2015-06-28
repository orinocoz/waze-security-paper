// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.accessToken
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$accessToken;

    public void run()
    {
        MyWazeNativeManager.access$76(MyWazeNativeManager.this, val$accessToken);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$accessToken = String.this;
        super();
    }
}
