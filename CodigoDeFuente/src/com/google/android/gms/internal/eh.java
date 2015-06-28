// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.internal:
//            ei, ej, aj

public class eh
{
    private static final class a
    {

        private long rK;
        private long rL;

        public void bA()
        {
            rL = SystemClock.elapsedRealtime();
        }

        public void bB()
        {
            rK = SystemClock.elapsedRealtime();
        }

        public long bz()
        {
            return rL;
        }

        public Bundle toBundle()
        {
            Bundle bundle = new Bundle();
            bundle.putLong("topen", rK);
            bundle.putLong("tclose", rL);
            return bundle;
        }

        public a()
        {
            rK = -1L;
            rL = -1L;
        }
    }


    private final Object lq;
    private boolean qL;
    private final ei rA;
    private final LinkedList rB;
    private final String rC;
    private final String rD;
    private long rE;
    private long rF;
    private long rG;
    private long rH;
    private long rI;
    private long rJ;

    public eh(ei ei1, String s, String s1)
    {
        lq = new Object();
        rE = -1L;
        rF = -1L;
        qL = false;
        rG = -1L;
        rH = 0L;
        rI = -1L;
        rJ = -1L;
        rA = ei1;
        rC = s;
        rD = s1;
        rB = new LinkedList();
    }

    public eh(String s, String s1)
    {
        this(ei.bC(), s, s1);
    }

    public void bw()
    {
        synchronized (lq)
        {
            if (rJ != -1L && rF == -1L)
            {
                rF = SystemClock.elapsedRealtime();
                rA.a(this);
            }
            rA;
            ei.bF().bw();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void bx()
    {
        synchronized (lq)
        {
            if (rJ != -1L)
            {
                a a1 = new a();
                a1.bB();
                rB.add(a1);
                rH = 1L + rH;
                rA;
                ei.bF().bx();
                rA.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void by()
    {
        synchronized (lq)
        {
            if (rJ != -1L && !rB.isEmpty())
            {
                a a1 = (a)rB.getLast();
                if (a1.bz() == -1L)
                {
                    a1.bA();
                    rA.a(this);
                }
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void f(aj aj)
    {
        synchronized (lq)
        {
            rI = SystemClock.elapsedRealtime();
            rA;
            ei.bF().b(aj, rI);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void j(long l)
    {
        synchronized (lq)
        {
            rJ = l;
            if (rJ != -1L)
            {
                rA.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void k(long l)
    {
        synchronized (lq)
        {
            if (rJ != -1L)
            {
                rE = l;
                rA.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void n(boolean flag)
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        if (rJ == -1L)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        rG = SystemClock.elapsedRealtime();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        rF = rG;
        rA.a(this);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void o(boolean flag)
    {
        synchronized (lq)
        {
            if (rJ != -1L)
            {
                qL = flag;
                rA.a(this);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Bundle toBundle()
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        Bundle bundle;
        ArrayList arraylist;
        bundle = new Bundle();
        bundle.putString("seqnum", rC);
        bundle.putString("slotid", rD);
        bundle.putBoolean("ismediation", qL);
        bundle.putLong("treq", rI);
        bundle.putLong("tresponse", rJ);
        bundle.putLong("timp", rF);
        bundle.putLong("tload", rG);
        bundle.putLong("pcc", rH);
        bundle.putLong("tfetch", rE);
        arraylist = new ArrayList();
        for (Iterator iterator = rB.iterator(); iterator.hasNext(); arraylist.add(((a)iterator.next()).toBundle())) { }
        break MISSING_BLOCK_LABEL_160;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        bundle.putParcelableArrayList("tclick", arraylist);
        obj;
        JVM INSTR monitorexit ;
        return bundle;
    }
}
