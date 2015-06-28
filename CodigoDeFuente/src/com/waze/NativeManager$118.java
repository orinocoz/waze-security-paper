// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ProgressBarDialog;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.id
    implements Runnable
{

    final NativeManager this$0;
    private final String val$id;

    public void run()
    {
        NativeManager.access$73(NativeManager.this);
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null && mainactivity.isAlive())
        {
            NativeManager.access$74(NativeManager.this, new ProgressBarDialog(mainactivity, val$id, null));
            NativeManager.access$75(NativeManager.this).show();
        }
    }

    Dialog()
    {
        this$0 = final_nativemanager;
        val$id = String.this;
        super();
    }
}
