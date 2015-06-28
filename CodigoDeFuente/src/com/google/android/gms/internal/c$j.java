// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, me, mf, ma, 
//            md, lz, mi, c

public static final class q extends mb
{

    public amY fJ[];
    public amY fK;
    public String fL;

    public static q b(byte abyte0[])
        throws me
    {
        return (q)mf.a(new <init>(), abyte0);
    }

    public void a(ma ma1)
        throws IOException
    {
        if (fJ != null && fJ.length > 0)
        {
            for (int i = 0; i < fJ.length; i++)
            {
                <init> <init>1 = fJ[i];
                if (<init>1 != null)
                {
                    ma1.a(1, <init>1);
                }
            }

        }
        if (fK != null)
        {
            ma1.a(2, fK);
        }
        if (!fL.equals(""))
        {
            ma1.b(3, fL);
        }
        super.a(ma1);
    }

    public mf b(lz lz1)
        throws IOException
    {
        return k(lz1);
    }

    protected int c()
    {
        int i = super.c();
        if (fJ != null && fJ.length > 0)
        {
            for (int l = 0; l < fJ.length; l++)
            {
                k k1 = fJ[l];
                if (k1 != null)
                {
                    i += ma.b(1, k1);
                }
            }

        }
        if (fK != null)
        {
            i += ma.b(2, fK);
        }
        if (!fL.equals(""))
        {
            i += ma.h(3, fL);
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
        flag = obj instanceof fL;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        fL fl;
        boolean flag2;
        fl = (fL)obj;
        flag2 = md.equals(fJ, fl.fJ);
        flag1 = false;
        if (!flag2) goto _L4; else goto _L5
_L5:
        if (fK != null) goto _L7; else goto _L6
_L6:
        fL fl1;
        fl1 = fl.fK;
        flag1 = false;
        if (fl1 != null) goto _L4; else goto _L8
_L8:
        if (fL != null) goto _L10; else goto _L9
_L9:
        String s;
        s = fl.fL;
        flag1 = false;
        if (s != null) goto _L4; else goto _L11
_L11:
        boolean flag3;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_171;
        }
        if (fl.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag3 = fl.amU.isEmpty();
        flag1 = false;
        if (!flag3) goto _L4; else goto _L12
_L12:
        return true;
_L7:
        if (!fK.equals(fl.fK))
        {
            return false;
        }
          goto _L8
_L10:
        if (!fL.equals(fl.fL))
        {
            return false;
        }
          goto _L11
        return amU.equals(fl.amU);
          goto _L8
    }

    public int hashCode()
    {
        int i = 31 * (527 + md.hashCode(fJ));
        int l;
        int i1;
        int j1;
        int k1;
        List list;
        int l1;
        if (fK == null)
        {
            l = 0;
        } else
        {
            l = fK.hashCode();
        }
        i1 = 31 * (l + i);
        if (fL == null)
        {
            j1 = 0;
        } else
        {
            j1 = fL.hashCode();
        }
        k1 = 31 * (j1 + i1);
        list = amU;
        l1 = 0;
        if (list != null)
        {
            boolean flag = amU.isEmpty();
            l1 = 0;
            if (!flag)
            {
                l1 = amU.hashCode();
            }
        }
        return k1 + l1;
    }

    public amU k(lz lz1)
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
                int l = mi.b(lz1, 10);
                int i1;
                amU aamu[];
                if (fJ == null)
                {
                    i1 = 0;
                } else
                {
                    i1 = fJ.length;
                }
                aamu = new fJ[l + i1];
                if (i1 != 0)
                {
                    System.arraycopy(fJ, 0, aamu, 0, i1);
                }
                for (; i1 < -1 + aamu.length; i1++)
                {
                    aamu[i1] = new <init>();
                    lz1.a(aamu[i1]);
                    lz1.nw();
                }

                aamu[i1] = new <init>();
                lz1.a(aamu[i1]);
                fJ = aamu;
                break;

            case 18: // '\022'
                if (fK == null)
                {
                    fK = new <init>();
                }
                lz1.a(fK);
                break;

            case 26: // '\032'
                fL = lz1.readString();
                break;
            }
        } while (true);
    }

    public eadString q()
    {
        fJ = o();
        fK = null;
        fL = "";
        amU = null;
        amY = -1;
        return this;
    }

    public ()
    {
        q();
    }
}
