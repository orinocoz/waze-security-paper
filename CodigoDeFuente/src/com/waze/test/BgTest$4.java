// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import java.util.TimerTask;

// Referenced classes of package com.waze.test:
//            BgTest

class mCount extends TimerTask
{

    int mCount;
    private final eriodicTester val$finalTest;

    public void run()
    {
        if ((long)mCount >= 100L)
        {
            cancel();
            return;
        } else
        {
            mCount = 1 + mCount;
            val$finalTest.tester();
            return;
        }
    }

    eriodicTester()
    {
        val$finalTest = eriodictester;
        super();
        mCount = 0;
    }
}
