// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, NativeTimerManager

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        NativeManager.access$94(true);
        Log.i("WAZE", "Finalizing the application ...");
        NativeManager.access$95(NativeManager.this).ShutDown();
        NativeManager.access$16(NativeManager.this);
    }

    ()
    {
        this$0 = NativeManager.this;
        super();
    }
}
