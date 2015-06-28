// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.util.Log;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            NativeManager

public class ActivityNativeManagerBase
    implements Executor
{

    protected Activity mContext;

    protected ActivityNativeManagerBase()
    {
        mContext = null;
    }

    protected ActivityNativeManagerBase(Activity activity)
    {
        mContext = null;
        mContext = activity;
    }

    public void execute(Runnable runnable)
    {
        post(runnable);
    }

    public void initNativeLayer()
    {
        Log.w("WAZE", "Override this method to initialize the native layer");
    }

    public void post(Runnable runnable)
    {
        NativeManager.Post(runnable);
    }

    public void postOnUI(Runnable runnable)
    {
        if (mContext != null)
        {
            mContext.runOnUiThread(runnable);
        }
    }

    public void setContext(Activity activity)
    {
        mContext = activity;
    }
}
