// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.samples;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.samples:
//            JniSampleActivityNativeManager

class imeUpdater extends RunnableUICallback
{

    meData mData;
    final JniSampleActivityNativeManager this$0;
    private final imeUpdater val$updater;

    public void callback()
    {
        Log.w("WAZE", "ButtonEvent - callback");
        val$updater.updateTime(mData.hour, mData.min, mData.sec);
    }

    public void event()
    {
        Log.w("WAZE", "ButtonEvent - event");
        mData = JniSampleActivityNativeManager.access$0(JniSampleActivityNativeManager.this);
    }

    imeUpdater()
    {
        this$0 = final_jnisampleactivitynativemanager;
        val$updater = imeUpdater.this;
        super();
    }
}
