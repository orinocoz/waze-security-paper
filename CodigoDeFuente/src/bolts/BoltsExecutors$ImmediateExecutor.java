// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package bolts;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

// Referenced classes of package bolts:
//            BoltsExecutors

private static class <init>
    implements Executor
{

    private static final int MAX_DEPTH = 15;
    private ThreadLocal executionDepth;

    private int decrementDepth()
    {
        Integer integer = (Integer)executionDepth.get();
        if (integer == null)
        {
            integer = Integer.valueOf(0);
        }
        int i = -1 + integer.intValue();
        if (i == 0)
        {
            executionDepth.remove();
            return i;
        } else
        {
            executionDepth.set(Integer.valueOf(i));
            return i;
        }
    }

    private int incrementDepth()
    {
        Integer integer = (Integer)executionDepth.get();
        if (integer == null)
        {
            integer = Integer.valueOf(0);
        }
        int i = 1 + integer.intValue();
        executionDepth.set(Integer.valueOf(i));
        return i;
    }

    public void execute(Runnable runnable)
    {
        if (incrementDepth() > 15) goto _L2; else goto _L1
_L1:
        runnable.run();
_L4:
        decrementDepth();
        return;
_L2:
        BoltsExecutors.background().execute(runnable);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        decrementDepth();
        throw exception;
    }

    private ()
    {
        executionDepth = new ThreadLocal();
    }

    executionDepth(executionDepth executiondepth)
    {
        this();
    }
}
