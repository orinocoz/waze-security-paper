// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.SystemClock;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            go, gr

public final class gs
{

    private static final go BD = new go("RequestTracker");
    public static final Object CK = new Object();
    private long CG;
    private long CH;
    private long CI;
    private gr CJ;

    public gs(long l)
    {
        CG = l;
        CH = -1L;
        CI = 0L;
    }

    private void ep()
    {
        CH = -1L;
        CJ = null;
        CI = 0L;
    }

    public void a(long l, gr gr1)
    {
        gr gr2;
        long l1;
        synchronized (CK)
        {
            gr2 = CJ;
            l1 = CH;
            CH = l;
            CJ = gr1;
            CI = SystemClock.elapsedRealtime();
        }
        if (gr2 != null)
        {
            gr2.n(l1);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean b(long l, int i, JSONObject jsonobject)
    {
        boolean flag = true;
        Object obj = CK;
        obj;
        JVM INSTR monitorenter ;
        gr gr1;
        if (CH == -1L || CH != l)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        go go1 = BD;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(CH);
        go1.b("request %d completed", aobj);
        gr1 = CJ;
        ep();
_L2:
        if (gr1 != null)
        {
            gr1.a(l, i, jsonobject);
        }
        return flag;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        gr1 = null;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean c(long l, int i)
    {
        return b(l, i, null);
    }

    public void clear()
    {
        synchronized (CK)
        {
            if (CH != -1L)
            {
                ep();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean d(long l, int i)
    {
        boolean flag;
        long l1;
        flag = true;
        l1 = 0L;
        Object obj = CK;
        obj;
        JVM INSTR monitorenter ;
        gr gr1;
        if (CH == -1L || l - CI < CG)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        go go1 = BD;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(CH);
        go1.b("request %d timed out", aobj);
        l1 = CH;
        gr1 = CJ;
        ep();
_L2:
        if (gr1 != null)
        {
            gr1.a(l1, i, null);
        }
        return flag;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        gr1 = null;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean eq()
    {
        Object obj = CK;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (CH != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean p(long l)
    {
        Object obj = CK;
        obj;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (CH != -1L && CH == l)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
