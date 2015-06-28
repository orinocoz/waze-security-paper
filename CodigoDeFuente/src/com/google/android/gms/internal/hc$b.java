// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.util.Log;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            hc

protected abstract class Gg
{

    final hc Gf;
    private boolean Gg;
    private Object mListener;

    protected abstract void d(Object obj);

    protected abstract void fp();

    public void fq()
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = mListener;
        if (Gg)
        {
            Log.w("GmsClient", (new StringBuilder()).append("Callback proxy ").append(this).append(" being reused. This is not safe.").toString());
        }
        this;
        JVM INSTR monitorexit ;
        Exception exception;
        if (obj != null)
        {
            try
            {
                d(obj);
            }
            catch (RuntimeException runtimeexception)
            {
                fp();
                throw runtimeexception;
            }
        } else
        {
            fp();
        }
        this;
        JVM INSTR monitorenter ;
        Gg = true;
        this;
        JVM INSTR monitorexit ;
        unregister();
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void fr()
    {
        this;
        JVM INSTR monitorenter ;
        mListener = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void unregister()
    {
        fr();
        synchronized (hc.b(Gf))
        {
            hc.b(Gf).remove(this);
        }
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public (hc hc1, Object obj)
    {
        Gf = hc1;
        super();
        mListener = obj;
        Gg = false;
    }
}
