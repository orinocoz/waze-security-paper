// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

// Referenced classes of package com.google.android.gms.internal:
//            ae, ad, am, eg

public final class ac
    implements ae
{

    private final Object lq = new Object();
    private WeakHashMap lr;
    private ArrayList ls;

    public ac()
    {
        lr = new WeakHashMap();
        ls = new ArrayList();
    }

    public ad a(am am, eg eg)
    {
label0:
        {
            ad ad2;
            synchronized (lq)
            {
                if (!c(eg))
                {
                    break label0;
                }
                ad2 = (ad)lr.get(eg);
            }
            return ad2;
        }
        ad ad1;
        ad1 = new ad(am, eg);
        ad1.a(this);
        lr.put(eg, ad1);
        ls.add(ad1);
        obj;
        JVM INSTR monitorexit ;
        return ad1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ad ad1)
    {
        synchronized (lq)
        {
            if (!ad1.au())
            {
                ls.remove(ad1);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean c(eg eg)
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        ad ad1 = (ad)lr.get(eg);
        if (ad1 == null) goto _L2; else goto _L1
_L1:
        if (!ad1.au()) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        obj;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void d(eg eg)
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        ad ad1 = (ad)lr.get(eg);
        if (ad1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        ad1.as();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void pause()
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = ls.iterator(); iterator.hasNext(); ((ad)iterator.next()).pause()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public void resume()
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = ls.iterator(); iterator.hasNext(); ((ad)iterator.next()).resume()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    public void stop()
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        for (Iterator iterator = ls.iterator(); iterator.hasNext(); ((ad)iterator.next()).stop()) { }
        break MISSING_BLOCK_LABEL_44;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }
}
