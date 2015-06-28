// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.util.Log;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

class val.selection
    implements Runnable
{

    final val.selection this$1;
    private final int val$selection;

    public void run()
    {
        InstallNativeManager.access$2(_fld0, val$selection);
    }

    t>()
    {
        this$1 = final_t>;
        val$selection = I.this;
        super();
    }

    // Unreferenced inner class com/waze/install/InstallNativeManager$5

/* anonymous class */
    class InstallNativeManager._cls5 extends RunnableUICallback
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
            Log.d("WAZE", (new StringBuilder("selection= ")).append(selection).toString());
            NativeManager.Post(selection. new InstallNativeManager._cls5._cls1());
        }


            
            {
                this$0 = final_installnativemanager;
                selection = I.this;
                super();
            }
    }

}
