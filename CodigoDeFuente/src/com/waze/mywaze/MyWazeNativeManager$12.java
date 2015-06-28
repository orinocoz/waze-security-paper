// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class init> extends RunnableUICallback
{

    String selection;
    final MyWazeNativeManager this$0;
    private final rCarCallback val$cb;

    public void callback()
    {
        val$cb.onUserCar(selection);
    }

    public void event()
    {
        selection = MyWazeNativeManager.access$26(MyWazeNativeManager.this);
    }

    rCarCallback()
    {
        this$0 = final_mywazenativemanager;
        val$cb = rCarCallback.this;
        super();
    }
}
