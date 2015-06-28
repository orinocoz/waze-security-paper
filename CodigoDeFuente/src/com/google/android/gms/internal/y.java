// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            aa, ey, ad

class y
    implements aa
{

    private ey lc;

    public y(ey ey1)
    {
        lc = ey1;
    }

    public void a(ad ad, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        hashmap.put("isVisible", s);
        lc.a("onAdVisibilityChanged", hashmap);
    }
}
