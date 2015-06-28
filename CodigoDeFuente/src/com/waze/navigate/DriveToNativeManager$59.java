// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, DriveToGetSearchEnginesCallback

class enginesList extends RunnableUICallback
{

    List enginesList;
    final DriveToNativeManager this$0;
    private final DriveToGetSearchEnginesCallback val$callback;
    private final String val$category;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("getSearchEngines callback running in thread ")).append(Thread.currentThread().getId()).toString());
        val$callback.getSearchEnginesCallback(enginesList);
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("getSearchEngines event running in thread ")).append(Thread.currentThread().getId()).toString());
        SearchEngine asearchengine[] = DriveToNativeManager.access$52(DriveToNativeManager.this, val$category);
        int i = 0;
        do
        {
            if (i >= asearchengine.length)
            {
                return;
            }
            enginesList.add((i % 2) * enginesList.size(), asearchengine[i]);
            i++;
        } while (true);
    }

    allback()
    {
        this$0 = final_drivetonativemanager;
        val$category = s;
        val$callback = DriveToGetSearchEnginesCallback.this;
        super();
        enginesList = new LinkedList();
    }
}
