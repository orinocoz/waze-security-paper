// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.message
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final int val$ids[];
    private final String val$message;
    private final String val$phones[];

    public void run()
    {
        MyWazeNativeManager.access$52(MyWazeNativeManager.this, val$ids, val$phones, val$message);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$ids = ai;
        val$phones = as;
        val$message = String.this;
        super();
    }
}
