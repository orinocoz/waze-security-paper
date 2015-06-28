// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ProgressBarDialog;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.ImageName
    implements Runnable
{

    final NativeManager this$0;
    private final String val$ImageName;
    private final String val$id;

    public void run()
    {
        NativeManager.access$73(NativeManager.this);
        ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase != null && activitybase.isAlive())
        {
            NativeManager.access$74(NativeManager.this, new ProgressBarDialog(activitybase, val$id, val$ImageName));
            NativeManager.access$75(NativeManager.this).show();
        }
    }

    Dialog()
    {
        this$0 = final_nativemanager;
        val$id = s;
        val$ImageName = String.this;
        super();
    }
}
