// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            AppService, NativeManager, Logger, EditBox

public static abstract class mCbContext
    implements Runnable
{

    private boolean calledCallback;
    private volatile long mCbContext;
    private volatile boolean mResult;
    private volatile String mText;

    public abstract void CallbackDone(int i, String s, long l);

    protected void Post(boolean flag, String s)
    {
        mText = s;
        mResult = flag;
        AppService.getNativeManager().PostRunnable(this);
    }

    public void run()
    {
        int i;
        if (mResult)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (calledCallback)
        {
            Logger.ee("Calling EditBox callback twice?");
            return;
        } else
        {
            calledCallback = true;
            CallbackDone(i, mText, mCbContext);
            return;
        }
    }

    (long l)
    {
        calledCallback = false;
        mText = null;
        mResult = false;
        mCbContext = 0L;
        mCbContext = l;
    }
}
