// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import android.util.Log;

public class Waiter
{

    private boolean mWaiting;

    public Waiter()
    {
        mWaiting = false;
    }

    public void _notify()
    {
        this;
        JVM INSTR monitorenter ;
        mWaiting = false;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void _notifyAll()
    {
        this;
        JVM INSTR monitorenter ;
        mWaiting = false;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void _wait()
    {
        this;
        JVM INSTR monitorenter ;
_L5:
        boolean flag = mWaiting;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        wait();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Log.e("WAZE", "Error waiting: ", exception1);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void prepare()
    {
        this;
        JVM INSTR monitorenter ;
        mWaiting = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean waiting()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mWaiting;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }
}
