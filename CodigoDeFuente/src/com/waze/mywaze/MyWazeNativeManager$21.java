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

    final MyWazeNativeManager this$0;
    String url;
    private final Callback val$callback;
    private final int val$height;
    private final Selector val$selector;
    private final int val$width;

    public void callback()
    {
        Log.d("WAZE", "getGroupsEvent - callback");
        val$callback.onUrl(url);
    }

    public void event()
    {
        Log.d("WAZE", "getGroupsEvent - event");
        url = MyWazeNativeManager.access$35(MyWazeNativeManager.this, val$selector.ordinal(), val$width, val$height);
    }

    Callback()
    {
        this$0 = final_mywazenativemanager;
        val$selector = selector1;
        val$width = i;
        val$height = j;
        val$callback = Callback.this;
        super();
    }
}
