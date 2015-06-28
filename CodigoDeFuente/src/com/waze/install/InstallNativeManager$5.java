// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.util.Log;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

class nit> extends RunnableUICallback
{

    final InstallNativeManager this$0;
    private final int val$selection;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("termsOfUseResponse callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("termsOfUseResponse event running in thread ")).append(Thread.currentThread().getId()).toString());
        Log.d("WAZE", (new StringBuilder("selection= ")).append(val$selection).toString());
        NativeManager.Post(new Runnable() {

            final InstallNativeManager._cls5 this$1;
            private final int val$selection;

            public void run()
            {
                InstallNativeManager.access$2(this$0, selection);
            }

            
            {
                this$1 = InstallNativeManager._cls5.this;
                selection = i;
                super();
            }
        });
    }


    _cls1.val.selection()
    {
        this$0 = final_installnativemanager;
        val$selection = I.this;
        super();
    }
}
