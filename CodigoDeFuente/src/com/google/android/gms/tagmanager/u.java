// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh, DataLayer

class u extends aj
{

    private static final String ID;
    private static final String NAME;
    private static final String aff;
    private final DataLayer aer;

    public u(DataLayer datalayer)
    {
        String s = ID;
        String as[] = new String[1];
        as[0] = NAME;
        super(s, as);
        aer = datalayer;
    }

    public boolean lc()
    {
        return false;
    }

    public com.google.android.gms.internal.d.a w(Map map)
    {
        Object obj = aer.get(dh.j((com.google.android.gms.internal.d.a)map.get(NAME)));
        if (obj == null)
        {
            com.google.android.gms.internal.d.a a1 = (com.google.android.gms.internal.d.a)map.get(aff);
            if (a1 != null)
            {
                return a1;
            } else
            {
                return dh.mY();
            }
        } else
        {
            return dh.r(obj);
        }
    }

    static 
    {
        ID = a.C.toString();
        NAME = b.dc.toString();
        aff = b.cb.toString();
    }
}
