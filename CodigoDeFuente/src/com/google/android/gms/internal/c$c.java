// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, md, ma, lz, 
//            c, mf

public static final class g extends mb
{

    private static volatile amU eL[];
    public String eM;
    public long eN;
    public long eO;
    public boolean eP;
    public long eQ;

    public static g[] f()
    {
        if (eL == null)
        {
            synchronized (md.amX)
            {
                if (eL == null)
                {
                    eL = new eL[0];
                }
            }
        }
        return eL;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ma ma1)
        throws IOException
    {
        if (!eM.equals(""))
        {
            ma1.b(1, eM);
        }
        if (eN != 0L)
        {
            ma1.b(2, eN);
        }
        if (eO != 0x7fffffffL)
        {
            ma1.b(3, eO);
        }
        if (eP)
        {
            ma1.a(4, eP);
        }
        if (eQ != 0L)
        {
            ma1.b(5, eQ);
        }
        super.a(ma1);
    }

    public mf b(lz lz1)
        throws IOException
    {
        return d(lz1);
    }

    protected int c()
    {
        int i = super.c();
        if (!eM.equals(""))
        {
            i += ma.h(1, eM);
        }
        if (eN != 0L)
        {
            i += ma.d(2, eN);
        }
        if (eO != 0x7fffffffL)
        {
            i += ma.d(3, eO);
        }
        if (eP)
        {
            i += ma.b(4, eP);
        }
        if (eQ != 0L)
        {
            i += ma.d(5, eQ);
        }
        return i;
    }

    public eQ d(lz lz1)
        throws IOException
    {
        do
        {
            int i = lz1.nw();
            switch (i)
            {
            default:
                if (a(lz1, i))
                {
                    continue;
                }
                // fall through

            case 0: // '\0'
                return this;

            case 10: // '\n'
                eM = lz1.readString();
                break;

            case 16: // '\020'
                eN = lz1.ny();
                break;

            case 24: // '\030'
                eO = lz1.ny();
                break;

            case 32: // ' '
                eP = lz1.nA();
                break;

            case 40: // '('
                eQ = lz1.ny();
                break;
            }
        } while (true);
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
        flag = obj instanceof y;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        y y;
        String s;
        y = (y)obj;
        if (eM != null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        s = y.eM;
        flag1 = false;
        if (s != null) goto _L4; else goto _L5
_L5:
        int i;
        i = eN != y.eN;
        flag1 = false;
        if (i != 0) goto _L4; else goto _L6
_L6:
        int j;
        j = eO != y.eO;
        flag1 = false;
        if (j != 0) goto _L4; else goto _L7
_L7:
        boolean flag2;
        boolean flag3;
        flag2 = eP;
        flag3 = y.eP;
        flag1 = false;
        if (flag2 != flag3) goto _L4; else goto _L8
_L8:
        int k;
        k = eQ != y.eQ;
        flag1 = false;
        if (k != 0) goto _L4; else goto _L9
_L9:
        boolean flag4;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_191;
        }
        if (y.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag4 = y.amU.isEmpty();
        flag1 = false;
        if (!flag4) goto _L4; else goto _L10
_L10:
        return true;
        if (!eM.equals(y.eM))
        {
            return false;
        }
          goto _L5
        return amU.equals(y.amU);
    }

    public amU g()
    {
        eM = "";
        eN = 0L;
        eO = 0x7fffffffL;
        eP = false;
        eQ = 0L;
        amU = null;
        amY = -1;
        return this;
    }

    public int hashCode()
    {
        int i;
        int j;
        char c1;
        int k;
        List list;
        int l;
        if (eM == null)
        {
            i = 0;
        } else
        {
            i = eM.hashCode();
        }
        j = 31 * (31 * (31 * (i + 527) + (int)(eN ^ eN >>> 32)) + (int)(eO ^ eO >>> 32));
        if (eP)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        k = 31 * (31 * (c1 + j) + (int)(eQ ^ eQ >>> 32));
        list = amU;
        l = 0;
        if (list != null)
        {
            boolean flag = amU.isEmpty();
            l = 0;
            if (!flag)
            {
                l = amU.hashCode();
            }
        }
        return k + l;
    }

    public ()
    {
        g();
    }
}
