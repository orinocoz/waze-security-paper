// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mh, lz, mf, mi

public class mc
{

    protected final Class amV;
    protected final boolean amW;
    protected final int tag;
    protected final int type;

    private mc(int j, Class class1, int k, boolean flag)
    {
        type = j;
        amV = class1;
        tag = k;
        amW = flag;
    }

    public static mc a(int j, Class class1, int k)
    {
        return new mc(j, class1, k, false);
    }

    protected void a(mh mh1, List list)
    {
        list.add(u(lz.p(mh1.amZ)));
    }

    protected boolean eM(int j)
    {
        return j == tag;
    }

    final Object i(List list)
    {
        int j = 0;
        if (list != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return obj;
_L2:
        if (!amW)
        {
            break; /* Loop/switch isn't completed */
        }
        ArrayList arraylist = new ArrayList();
        for (int k = 0; k < list.size(); k++)
        {
            mh mh1 = (mh)list.get(k);
            if (eM(mh1.tag) && mh1.amZ.length != 0)
            {
                a(mh1, arraylist);
            }
        }

        int l = arraylist.size();
        if (l == 0)
        {
            return null;
        }
        obj = amV.cast(Array.newInstance(amV.getComponentType(), l));
        while (j < l) 
        {
            Array.set(obj, j, arraylist.get(j));
            j++;
        }
        if (true) goto _L4; else goto _L3
_L3:
        int i1 = -1 + list.size();
        mh mh2 = null;
        while (mh2 == null && i1 >= 0) 
        {
            mh mh3 = (mh)list.get(i1);
            if (!eM(mh3.tag) || mh3.amZ.length == 0)
            {
                mh3 = mh2;
            }
            i1--;
            mh2 = mh3;
        }
        if (mh2 == null)
        {
            return null;
        } else
        {
            return amV.cast(u(lz.p(mh2.amZ)));
        }
    }

    protected Object u(lz lz1)
    {
        Class class1;
        InstantiationException instantiationexception;
        if (amW)
        {
            class1 = amV.getComponentType();
        } else
        {
            class1 = amV;
        }
        type;
        JVM INSTR tableswitch 10 11: default 40
    //                   10 109
    //                   11 134;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown type ").append(type).toString());
_L2:
        mf mf1;
        mf mf2;
        try
        {
            mf2 = (mf)class1.newInstance();
            lz1.a(mf2, mi.eO(tag));
        }
        // Misplaced declaration of an exception variable
        catch (InstantiationException instantiationexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Error creating instance of class ").append(class1).toString(), instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Error creating instance of class ").append(class1).toString(), illegalaccessexception);
        }
        catch (IOException ioexception)
        {
            throw new IllegalArgumentException("Error reading extension field", ioexception);
        }
        return mf2;
_L3:
        mf1 = (mf)class1.newInstance();
        lz1.a(mf1);
        return mf1;
    }
}
