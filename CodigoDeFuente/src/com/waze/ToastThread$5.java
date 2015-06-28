// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Handler;
import android.widget.Toast;

// Referenced classes of package com.waze:
//            ToastThread, Logger

class 
    implements Runnable
{

    final ToastThread this$0;

    public void run()
    {
        synchronized (ToastThread.this)
        {
            if (mDuration > 0L && mToast != null && mHandler != null && Thread.currentThread().isAlive())
            {
                mToast.show();
                mHandler.postDelayed(ToastThread.access$0(ToastThread.this), 500L);
                ToastThread toastthread1 = ToastThread.this;
                toastthread1.mDuration = toastthread1.mDuration - 500L;
            }
        }
        return;
        exception1;
        toastthread;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Logger.ee("Error stopping toast", exception);
        }
        return;
    }

    ()
    {
        this$0 = ToastThread.this;
        super();
    }
}
