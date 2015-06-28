// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aq, as, cv, cf, 
//            bh, ar

class y
    implements aq
{

    private static y afr;
    private static final Object tn = new Object();
    private cf aeG;
    private String afs;
    private String aft;
    private ar afu;

    private y(Context context)
    {
        this(((ar) (as.M(context))), ((cf) (new cv())));
    }

    y(ar ar1, cf cf1)
    {
        afu = ar1;
        aeG = cf1;
    }

    public static aq K(Context context)
    {
        y y1;
        synchronized (tn)
        {
            if (afr == null)
            {
                afr = new y(context);
            }
            y1 = afr;
        }
        return y1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean bR(String s)
    {
        if (!aeG.dj())
        {
            bh.D("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
            return false;
        }
        if (afs != null && aft != null)
        {
            try
            {
                s = (new StringBuilder()).append(afs).append("?").append(aft).append("=").append(URLEncoder.encode(s, "UTF-8")).toString();
                bh.C((new StringBuilder()).append("Sending wrapped url hit: ").append(s).toString());
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                bh.c("Error wrapping URL for testing.", unsupportedencodingexception);
                return false;
            }
        }
        afu.bU(s);
        return true;
    }

}
