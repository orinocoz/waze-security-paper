// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.profile.RegisterActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        if (MyWazeNativeManager.access$43(MyWazeNativeManager.this) != null)
        {
            MyWazeNativeManager.access$43(MyWazeNativeManager.this).openWelcome();
            MyWazeNativeManager.access$44(MyWazeNativeManager.this, null);
        }
    }

    ()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
