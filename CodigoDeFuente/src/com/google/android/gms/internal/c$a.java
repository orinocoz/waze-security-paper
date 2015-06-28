// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, lz, ma, c, 
//            mf

public static final class b extends mb
{

    public int eE;
    public int eF;
    public int level;

    public b a(lz lz1)
        throws IOException
    {
_L6:
        int i = lz1.nw();
        i;
        JVM INSTR lookupswitch 4: default 48
    //                   0: 57
    //                   8: 59
    //                   16: 103
    //                   24: 114;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        if (a(lz1, i)) goto _L6; else goto _L2
_L2:
        return this;
_L3:
        int j = lz1.nz();
        switch (j)
        {
        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            level = j;
            break;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        eE = lz1.nz();
        continue; /* Loop/switch isn't completed */
_L5:
        eF = lz1.nz();
        if (true) goto _L6; else goto _L7
_L7:
    }

    public void a(ma ma1)
        throws IOException
    {
        if (level != 1)
        {
            ma1.p(1, level);
        }
        if (eE != 0)
        {
            ma1.p(2, eE);
        }
        if (eF != 0)
        {
            ma1.p(3, eF);
        }
        super.a(ma1);
    }

    public  b()
    {
        level = 1;
        eE = 0;
        eF = 0;
        amU = null;
        amY = -1;
        return this;
    }

    public mf b(lz lz1)
        throws IOException
    {
        return a(lz1);
    }

    protected int c()
    {
        int i = super.c();
        if (level != 1)
        {
            i += ma.r(1, level);
        }
        if (eE != 0)
        {
            i += ma.r(2, eE);
        }
        if (eF != 0)
        {
            i += ma.r(3, eF);
        }
        return i;
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
        flag = obj instanceof eF;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        eF ef;
        int i;
        int j;
        ef = (eF)obj;
        i = level;
        j = ef.level;
        flag1 = false;
        if (i != j) goto _L4; else goto _L5
_L5:
        int k;
        int l;
        k = eE;
        l = ef.eE;
        flag1 = false;
        if (k != l) goto _L4; else goto _L6
_L6:
        int i1;
        int j1;
        i1 = eF;
        j1 = ef.eF;
        flag1 = false;
        if (i1 != j1) goto _L4; else goto _L7
_L7:
        boolean flag2;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_140;
        }
        if (ef.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag2 = ef.amU.isEmpty();
        flag1 = false;
        if (!flag2) goto _L4; else goto _L8
_L8:
        return true;
        return amU.equals(ef.amU);
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (527 + level) + eE) + eF);
        int j;
        if (amU == null || amU.isEmpty())
        {
            j = 0;
        } else
        {
            j = amU.hashCode();
        }
        return j + i;
    }

    public ()
    {
        b();
    }
}
