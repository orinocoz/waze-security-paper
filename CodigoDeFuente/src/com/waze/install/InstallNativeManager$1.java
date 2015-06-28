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
    private final int val$country;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("countrySelected callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("countrySelected event running in thread ")).append(Thread.currentThread().getId()).toString());
        Log.d("WAZE", (new StringBuilder("country= ")).append(val$country).toString());
        InstallNativeManager.access$0(InstallNativeManager.this, val$country);
    }

    ()
    {
        this$0 = final_installnativemanager;
        val$country = I.this;
        super();
    }
}
