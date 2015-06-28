// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            SpeechttManagerBase

public static abstract class mCbContext
{

    public final long CONTEXT_NULL;
    public volatile long mCbContext;

    private void run(String s, int i)
    {
        onResults(mCbContext, s, i);
    }

    protected abstract void onResults(long l, String s, int i);


    public ()
    {
        CONTEXT_NULL = 0L;
        mCbContext = 0L;
        mCbContext = 0L;
    }

    public mCbContext(long l)
    {
        CONTEXT_NULL = 0L;
        mCbContext = 0L;
        mCbContext = l;
    }
}
