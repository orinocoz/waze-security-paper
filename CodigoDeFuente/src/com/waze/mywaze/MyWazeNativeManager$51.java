// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.NativeManager;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        MyWazeNativeManager.access$57(MyWazeNativeManager.this);
        NativeManager.getInstance().logAnalytics("FACEBOOK_DISCONNECT", false, false);
    }

    ()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}