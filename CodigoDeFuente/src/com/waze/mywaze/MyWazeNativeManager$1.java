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

    ofileSettings profile;
    final MyWazeNativeManager this$0;
    private final ofileCallback val$cb;

    public void callback()
    {
        Log.d("WAZE", "ProfileSettings - callback");
        val$cb.onProfile(profile);
    }

    public void event()
    {
        Log.d("WAZE", "ProfileSettings - event");
        profile = new ofileSettings();
        profile.userName = MyWazeNativeManager.access$0(MyWazeNativeManager.this);
        profile.password = MyWazeNativeManager.access$1(MyWazeNativeManager.this);
        profile.nickName = MyWazeNativeManager.access$2(MyWazeNativeManager.this);
        profile.allowPings = MyWazeNativeManager.access$3(MyWazeNativeManager.this);
        profile.randomUser = isRandomUserNTV();
    }

    ofileCallback()
    {
        this$0 = final_mywazenativemanager;
        val$cb = ofileCallback.this;
        super();
    }
}
