// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze:
//            ResManager, DownloadResCallback

class nableUICallback extends RunnableUICallback
{

    private final DownloadResCallback val$cb;
    private final String val$res;
    private final int val$type;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("downloadRes callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("downloadRes event running in thread ")).append(Thread.currentThread().getId()).toString());
        ResManager.access$0(ResManager.getInstance(), val$type, val$res, val$cb);
    }

    llback()
    {
        val$type = i;
        val$res = s;
        val$cb = downloadrescallback;
        super();
    }
}
