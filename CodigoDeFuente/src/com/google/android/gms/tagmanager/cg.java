// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh

class cg extends aj
{

    private static final String ID;
    private static final String agE;
    private static final String agF;
    private static final String agG;
    private static final String agH;

    public cg()
    {
        String s = ID;
        String as[] = new String[2];
        as[0] = agE;
        as[1] = agF;
        super(s, as);
    }

    public boolean lc()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a w(Map map)
    {
        com.google.android.gms.internal.d.a a1 = (com.google.android.gms.internal.d.a)map.get(agE);
        com.google.android.gms.internal.d.a a2 = (com.google.android.gms.internal.d.a)map.get(agF);
        if (a1 == null || a1 == dh.mY() || a2 == null || a2 == dh.mY())
        {
            return dh.mY();
        }
        byte byte0 = 64;
        if (dh.n((com.google.android.gms.internal.d.a)map.get(agG)).booleanValue())
        {
            byte0 = 66;
        }
        com.google.android.gms.internal.d.a a3 = (com.google.android.gms.internal.d.a)map.get(agH);
        int i;
        if (a3 != null)
        {
            Long long1 = dh.l(a3);
            if (long1 == dh.mT())
            {
                return dh.mY();
            }
            i = long1.intValue();
            if (i < 0)
            {
                return dh.mY();
            }
        } else
        {
            i = 1;
        }
        Matcher matcher;
        boolean flag;
        String s1;
        int j;
        com.google.android.gms.internal.d.a a4;
        try
        {
            String s = dh.j(a1);
            matcher = Pattern.compile(dh.j(a2), byte0).matcher(s);
            flag = matcher.find();
        }
        catch (PatternSyntaxException patternsyntaxexception)
        {
            return dh.mY();
        }
        s1 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_201;
        }
        j = matcher.groupCount();
        s1 = null;
        if (j < i)
        {
            break MISSING_BLOCK_LABEL_201;
        }
        s1 = matcher.group(i);
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_210;
        }
        return dh.mY();
        a4 = dh.r(s1);
        return a4;
    }

    static 
    {
        ID = a.ae.toString();
        agE = b.bi.toString();
        agF = b.bj.toString();
        agG = b.cF.toString();
        agH = b.cz.toString();
    }
}
