// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

// Referenced classes of package com.waze:
//            Logger

public abstract class ToastThread extends HandlerThread
{

    protected final long LOOPER_CANCEL_DELAY = 10000L;
    protected final long TOAST_CANCEL_DELAY = 1000L;
    private final long TOAST_DURATION_TEST_PERIOD = 500L;
    protected long mDuration;
    private Runnable mDurationTestCallback;
    protected volatile Handler mHandler;
    protected Toast mToast;

    public ToastThread(String s)
    {
        super(s, -8);
        mToast = null;
        mDurationTestCallback = null;
    }

    protected void cancel()
    {
        mToast.cancel();
    }

    protected void onLooperPrepared()
    {
        mHandler = new Handler();
        mToast = show();
        if (mToast == null)
        {
            Log.e("WAZE", "Toast is not initialized properly: stopping the thread");
            getLooper().quit();
        }
    }

    protected void setCustomDuration(long l)
    {
        mDuration = l;
        if (mHandler != null)
        {
            mDurationTestCallback = new Runnable() {

                final ToastThread this$0;

                public void run()
                {
                    synchronized (ToastThread.this)
                    {
                        if (mDuration > 0L && mToast != null && mHandler != null && Thread.currentThread().isAlive())
                        {
                            mToast.show();
                            mHandler.postDelayed(mDurationTestCallback, 500L);
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

            
            {
                this$0 = ToastThread.this;
                super();
            }
            };
            mHandler.postDelayed(mDurationTestCallback, 500L);
        }
    }

    public abstract Toast show();

    public void stopToast()
    {
        this;
        JVM INSTR monitorenter ;
        if (mHandler != null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        mHandler.postDelayed(new Runnable() {

            final ToastThread this$0;

            public void run()
            {
                if (mToast != null)
                {
                    cancel();
                    mToast = null;
                }
            }

            
            {
                this$0 = ToastThread.this;
                super();
            }
        }, 1000L);
        mHandler.postDelayed(new Runnable() {

            final ToastThread this$0;

            public void run()
            {
                getLooper().quit();
            }

            
            {
                this$0 = ToastThread.this;
                super();
            }
        }, 11000L);
        mHandler.removeCallbacks(mDurationTestCallback);
        mHandler = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.e("WAZE", (new StringBuilder("Error stopping toast: ")).append(exception.getMessage()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public final void stopToastImmediately()
    {
        this;
        JVM INSTR monitorenter ;
        if (mHandler != null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        mHandler.removeCallbacks(mDurationTestCallback);
        mHandler.post(new Runnable() {

            final ToastThread this$0;

            public void run()
            {
                if (mToast != null)
                {
                    cancel();
                    mToast = null;
                }
            }

            
            {
                this$0 = ToastThread.this;
                super();
            }
        });
        mHandler.postDelayed(new Runnable() {

            final ToastThread this$0;

            public void run()
            {
                getLooper().quit();
            }

            
            {
                this$0 = ToastThread.this;
                super();
            }
        }, 10000L);
        mHandler = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.e("WAZE", (new StringBuilder("Error stopping toast: ")).append(exception.getMessage()).toString());
            exception.printStackTrace();
            return;
        }
    }

}
