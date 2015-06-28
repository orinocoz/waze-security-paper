// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import java.util.TimerTask;

// Referenced classes of package com.waze:
//            IMessageParam, NativeManager

public final class NativeTimerTask extends TimerTask
    implements IMessageParam
{

    private int mInterval;
    private boolean mIsActive;
    private NativeManager mNativeManager;
    private int mTaskId;
    private int mTaskNativeMsg;

    NativeTimerTask(int i, int j, int k, NativeManager nativemanager)
    {
        mIsActive = false;
        mNativeManager = nativemanager;
        mTaskId = i;
        mInterval = k;
        mTaskNativeMsg = j;
        mIsActive = true;
    }

    public void CancelSync()
    {
        this;
        JVM INSTR monitorenter ;
        cancel();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean IsActive()
    {
        return mIsActive;
    }

    public boolean cancel()
    {
        mIsActive = false;
        return super.cancel();
    }

    public int getTaskId()
    {
        return mTaskId;
    }

    public void run()
    {
        this;
        JVM INSTR monitorenter ;
        if (mInterval >= 100) goto _L2; else goto _L1
_L1:
        mNativeManager.PostPriorityNativeMessage(mTaskNativeMsg, this);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        mNativeManager.PostNativeMessage(mTaskNativeMsg, this);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void setTaskId(int i)
    {
        mTaskId = i;
    }
}
