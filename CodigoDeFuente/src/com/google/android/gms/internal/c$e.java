// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, md, ma, lz, 
//            c, mf

public static final class j extends mb
{

    private static volatile amY eU[];
    public int key;
    public int value;

    public static j[] i()
    {
        if (eU == null)
        {
            synchronized (md.amX)
            {
                if (eU == null)
                {
                    eU = new eU[0];
                }
            }
        }
        return eU;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ma ma1)
        throws IOException
    {
        ma1.p(1, key);
        ma1.p(2, value);
        super.a(ma1);
    }

    public mf b(lz lz1)
        throws IOException
    {
        return f(lz1);
    }

    protected int c()
    {
        return super.c() + ma.r(1, key) + ma.r(2, value);
    }

    public boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        boolean flag;
        flag = obj instanceof value;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        value value1;
        int k;
        int l;
        value1 = (value)obj;
        k = key;
        l = value1.key;
        flag1 = false;
        if (k != l) goto _L4; else goto _L5
_L5:
        int i1;
        int j1;
        i1 = value;
        j1 = value1.value;
        flag1 = false;
        if (i1 != j1) goto _L4; else goto _L6
_L6:
        boolean flag2;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (value1.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag2 = value1.amU.isEmpty();
        flag1 = false;
        if (!flag2) goto _L4; else goto _L7
_L7:
        return true;
        return amU.equals(value1.amU);
    }

    public amU f(lz lz1)
        throws IOException
    {
        do
        {
            int k = lz1.nw();
            switch (k)
            {
            default:
                if (a(lz1, k))
                {
                    continue;
                }
                // fall through

            case 0: // '\0'
                return this;

            case 8: // '\b'
                key = lz1.nz();
                break;

            case 16: // '\020'
                value = lz1.nz();
                break;
            }
        } while (true);
    }

    public int hashCode()
    {
        int k = 31 * (31 * (527 + key) + value);
        int l;
        if (amU == null || amU.isEmpty())
        {
            l = 0;
        } else
        {
            l = amU.hashCode();
        }
        return l + k;
    }

    public amU j()
    {
        key = 0;
        value = 0;
        amU = null;
        amY = -1;
        return this;
    }

    public ()
    {
        j();
    }
}
