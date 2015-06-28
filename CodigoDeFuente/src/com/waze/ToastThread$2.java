// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Looper;

// Referenced classes of package com.waze:
//            ToastThread

class 
    implements Runnable
{

    final ToastThread this$0;

    public void run()
    {
        getLooper().quit();
    }

    ()
    {
        this$0 = ToastThread.this;
        super();
    }
}
