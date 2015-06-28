// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, md, ma, lz, 
//            mi, c, mf

public static final class e extends mb
{

    private static volatile amU eG[];
    public int eH[];
    public int eI;
    public boolean eJ;
    public boolean eK;
    public int name;

    public static e[] d()
    {
        if (eG == null)
        {
            synchronized (md.amX)
            {
                if (eG == null)
                {
                    eG = new eG[0];
                }
            }
        }
        return eG;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ma ma1)
        throws IOException
    {
        if (eK)
        {
            ma1.a(1, eK);
        }
        ma1.p(2, eI);
        if (eH != null && eH.length > 0)
        {
            for (int i = 0; i < eH.length; i++)
            {
                ma1.p(3, eH[i]);
            }

        }
        if (name != 0)
        {
            ma1.p(4, name);
        }
        if (eJ)
        {
            ma1.a(6, eJ);
        }
        super.a(ma1);
    }

    public mf b(lz lz1)
        throws IOException
    {
        return c(lz1);
    }

    protected int c()
    {
        int i = 0;
        int j = super.c();
        if (eK)
        {
            j += ma.b(1, eK);
        }
        int k = j + ma.r(2, eI);
        int l;
        if (eH != null && eH.length > 0)
        {
            for (int i1 = 0; i1 < eH.length; i1++)
            {
                i += ma.eE(eH[i1]);
            }

            l = k + i + 1 * eH.length;
        } else
        {
            l = k;
        }
        if (name != 0)
        {
            l += ma.r(4, name);
        }
        if (eJ)
        {
            l += ma.b(6, eJ);
        }
        return l;
    }

    public eJ c(lz lz1)
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

            case 8: // '\b'
                eK = lz1.nA();
                break;

            case 16: // '\020'
                eI = lz1.nz();
                break;

            case 24: // '\030'
                int j1 = mi.b(lz1, 24);
                int k1;
                int ai1[];
                if (eH == null)
                {
                    k1 = 0;
                } else
                {
                    k1 = eH.length;
                }
                ai1 = new int[j1 + k1];
                if (k1 != 0)
                {
                    System.arraycopy(eH, 0, ai1, 0, k1);
                }
                for (; k1 < -1 + ai1.length; k1++)
                {
                    ai1[k1] = lz1.nz();
                    lz1.nw();
                }

                ai1[k1] = lz1.nz();
                eH = ai1;
                break;

            case 26: // '\032'
                int j = lz1.ex(lz1.nD());
                int k = lz1.getPosition();
                int l;
                for (l = 0; lz1.nI() > 0; l++)
                {
                    lz1.nz();
                }

                lz1.ez(k);
                int i1;
                int ai[];
                if (eH == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = eH.length;
                }
                ai = new int[l + i1];
                if (i1 != 0)
                {
                    System.arraycopy(eH, 0, ai, 0, i1);
                }
                for (; i1 < ai.length; i1++)
                {
                    ai[i1] = lz1.nz();
                }

                eH = ai;
                lz1.ey(j);
                break;

            case 32: // ' '
                name = lz1.nz();
                break;

            case 48: // '0'
                eJ = lz1.nA();
                break;
            }
        } while (true);
    }

    public A e()
    {
        eH = mi.ana;
        eI = 0;
        name = 0;
        eJ = false;
        eK = false;
        amU = null;
        amY = -1;
        return this;
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
        flag = obj instanceof amY;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        amY amy;
        boolean flag2;
        amy = (amY)obj;
        flag2 = md.equals(eH, amy.eH);
        flag1 = false;
        if (!flag2) goto _L4; else goto _L5
_L5:
        int i;
        int j;
        i = eI;
        j = amy.eI;
        flag1 = false;
        if (i != j) goto _L4; else goto _L6
_L6:
        int k;
        int l;
        k = name;
        l = amy.name;
        flag1 = false;
        if (k != l) goto _L4; else goto _L7
_L7:
        boolean flag3;
        boolean flag4;
        flag3 = eJ;
        flag4 = amy.eJ;
        flag1 = false;
        if (flag3 != flag4) goto _L4; else goto _L8
_L8:
        boolean flag5;
        boolean flag6;
        flag5 = eK;
        flag6 = amy.eK;
        flag1 = false;
        if (flag5 != flag6) goto _L4; else goto _L9
_L9:
        boolean flag7;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_183;
        }
        if (amy.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag7 = amy.amU.isEmpty();
        flag1 = false;
        if (!flag7) goto _L4; else goto _L10
_L10:
        return true;
        return amU.equals(amy.amU);
    }

    public int hashCode()
    {
        char c1 = '\u04CF';
        int i = 31 * (31 * (31 * (527 + md.hashCode(eH)) + eI) + name);
        char c2;
        int j;
        int k;
        int l;
        if (eJ)
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        j = 31 * (c2 + i);
        if (!eK)
        {
            c1 = '\u04D5';
        }
        k = 31 * (j + c1);
        if (amU == null || amU.isEmpty())
        {
            l = 0;
        } else
        {
            l = amU.hashCode();
        }
        return l + k;
    }

    public ()
    {
        e();
    }
}
