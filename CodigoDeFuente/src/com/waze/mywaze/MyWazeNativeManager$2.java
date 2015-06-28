// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.mywaze.social.SocialActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class <init> extends RunnableUICallback
{

    boolean AllowPing;
    final MyWazeNativeManager this$0;
    private final SocialActivity val$cb;

    public void callback()
    {
        Log.d("WAZE", "ProfileSettings - callback");
        val$cb.SetAllowPing(AllowPing);
    }

    public void event()
    {
        Log.d("WAZE", "ProfileSettings - event");
        AllowPing = MyWazeNativeManager.access$3(MyWazeNativeManager.this);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$cb = SocialActivity.this;
        super();
    }
}
