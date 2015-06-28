// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class init> extends RunnableUICallback
{

    vacySettings settings;
    final MyWazeNativeManager this$0;
    private final vacyCallback val$cb;

    public void callback()
    {
        Log.d("WAZE", "ProfileSettings - callback");
        val$cb.onPrivacySettings(settings);
    }

    public void event()
    {
        Log.d("WAZE", "PrivacySettings - event");
        settings = new vacySettings();
        settings.visibility = MyWazeNativeManager.access$36(MyWazeNativeManager.this);
        settings.twitterShowProf = MyWazeNativeManager.access$37(MyWazeNativeManager.this);
    }

    vacyCallback()
    {
        this$0 = final_mywazenativemanager;
        val$cb = vacyCallback.this;
        super();
    }
}
