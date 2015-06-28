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

    cebookSettings settings;
    final MyWazeNativeManager this$0;
    private final cebookCallback val$cb;

    public void callback()
    {
        Log.d("WAZE", "getFacebookSettings - callback");
        val$cb.onFacebookSettings(settings);
    }

    public void event()
    {
        Log.d("WAZE", "getFacebookSettings - event");
        settings = MyWazeNativeManager.access$5(MyWazeNativeManager.this);
    }

    cebookCallback()
    {
        this$0 = final_mywazenativemanager;
        val$cb = cebookCallback.this;
        super();
    }
}
