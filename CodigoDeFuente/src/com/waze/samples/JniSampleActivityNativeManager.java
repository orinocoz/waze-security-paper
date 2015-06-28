// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.samples;

import android.util.Log;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;

public class JniSampleActivityNativeManager
{
    public static interface ITimeUpdater
    {

        public abstract void updateTime(int i, int j, int k);
    }

    public static class TimeData
    {

        public int hour;
        public int min;
        public int sec;

        public TimeData(int i)
        {
        }
    }


    protected static JniSampleActivityNativeManager mInstance = null;

    public JniSampleActivityNativeManager()
    {
    }

    private native void InitNativeLayerNTV();

    private native TimeData LoadTimeNTV();

    public static JniSampleActivityNativeManager getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new JniSampleActivityNativeManager();
            mInstance.initNativeLayer();
        }
        return mInstance;
    }

    private void initNativeLayer()
    {
        NativeManager.Post(new Runnable() {

            final JniSampleActivityNativeManager this$0;

            public void run()
            {
                InitNativeLayerNTV();
            }

            
            {
                this$0 = JniSampleActivityNativeManager.this;
                super();
            }
        });
    }

    public void runButtonClick(final ITimeUpdater updater)
    {
        NativeManager.Post(new RunnableUICallback() {

            TimeData mData;
            final JniSampleActivityNativeManager this$0;
            private final ITimeUpdater val$updater;

            public void callback()
            {
                Log.w("WAZE", "ButtonEvent - callback");
                updater.updateTime(mData.hour, mData.min, mData.sec);
            }

            public void event()
            {
                Log.w("WAZE", "ButtonEvent - event");
                mData = LoadTimeNTV();
            }

            
            {
                this$0 = JniSampleActivityNativeManager.this;
                updater = itimeupdater;
                super();
            }
        });
    }



}
