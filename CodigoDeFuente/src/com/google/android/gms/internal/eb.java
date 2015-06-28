// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ev, ep, dv

public final class eb
{

    private int mOrientation;
    private String qD;
    private String qE;
    private String qF;
    private List qG;
    private String qH;
    private String qI;
    private List qJ;
    private long qK;
    private boolean qL;
    private final long qM = -1L;
    private List qN;
    private long qO;

    public eb()
    {
        qK = -1L;
        qL = false;
        qO = -1L;
        mOrientation = -1;
    }

    private static String a(Map map, String s)
    {
        List list = (List)map.get(s);
        if (list != null && !list.isEmpty())
        {
            return (String)list.get(0);
        } else
        {
            return null;
        }
    }

    private static long b(Map map, String s)
    {
        String s1;
        List list = (List)map.get(s);
        if (list == null || list.isEmpty())
        {
            break MISSING_BLOCK_LABEL_81;
        }
        s1 = (String)list.get(0);
        float f1 = Float.parseFloat(s1);
        return (long)(f1 * 1000F);
        NumberFormatException numberformatexception;
        numberformatexception;
        ev.D((new StringBuilder()).append("Could not parse float from ").append(s).append(" header: ").append(s1).toString());
        return -1L;
    }

    private static List c(Map map, String s)
    {
        List list = (List)map.get(s);
        if (list != null && !list.isEmpty())
        {
            String s1 = (String)list.get(0);
            if (s1 != null)
            {
                return Arrays.asList(s1.trim().split("\\s+"));
            }
        }
        return null;
    }

    private void e(Map map)
    {
        qD = a(map, "X-Afma-Ad-Size");
    }

    private void f(Map map)
    {
        List list = c(map, "X-Afma-Click-Tracking-Urls");
        if (list != null)
        {
            qG = list;
        }
    }

    private void g(Map map)
    {
        List list = (List)map.get("X-Afma-Debug-Dialog");
        if (list != null && !list.isEmpty())
        {
            qH = (String)list.get(0);
        }
    }

    private void h(Map map)
    {
        List list = c(map, "X-Afma-Tracking-Urls");
        if (list != null)
        {
            qJ = list;
        }
    }

    private void i(Map map)
    {
        long l1 = b(map, "X-Afma-Interstitial-Timeout");
        if (l1 != -1L)
        {
            qK = l1;
        }
    }

    private void j(Map map)
    {
        qI = a(map, "X-Afma-ActiveView");
    }

    private void k(Map map)
    {
        List list = (List)map.get("X-Afma-Mediation");
        if (list != null && !list.isEmpty())
        {
            qL = Boolean.valueOf((String)list.get(0)).booleanValue();
        }
    }

    private void l(Map map)
    {
        List list = c(map, "X-Afma-Manual-Tracking-Urls");
        if (list != null)
        {
            qN = list;
        }
    }

    private void m(Map map)
    {
        long l1 = b(map, "X-Afma-Refresh-Rate");
        if (l1 != -1L)
        {
            qO = l1;
        }
    }

    private void n(Map map)
    {
        List list = (List)map.get("X-Afma-Orientation");
        if (list != null && !list.isEmpty())
        {
            String s = (String)list.get(0);
            if ("portrait".equalsIgnoreCase(s))
            {
                mOrientation = ep.bN();
            } else
            if ("landscape".equalsIgnoreCase(s))
            {
                mOrientation = ep.bM();
                return;
            }
        }
    }

    public void a(String s, Map map, String s1)
    {
        qE = s;
        qF = s1;
        d(map);
    }

    public void d(Map map)
    {
        e(map);
        f(map);
        g(map);
        h(map);
        i(map);
        k(map);
        l(map);
        m(map);
        n(map);
        j(map);
    }

    public dv i(long l1)
    {
        return new dv(qE, qF, qG, qJ, qK, qL, -1L, qN, qO, mOrientation, qD, l1, qH, qI);
    }
}
