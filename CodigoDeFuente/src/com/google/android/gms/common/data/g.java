// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.common.data:
//            DataBuffer, DataHolder

public abstract class g extends DataBuffer
{

    private boolean ER;
    private ArrayList ES;

    protected g(DataHolder dataholder)
    {
        super(dataholder);
        ER = false;
    }

    private void eV()
    {
        this;
        JVM INSTR monitorenter ;
        if (ER) goto _L2; else goto _L1
_L1:
        int i;
        i = DD.getCount();
        ES = new ArrayList();
        if (i <= 0) goto _L4; else goto _L3
_L3:
        String s;
        String s1;
        ES.add(Integer.valueOf(0));
        s = eU();
        int j = DD.ae(0);
        s1 = DD.c(s, 0, j);
        int k = 1;
_L10:
        if (k >= i) goto _L4; else goto _L5
_L5:
        String s2;
        int l = DD.ae(k);
        s2 = DD.c(s, k, l);
        if (s2.equals(s1)) goto _L7; else goto _L6
_L6:
        ES.add(Integer.valueOf(k));
          goto _L8
_L4:
        ER = true;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L7:
        s2 = s1;
_L8:
        k++;
        s1 = s2;
        if (true) goto _L10; else goto _L9
_L9:
    }

    int ah(int i)
    {
        if (i < 0 || i >= ES.size())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Position ").append(i).append(" is out of bounds for this buffer").toString());
        } else
        {
            return ((Integer)ES.get(i)).intValue();
        }
    }

    protected int ai(int i)
    {
        int j;
        if (i < 0 || i == ES.size())
        {
            j = 0;
        } else
        {
            if (i == -1 + ES.size())
            {
                j = DD.getCount() - ((Integer)ES.get(i)).intValue();
            } else
            {
                j = ((Integer)ES.get(i + 1)).intValue() - ((Integer)ES.get(i)).intValue();
            }
            if (j == 1)
            {
                int k = ah(i);
                int l = DD.ae(k);
                String s = eW();
                if (s != null && DD.c(s, k, l) == null)
                {
                    return 0;
                }
            }
        }
        return j;
    }

    protected abstract Object c(int i, int j);

    protected abstract String eU();

    protected String eW()
    {
        return null;
    }

    public final Object get(int i)
    {
        eV();
        return c(ah(i), ai(i));
    }

    public int getCount()
    {
        eV();
        return ES.size();
    }
}
