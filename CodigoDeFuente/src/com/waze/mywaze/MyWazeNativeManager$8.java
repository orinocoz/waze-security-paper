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

    ursquareSettings settings;
    final MyWazeNativeManager this$0;
    private final ursquareCallback val$cb;

    public void callback()
    {
        Log.d("WAZE", "getFoursquareSettings - callback");
        val$cb.onFoursquareSettings(settings);
    }

    public void event()
    {
        Log.d("WAZE", "getFoursquareSettings - event");
        settings = new ursquareSettings();
        settings.loggedIn = MyWazeNativeManager.access$21(MyWazeNativeManager.this);
        settings.enableTweetLogin = MyWazeNativeManager.access$22(MyWazeNativeManager.this);
        settings.enableTweetBadge = MyWazeNativeManager.access$23(MyWazeNativeManager.this);
        settings.checkInAfterLogin = false;
    }

    ursquareCallback()
    {
        this$0 = final_mywazenativemanager;
        val$cb = ursquareCallback.this;
        super();
    }
}
