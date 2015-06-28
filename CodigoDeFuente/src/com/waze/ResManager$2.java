// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.ifs.async.RunnableCallback;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            ResManager, DownloadResCallback

class xecutor extends RunnableCallback
{

    private final DownloadResCallback val$context;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("downloadResCallback callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("downloadResCallback event running in thread ")).append(Thread.currentThread().getId()).toString());
        if (val$context != null)
        {
            val$context.downloadResCallback();
        }
    }

    xecutor(DownloadResCallback downloadrescallback)
    {
        val$context = downloadrescallback;
        super(final_executor);
    }
}
