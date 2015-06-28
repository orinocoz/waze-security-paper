// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import com.waze.AppService;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, CategoriesActivity

class this._cls0
    implements Runnable
{

    final DriveToNativeManager this$0;

    public void run()
    {
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase instanceof CategoriesActivity)
        {
            Log.d("WAZE", (new StringBuilder("refreshIconsOnCategoriesActivity callback running in thread ")).append(Thread.currentThread().getId()).toString());
            ((CategoriesActivity)activitybase).refreshCategoriesIcons();
        }
    }

    ()
    {
        this$0 = DriveToNativeManager.this;
        super();
    }
}
