// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Application;
import com.waze.utils.Stopwatch;

public class WazeApplication extends Application
{

    private static Thread mUIThread;
    public static final Stopwatch startSW = Stopwatch.create("APP START");

    public WazeApplication()
    {
    }

    public static boolean isUIThread()
    {
        return Thread.currentThread() == mUIThread;
    }

    public void onCreate()
    {
        super.onCreate();
        startSW.start();
        mUIThread = Thread.currentThread();
    }

}
