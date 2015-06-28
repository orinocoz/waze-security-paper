// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, md, ma, lz, 
//            iw, mf

public static final class iN extends mb
{

    private static volatile viewId Uw[];
    public String Ux;
    public String Uy;
    public int viewId;

    public static iN[] iM()
    {
        if (Uw == null)
        {
            synchronized (md.amX)
            {
                if (Uw == null)
                {
                    Uw = new Uw[0];
                }
            }
        }
        return Uw;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ma ma1)
        throws IOException
    {
        if (!Ux.equals(""))
        {
            ma1.b(1, Ux);
        }
        if (!Uy.equals(""))
        {
            ma1.b(2, Uy);
        }
        if (viewId != 0)
        {
            ma1.p(3, viewId);
        }
        super.a(ma1);
    }

    public mf b(lz lz1)
        throws IOException
    {
        return o(lz1);
    }

    protected int c()
    {
        int i = super.c();
        if (!Ux.equals(""))
        {
            i += ma.h(1, Ux);
        }
        if (!Uy.equals(""))
        {
            i += ma.h(2, Uy);
        }
        if (viewId != 0)
        {
            i += ma.r(3, viewId);
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
        flag = obj instanceof viewId;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        viewId viewid = (viewId)obj;
        if (Ux != null) goto _L6; else goto _L5
_L5:
        String s1;
        s1 = viewid.Ux;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L7
_L7:
        if (Uy != null) goto _L9; else goto _L8
_L8:
        String s;
        s = viewid.Uy;
        flag1 = false;
        if (s != null) goto _L4; else goto _L10
_L10:
        int i;
        int j;
        i = viewId;
        j = viewid.viewId;
        flag1 = false;
        if (i != j) goto _L4; else goto _L11
_L11:
        boolean flag2;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_172;
        }
        if (viewid.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag2 = viewid.amU.isEmpty();
        flag1 = false;
        if (!flag2) goto _L4; else goto _L12
_L12:
        return true;
_L6:
        if (!Ux.equals(viewid.Ux))
        {
            return false;
        }
          goto _L7
_L9:
        if (!Uy.equals(viewid.Uy))
        {
            return false;
        }
          goto _L10
        return amU.equals(viewid.amU);
          goto _L7
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        List list;
        int i1;
        if (Ux == null)
        {
            i = 0;
        } else
        {
            i = Ux.hashCode();
        }
        j = 31 * (i + 527);
        if (Uy == null)
        {
            k = 0;
        } else
        {
            k = Uy.hashCode();
        }
        l = 31 * (31 * (k + j) + viewId);
        list = amU;
        i1 = 0;
        if (list != null)
        {
            boolean flag = amU.isEmpty();
            i1 = 0;
            if (!flag)
            {
                i1 = amU.hashCode();
            }
        }
        return l + i1;
    }

    public amU iN()
    {
        Ux = "";
        Uy = "";
        viewId = 0;
        amU = null;
        amY = -1;
        return this;
    }

    public amY o(lz lz1)
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
                Ux = lz1.readString();
                break;

            case 18: // '\022'
                Uy = lz1.readString();
                break;

            case 24: // '\030'
                viewId = lz1.nz();
                break;
            }
        } while (true);
    }

    public ()
    {
        iN();
    }
}
