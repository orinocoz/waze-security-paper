// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, DriveToSearchCallback

class t> extends RunnableUICallback
{

    int rc;
    final DriveToNativeManager this$0;
    private final DriveToSearchCallback val$callback;
    private final String val$category;
    private final boolean val$initialSearch;
    private final String val$provider;
    private final String val$searchStr;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("search callback running in thread ")).append(Thread.currentThread().getId()).toString());
        if (val$callback != null)
        {
            val$callback.searchCallback(rc);
        }
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("search event running in thread ")).append(Thread.currentThread().getId()).toString());
        rc = DriveToNativeManager.access$23(DriveToNativeManager.this, val$initialSearch, val$category, val$provider, val$searchStr);
        Log.d("WAZE", (new StringBuilder("search rc=")).append(rc).toString());
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$initialSearch = flag;
        val$category = s;
        val$provider = s1;
        val$searchStr = s2;
        val$callback = DriveToSearchCallback.this;
        super();
    }
}
