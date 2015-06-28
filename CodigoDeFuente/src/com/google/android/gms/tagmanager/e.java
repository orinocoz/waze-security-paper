// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh, ay

class e extends aj
{

    private static final String ID;
    private static final String aeh;
    private static final String aei;
    private final Context kM;

    public e(Context context)
    {
        String s = ID;
        String as[] = new String[1];
        as[0] = aei;
        super(s, as);
        kM = context;
    }

    public boolean lc()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a w(Map map)
    {
        com.google.android.gms.internal.d.a a1 = (com.google.android.gms.internal.d.a)map.get(aei);
        if (a1 == null)
        {
            return dh.mY();
        }
        String s = dh.j(a1);
        com.google.android.gms.internal.d.a a2 = (com.google.android.gms.internal.d.a)map.get(aeh);
        String s1;
        String s2;
        if (a2 != null)
        {
            s1 = dh.j(a2);
        } else
        {
            s1 = null;
        }
        s2 = ay.d(kM, s, s1);
        if (s2 != null)
        {
            return dh.r(s2);
        } else
        {
            return dh.mY();
        }
    }

    static 
    {
        ID = a.W.toString();
        aeh = b.bH.toString();
        aei = b.bK.toString();
    }
}
