// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class <init> extends RunnableUICallback
{

    itterSettings settings;
    final MyWazeNativeManager this$0;
    private final itterCallback val$cb;

    public void callback()
    {
        Log.d("WAZE", "getTwitterSettings - callback");
        val$cb.onTwitterSettings(settings);
    }

    public void event()
    {
        Log.d("WAZE", "getTwitterSettings - event");
        settings = new itterSettings();
        settings.loggedIn = MyWazeNativeManager.access$16(MyWazeNativeManager.this);
        settings.postReports = MyWazeNativeManager.access$17(MyWazeNativeManager.this);
        settings.postDriving = MyWazeNativeManager.access$18(MyWazeNativeManager.this);
        settings.postMunching = MyWazeNativeManager.access$19(MyWazeNativeManager.this);
        settings.showMunching = MyWazeNativeManager.access$20(MyWazeNativeManager.this);
    }

    itterCallback()
    {
        this$0 = final_mywazenativemanager;
        val$cb = itterCallback.this;
        super();
    }
}
