// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

// Referenced classes of package com.google.android.gms.analytics:
//            m

class ae
    implements m
{

    private static Object tn = new Object();
    private static ae wW;
    private final Context mContext;

    protected ae(Context context)
    {
        mContext = context;
    }

    public static ae dq()
    {
        ae ae1;
        synchronized (tn)
        {
            ae1 = wW;
        }
        return ae1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void r(Context context)
    {
        synchronized (tn)
        {
            if (wW == null)
            {
                wW = new ae(context);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean J(String s)
    {
        return "&sr".equals(s);
    }

    protected String dr()
    {
        DisplayMetrics displaymetrics = mContext.getResources().getDisplayMetrics();
        return (new StringBuilder()).append(displaymetrics.widthPixels).append("x").append(displaymetrics.heightPixels).toString();
    }

    public String getValue(String s)
    {
        while (s == null || !s.equals("&sr")) 
        {
            return null;
        }
        return dr();
    }

}
