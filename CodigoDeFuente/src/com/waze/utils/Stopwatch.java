// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.os.SystemClock;
import com.waze.Logger;

public class Stopwatch
{

    public static final String LOG_TAG = "STOPWATCH";
    private volatile long mLastSample;
    private String mName;
    private volatile long mStartTime;

    public Stopwatch()
    {
        mStartTime = 0L;
        mLastSample = 0L;
        mName = "Generic";
    }

    public Stopwatch(String s)
    {
        mStartTime = 0L;
        mLastSample = 0L;
        mName = "Generic";
        mName = s;
    }

    public static long _sample()
    {
        return SystemClock.elapsedRealtime();
    }

    public static Stopwatch create(String s)
    {
        return new Stopwatch(s);
    }

    private void printDelta(String s, long l, boolean flag)
    {
        String s1;
        if (flag)
        {
            s1 = "SAMPLE; ";
        } else
        {
            s1 = "";
        }
        if (s != null)
        {
            Logger.i_((new StringBuilder("STOPWATCH ")).append(mName).toString(), (new StringBuilder(String.valueOf(s1))).append("$ ").append(s).append(" $. Delta: ").append(l).toString());
        }
    }

    public void reset()
    {
        mStartTime = 0L;
    }

    public long sample()
    {
        mLastSample = _sample();
        return mLastSample;
    }

    public long sampleDelta(String s, boolean flag)
    {
        long l = mLastSample;
        long l1;
        long l2;
        if (flag)
        {
            l1 = sample();
        } else
        {
            l1 = _sample();
        }
        l2 = l1 - l;
        printDelta(s, l2, true);
        return l2;
    }

    public void start()
    {
        mStartTime = _sample();
    }

    public long startDelta(String s, boolean flag)
    {
        long l;
        long l1;
        if (flag)
        {
            l = sample();
        } else
        {
            l = _sample();
        }
        l1 = l - mStartTime;
        printDelta(s, l1, false);
        return l1;
    }
}
