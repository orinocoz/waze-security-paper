// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import java.util.Timer;
import java.util.TimerTask;

public final class BgTest
{
    public static interface IPeriodicTester
    {

        public abstract void tester();
    }


    private static final long PERIODIC_TEST_COUNT = 100L;
    private static final long PERIODIC_TEST_PERIOD = 4000L;
    private static final int STATE_BACKGROUND = 1;
    private static final int STATE_BACKGROUND_ROTATED = 3;
    private static final int STATE_FOREGROUND = 0;
    private static final int STATE_FOREGROUND_ROTATED = 2;
    private static final int STATE_ORIENTATION_LANDSCAPE = 5;
    private static final int STATE_ORIENTATION_PORTRAIT = 4;
    public static final int TEST_BACKGROUND_ONLY = 0;
    public static final int TEST_BACKGROUND_ORIENTATION = 1;
    public static final int TEST_ORIENTATION_ONLY = 2;
    private static IPeriodicTester mBgOnlyTest = new IPeriodicTester() ;
    private static IPeriodicTester mBgOrientationTest = new IPeriodicTester() ;
    private static int mCurrentState = 0;
    private static IPeriodicTester mOrientationOnlyTest = new IPeriodicTester() ;
    private static final int mTest = 1;

    public BgTest()
    {
    }

    public static void startPeriodicTest()
    {
        NativeManager nativemanager;
        final IPeriodicTester finalTest;
        nativemanager = NativeManager.getInstance();
        finalTest = null;
        1;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 56
    //                   1 63
    //                   2 70;
           goto _L1 _L2 _L3 _L4
_L1:
        TimerTask timertask = new TimerTask() {

            int mCount;
            private final IPeriodicTester val$finalTest;

            public void run()
            {
                if ((long)mCount >= 100L)
                {
                    cancel();
                    return;
                } else
                {
                    mCount = 1 + mCount;
                    finalTest.tester();
                    return;
                }
            }

            
            {
                finalTest = iperiodictester;
                super();
                mCount = 0;
            }
        };
        nativemanager.getTimer().schedule(timertask, 4000L, 4000L);
        return;
_L2:
        finalTest = mBgOnlyTest;
        continue; /* Loop/switch isn't completed */
_L3:
        finalTest = mBgOrientationTest;
        continue; /* Loop/switch isn't completed */
_L4:
        finalTest = mOrientationOnlyTest;
        if (true) goto _L1; else goto _L5
_L5:
    }

    static 
    {
        mCurrentState = 0;
    }


}
