// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            bd, bc, ey, l, 
//            h, ev

static final class 
    implements bd
{

    public void b(ey ey1, Map map)
    {
        String s = (String)map.get("tx");
        String s1 = (String)map.get("ty");
        String s2 = (String)map.get("td");
        int i;
        int j;
        int k;
        l l1;
        try
        {
            i = Integer.parseInt(s);
            j = Integer.parseInt(s1);
            k = Integer.parseInt(s2);
            l1 = ey1.bX();
        }
        catch (NumberFormatException numberformatexception)
        {
            ev.D("Could not parse touch parameters from gmsg.");
            return;
        }
        if (l1 == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        l1.y().a(i, j, k);
    }

    ()
    {
    }
}
