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

class ax extends aj
{

    private static final String ID;
    private static final String aeh;
    private final Context kM;

    public ax(Context context)
    {
        super(ID, new String[0]);
        kM = context;
    }

    public boolean lc()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a w(Map map)
    {
        String s;
        String s1;
        if ((com.google.android.gms.internal.d.a)map.get(aeh) != null)
        {
            s = dh.j((com.google.android.gms.internal.d.a)map.get(aeh));
        } else
        {
            s = null;
        }
        s1 = ay.e(kM, s);
        if (s1 != null)
        {
            return dh.r(s1);
        } else
        {
            return dh.mY();
        }
    }

    static 
    {
        ID = a.ab.toString();
        aeh = b.bH.toString();
    }
}
