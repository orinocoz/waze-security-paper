// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.internal.hh;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.common.api:
//            PendingResult, Result, Status, a, 
//            ResultCallback

public static abstract class Dn
    implements PendingResult, ingResult
{

    private final Object Dm;
    private  Dn;
    private final ArrayList Do;
    private ResultCallback Dp;
    private volatile Result Dq;
    private volatile boolean Dr;
    private boolean Ds;
    private boolean Dt;
    private hh Du;
    private final CountDownLatch kI;

    static void a(ingResult ingresult)
    {
        ingresult.eA();
    }

    private void c(Result result)
    {
        Dq = result;
        Du = null;
        kI.countDown();
        Status status = Dq.getStatus();
        if (Dp != null)
        {
            Dn.eC();
            if (!Ds)
            {
                Dn.a(Dp, ex());
            }
        }
        for (Iterator iterator = Do.iterator(); iterator.hasNext(); ((ingResult.a)iterator.next()).n(status)) { }
        Do.clear();
    }

    private void eA()
    {
        synchronized (Dm)
        {
            if (!isReady())
            {
                b(c(Status.En));
                Dt = true;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private Result ex()
    {
        Object obj = Dm;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        Result result;
        if (!Dr)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.a(flag, "Result has already been consumed.");
        hn.a(isReady(), "Result is not ready.");
        result = Dq;
        ey();
        obj;
        JVM INSTR monitorexit ;
        return result;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void ez()
    {
        synchronized (Dm)
        {
            if (!isReady())
            {
                b(c(Status.El));
                Dt = true;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(ingResult.a a1)
    {
        boolean flag;
        Object obj;
        Exception exception;
        if (!Dr)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.a(flag, "Result has already been consumed.");
        obj = Dm;
        obj;
        JVM INSTR monitorenter ;
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_47;
        }
        a1.n(Dq.getStatus());
_L2:
        return;
        Do.add(a1);
        if (true) goto _L2; else goto _L1
_L1:
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(Do do1)
    {
        Dn = do1;
    }

    protected final void a(hh hh1)
    {
        synchronized (Dm)
        {
            Du = hh1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Object obj)
    {
        b((Result)obj);
    }

    public final Result await()
    {
        boolean flag = true;
        boolean flag1;
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        hn.a(flag1, "await must not be called on the UI thread");
        if (Dr)
        {
            flag = false;
        }
        hn.a(flag, "Result has already been consumed");
        try
        {
            kI.await();
        }
        catch (InterruptedException interruptedexception)
        {
            ez();
        }
        hn.a(isReady(), "Result is not ready.");
        return ex();
    }

    public final Result await(long l, TimeUnit timeunit)
    {
        boolean flag = true;
        boolean flag1;
        if (l <= 0L || Looper.myLooper() != Looper.getMainLooper())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        hn.a(flag1, "await must not be called on the UI thread when time is greater than zero.");
        if (Dr)
        {
            flag = false;
        }
        hn.a(flag, "Result has already been consumed.");
        try
        {
            if (!kI.await(l, timeunit))
            {
                eA();
            }
        }
        catch (InterruptedException interruptedexception)
        {
            ez();
        }
        hn.a(isReady(), "Result is not ready.");
        return ex();
    }

    public final void b(Result result)
    {
        boolean flag;
label0:
        {
            flag = true;
            synchronized (Dm)
            {
                if (!Dt && !Ds)
                {
                    break label0;
                }
                com.google.android.gms.common.api.a.a(result);
            }
            return;
        }
        boolean flag1;
        if (!isReady())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        hn.a(flag1, "Results have already been set");
        if (Dr)
        {
            flag = false;
        }
        hn.a(flag, "Result has already been consumed");
        c(result);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected abstract Result c(Status status);

    public void cancel()
    {
label0:
        {
            synchronized (Dm)
            {
                if (!Ds && !Dr)
                {
                    break label0;
                }
            }
            return;
        }
        hh hh1 = Du;
        if (hh1 == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        try
        {
            Du.cancel();
        }
        catch (RemoteException remoteexception) { }
        com.google.android.gms.common.api.a.a(Dq);
        Dp = null;
        Ds = true;
        c(c(Status.Eo));
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void ey()
    {
        Dr = true;
        Dq = null;
        Dp = null;
    }

    public boolean isCanceled()
    {
        boolean flag;
        synchronized (Dm)
        {
            flag = Ds;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final boolean isReady()
    {
        return kI.getCount() == 0L;
    }

    public final void setResultCallback(ResultCallback resultcallback)
    {
label0:
        {
            boolean flag;
            if (!Dr)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            hn.a(flag, "Result has already been consumed.");
            synchronized (Dm)
            {
                if (!isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_61;
        }
        Dn.a(resultcallback, ex());
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Dp = resultcallback;
          goto _L1
    }

    public final void setResultCallback(ResultCallback resultcallback, long l, TimeUnit timeunit)
    {
label0:
        {
            boolean flag;
            if (!Dr)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            hn.a(flag, "Result has already been consumed.");
            synchronized (Dm)
            {
                if (!isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!isReady())
        {
            break MISSING_BLOCK_LABEL_68;
        }
        Dn.a(resultcallback, ex());
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Dp = resultcallback;
        Dn.a(this, timeunit.toMillis(l));
          goto _L1
    }

    ltCallback()
    {
        Dm = new Object();
        kI = new CountDownLatch(1);
        Do = new ArrayList();
    }

    public Do(Looper looper)
    {
        Dm = new Object();
        kI = new CountDownLatch(1);
        Do = new ArrayList();
        Dn = new <init>(looper);
    }

    public <init>(<init> <init>1)
    {
        Dm = new Object();
        kI = new CountDownLatch(1);
        Do = new ArrayList();
        Dn = <init>1;
    }
}
