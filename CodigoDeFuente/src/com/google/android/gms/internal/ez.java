// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            bd, ep, ev, ey, 
//            am, ci, cg, ba, 
//            bc, bh, bf, eu, 
//            m, l, cf, bb, 
//            bg, be, u, cj, 
//            cm

public class ez extends WebViewClient
{
    public static interface a
    {

        public abstract void a(ey ey1);
    }


    protected final ey lL;
    private final Object lq = new Object();
    private bb mQ;
    private bg na;
    private be nb;
    private a pL;
    private final HashMap sE = new HashMap();
    private u sF;
    private cj sG;
    private boolean sH;
    private boolean sI;
    private cm sJ;

    public ez(ey ey1, boolean flag)
    {
        sH = false;
        lL = ey1;
        sI = flag;
    }

    private static boolean c(Uri uri)
    {
        String s = uri.getScheme();
        return "http".equalsIgnoreCase(s) || "https".equalsIgnoreCase(s);
    }

    private void d(Uri uri)
    {
        String s = uri.getPath();
        bd bd1 = (bd)sE.get(s);
        if (bd1 != null)
        {
            Map map = ep.b(uri);
            if (ev.p(2))
            {
                ev.C((new StringBuilder()).append("Received GMSG: ").append(s).toString());
                String s1;
                for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); ev.C((new StringBuilder()).append("  ").append(s1).append(": ").append((String)map.get(s1)).toString()))
                {
                    s1 = (String)iterator.next();
                }

            }
            bd1.b(lL, map);
            return;
        } else
        {
            ev.C((new StringBuilder()).append("No GMSG handler found for GMSG: ").append(uri).toString());
            return;
        }
    }

    public final void a(cf cf1)
    {
        boolean flag = lL.bZ();
        u u;
        cj cj;
        if (flag && !lL.Q().md)
        {
            u = null;
        } else
        {
            u = sF;
        }
        cj = null;
        if (!flag)
        {
            cj = sG;
        }
        a(new ci(cf1, u, cj, sJ, lL.bY()));
    }

    protected void a(ci ci1)
    {
        cg.a(lL.getContext(), ci1);
    }

    public final void a(a a1)
    {
        pL = a1;
    }

    public void a(u u, cj cj, bb bb, cm cm, boolean flag, be be)
    {
        a("/appEvent", ((bd) (new ba(bb))));
        a("/canOpenURLs", bc.mS);
        a("/click", bc.mT);
        a("/close", bc.mU);
        a("/customClose", bc.mV);
        a("/httpTrack", bc.mW);
        a("/log", bc.mX);
        a("/open", ((bd) (new bh(be))));
        a("/touch", bc.mY);
        a("/video", bc.mZ);
        sF = u;
        sG = cj;
        mQ = bb;
        nb = be;
        sJ = cm;
        r(flag);
    }

    public void a(u u, cj cj, bb bb, cm cm, boolean flag, be be, bg bg)
    {
        a(u, cj, bb, cm, flag, be);
        a("/setInterstitialProperties", ((bd) (new bf(bg))));
        na = bg;
    }

    public final void a(String s, bd bd1)
    {
        sE.put(s, bd1);
    }

    public final void a(boolean flag, int i)
    {
        u u;
        if (lL.bZ() && !lL.Q().md)
        {
            u = null;
        } else
        {
            u = sF;
        }
        a(new ci(u, sG, sJ, lL, flag, i, lL.bY()));
    }

    public final void a(boolean flag, int i, String s)
    {
        boolean flag1 = lL.bZ();
        u u;
        cj cj;
        if (flag1 && !lL.Q().md)
        {
            u = null;
        } else
        {
            u = sF;
        }
        cj = null;
        if (!flag1)
        {
            cj = sG;
        }
        a(new ci(u, cj, mQ, sJ, lL, flag, i, s, lL.bY(), nb));
    }

    public final void a(boolean flag, int i, String s, String s1)
    {
        boolean flag1 = lL.bZ();
        u u;
        cj cj;
        if (flag1 && !lL.Q().md)
        {
            u = null;
        } else
        {
            u = sF;
        }
        if (flag1)
        {
            cj = null;
        } else
        {
            cj = sG;
        }
        a(new ci(u, cj, mQ, sJ, lL, flag, i, s, s1, lL.bY(), nb));
    }

    public final void aN()
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        cg cg1;
        sH = false;
        sI = true;
        cg1 = lL.bV();
        if (cg1 == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        if (eu.bR())
        {
            break MISSING_BLOCK_LABEL_54;
        }
        eu.ss.post(new Runnable(cg1) {

            final cg sK;
            final ez sL;

            public void run()
            {
                sK.aN();
            }

            
            {
                sL = ez.this;
                sK = cg1;
                super();
            }
        });
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        cg1.aN();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean ce()
    {
        boolean flag;
        synchronized (lq)
        {
            flag = sI;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void onLoadResource(WebView webview, String s)
    {
        ev.C((new StringBuilder()).append("Loading resource: ").append(s).toString());
        Uri uri = Uri.parse(s);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost()))
        {
            d(uri);
        }
    }

    public final void onPageFinished(WebView webview, String s)
    {
        if (pL != null)
        {
            pL.a(lL);
            pL = null;
        }
    }

    public final void r(boolean flag)
    {
        sH = flag;
    }

    public final void reset()
    {
        synchronized (lq)
        {
            sE.clear();
            sF = null;
            sG = null;
            pL = null;
            mQ = null;
            sH = false;
            sI = false;
            nb = null;
            sJ = null;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri;
        ev.C((new StringBuilder()).append("AdWebView shouldOverrideUrlLoading: ").append(s).toString());
        uri = Uri.parse(s);
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) goto _L2; else goto _L1
_L1:
        d(uri);
_L7:
        return true;
_L2:
        if (sH && webview == lL && c(uri))
        {
            return super.shouldOverrideUrlLoading(webview, s);
        }
        if (lL.willNotDraw()) goto _L4; else goto _L3
_L3:
        l l1 = lL.bX();
        if (l1 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        Uri uri2;
        if (!l1.a(uri))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        uri2 = l1.a(uri, lL.getContext());
        uri = uri2;
        Uri uri1 = uri;
_L5:
        a(new cf("android.intent.action.VIEW", uri1.toString(), null, null, null, null, null));
        continue; /* Loop/switch isn't completed */
        m m1;
        m1;
        ev.D((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
        uri1 = uri;
        if (true) goto _L5; else goto _L4
_L4:
        ev.D((new StringBuilder()).append("AdWebView unable to handle URL: ").append(s).toString());
        if (true) goto _L7; else goto _L6
_L6:
    }
}
