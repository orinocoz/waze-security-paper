// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.i
    implements Runnable
{

    final NativeManager this$0;
    private final Intent val$i;

    public void run()
    {
        AppService.getAppContext().startActivity(val$i);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$i = Intent.this;
        super();
    }
}
