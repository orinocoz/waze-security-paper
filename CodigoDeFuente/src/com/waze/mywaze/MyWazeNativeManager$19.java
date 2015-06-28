// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        if (MyWazeNativeManager.access$32(MyWazeNativeManager.this) != null)
        {
            MyWazeNativeManager.access$32(MyWazeNativeManager.this).onLogin(true);
            MyWazeNativeManager.access$33(MyWazeNativeManager.this, null);
        }
    }

    inCallback()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
