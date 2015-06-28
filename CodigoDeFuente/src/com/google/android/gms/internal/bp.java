// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            bo

public final class bp extends bw.a
{

    private final Object lq = new Object();
    private br.a ny;
    private bo nz;

    public bp()
    {
    }

    public void a(bo bo1)
    {
        synchronized (lq)
        {
            nz = bo1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(br.a a1)
    {
        synchronized (lq)
        {
            ny = a1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdClicked()
    {
        synchronized (lq)
        {
            if (nz != null)
            {
                nz.W();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdClosed()
    {
        synchronized (lq)
        {
            if (nz != null)
            {
                nz.X();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdFailedToLoad(int i)
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        if (ny == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        Exception exception;
        int j;
        if (i == 3)
        {
            j = 1;
        } else
        {
            j = 2;
        }
        ny.g(j);
        ny = null;
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdLeftApplication()
    {
        synchronized (lq)
        {
            if (nz != null)
            {
                nz.Y();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdLoaded()
    {
label0:
        {
            synchronized (lq)
            {
                if (ny == null)
                {
                    break label0;
                }
                ny.g(0);
                ny = null;
            }
            return;
        }
        if (nz != null)
        {
            nz.aa();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onAdOpened()
    {
        synchronized (lq)
        {
            if (nz != null)
            {
                nz.Z();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
