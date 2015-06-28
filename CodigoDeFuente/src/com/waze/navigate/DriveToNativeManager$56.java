// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import com.waze.AppService;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, SearchActivity

class val.finalSearchEngineName
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final String val$finalSearchEngineName;

    public void run()
    {
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase instanceof SearchActivity)
        {
            Log.d("WAZE", (new StringBuilder("refreshSearchEnginesIconsOnSearchActivity callback running in thread ")).append(Thread.currentThread().getId()).toString());
            ((SearchActivity)activitybase).refreshSearchEngines(val$finalSearchEngineName);
        }
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$finalSearchEngineName = String.this;
        super();
    }
}
