// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import java.util.Timer;

// Referenced classes of package com.waze:
//            NativeManager, NativeTimerTask, Logger

public final class NativeTimerManager
{

    private static final int FREMAP_MAX_TASK_COUNT = 32;
    private final String LOG_TAG = "TimerManager";
    private NativeManager mNativeManager;
    private NativeTimerTask mTasks[];
    private Timer mTimer;

    public NativeTimerManager(NativeManager nativemanager)
    {
        mNativeManager = nativemanager;
        mTimer = mNativeManager.getTimer();
        mTasks = new NativeTimerTask[32];
        InitTimerManagerNTV();
    }

    private native void InitTimerManagerNTV();

    public int ActiveTasksCount()
    {
        int i = 0;
        NativeTimerTask anativetimertask[] = mTasks;
        anativetimertask;
        JVM INSTR monitorenter ;
        int j = 0;
_L2:
        if (j < 32)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        anativetimertask;
        JVM INSTR monitorexit ;
        return i;
        if (mTasks[j] != null)
        {
            i++;
        }
        break MISSING_BLOCK_LABEL_43;
        Exception exception;
        exception;
        anativetimertask;
        JVM INSTR monitorexit ;
        throw exception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean ActiveTasksExist()
    {
        return ActiveTasksCount() > 0;
    }

    public void AddTask(int i, int j, int k)
    {
        if (NativeManager.isShuttingDown())
        {
            return;
        }
        if (i > 31 || i < 0)
        {
            Logger.w((new StringBuilder("TimerManagerTask ID is illegal: ")).append(i).toString());
            return;
        }
        if (k <= 0)
        {
            Logger.w((new StringBuilder("TimerManagerInterval is illegal: ")).append(k).toString());
        }
        synchronized (mTasks)
        {
            if (mTasks[i] != null)
            {
                RemoveTask(i);
            }
            mTasks[i] = new NativeTimerTask(i, j, k, mNativeManager);
        }
        StartTask(i, k);
        return;
        exception;
        anativetimertask;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void RemoveTask(int i)
    {
        while (NativeManager.isShuttingDown() || i < 0 || i >= 32) 
        {
            return;
        }
        synchronized (mTasks)
        {
            if (mTasks[i] != null)
            {
                mTasks[i].cancel();
                mTasks[i] = null;
            }
        }
        return;
        exception;
        anativetimertask;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void ShutDown()
    {
        NativeTimerTask anativetimertask[] = mTasks;
        anativetimertask;
        JVM INSTR monitorenter ;
        int i = 0;
_L2:
        if (i < 32)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        mTimer.cancel();
        anativetimertask;
        JVM INSTR monitorexit ;
        return;
        if (mTasks[i] != null)
        {
            mTasks[i].cancel();
        }
        break MISSING_BLOCK_LABEL_52;
        Exception exception;
        exception;
        anativetimertask;
        JVM INSTR monitorexit ;
        throw exception;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void ShutDownBg()
    {
        NativeTimerTask anativetimertask[] = mTasks;
        anativetimertask;
        JVM INSTR monitorenter ;
        int i = 0;
_L2:
        if (i < 32)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        mTimer.purge();
        anativetimertask;
        JVM INSTR monitorexit ;
        return;
        if (mTasks[i] != null)
        {
            mTasks[i].cancel();
        }
        break MISSING_BLOCK_LABEL_53;
        Exception exception;
        exception;
        anativetimertask;
        JVM INSTR monitorexit ;
        throw exception;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void StartTask(int i, long l)
    {
        if (mTasks[i] != null)
        {
            try
            {
                mTimer.scheduleAtFixedRate(mTasks[i], l, l);
                return;
            }
            catch (Exception exception)
            {
                Log.w((new StringBuilder("Start Task Error!  TaskId: ")).append(i).append("Interval: ").append(l).toString(), exception);
            }
            return;
        } else
        {
            Log.i("TimerManager", (new StringBuilder("StartTask. Task: ")).append(String.valueOf(i)).append(" is not active").toString());
            return;
        }
    }
}
