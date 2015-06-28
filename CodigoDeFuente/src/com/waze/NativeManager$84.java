// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.reports.UpdatePriceActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.text
    implements Runnable
{

    final NativeManager this$0;
    private final String val$text;
    private final String val$title;

    public void run()
    {
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase instanceof UpdatePriceActivity)
        {
            ((UpdatePriceActivity)activitybase).updateActivityDone(val$title, val$text);
        }
    }

    ceActivity()
    {
        this$0 = final_nativemanager;
        val$title = s;
        val$text = String.this;
        super();
    }
}
