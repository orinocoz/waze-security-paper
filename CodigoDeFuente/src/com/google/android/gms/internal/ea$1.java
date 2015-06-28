// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            bd, ea, ec, ev, 
//            ey

class qC
    implements bd
{

    final ea qC;

    public void b(ey ey, Map map)
    {
        synchronized (ea.a(qC))
        {
            ec ec1 = new ec(map);
            ev.D((new StringBuilder()).append("Invalid ").append(ec1.getType()).append(" request error: ").append(ec1.bt()).toString());
            ea.a(qC, 1);
            ea.a(qC).notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (ea ea1)
    {
        qC = ea1;
        super();
    }
}
