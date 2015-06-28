// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import java.util.Map;

// Referenced classes of package com.google.android.gms.analytics:
//            aj, aa, ai, j

private static class 
    implements 
{

    private final aj xt = new aj();

    public void a(String s, int i)
    {
        if ("ga_sessionTimeout".equals(s))
        {
            xt.xw = i;
            return;
        } else
        {
            aa.D((new StringBuilder()).append("int configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public void c(String s, String s1)
    {
        xt.xA.put(s, s1);
    }

    public void c(String s, boolean flag)
    {
        int i = 1;
        if ("ga_autoActivityTracking".equals(s))
        {
            aj aj3 = xt;
            if (!flag)
            {
                i = 0;
            }
            aj3.xx = i;
            return;
        }
        if ("ga_anonymizeIp".equals(s))
        {
            aj aj2 = xt;
            if (!flag)
            {
                i = 0;
            }
            aj2.xy = i;
            return;
        }
        if ("ga_reportUncaughtExceptions".equals(s))
        {
            aj aj1 = xt;
            if (!flag)
            {
                i = 0;
            }
            aj1.xz = i;
            return;
        } else
        {
            aa.D((new StringBuilder()).append("bool configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public j cw()
    {
        return dy();
    }

    public void d(String s, String s1)
    {
        if ("ga_trackingId".equals(s))
        {
            xt.xu = s1;
            return;
        }
        if ("ga_sampleFrequency".equals(s))
        {
            try
            {
                xt.xv = Double.parseDouble(s1);
                return;
            }
            catch (NumberFormatException numberformatexception)
            {
                aa.A((new StringBuilder()).append("Error parsing ga_sampleFrequency value: ").append(s1).toString());
            }
            return;
        } else
        {
            aa.D((new StringBuilder()).append("string configuration name not recognized:  ").append(s).toString());
            return;
        }
    }

    public aj dy()
    {
        return xt;
    }

    public ()
    {
    }
}
