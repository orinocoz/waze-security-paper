// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

class nit> extends RunnableUICallback
{

    final InstallNativeManager this$0;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("wayToGoCont callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("wayToGoCont event running in thread ")).append(Thread.currentThread().getId()).toString());
        InstallNativeManager.access$7(InstallNativeManager.this);
    }

    ()
    {
        this$0 = InstallNativeManager.this;
        super();
    }
}
