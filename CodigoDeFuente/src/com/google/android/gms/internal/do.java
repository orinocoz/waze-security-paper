// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            en, dv, dt, am, 
//            bl, br, bn, eu, 
//            ev, l, h, dq, 
//            eg, ey, dp, ep, 
//            bu, ez

public class do extends en
    implements dq.a, ez.a
{
    private static final class a extends Exception
    {

        private final int pH;

        public int getErrorCode()
        {
            return pH;
        }

        public a(String s, int i)
        {
            super(s);
            pH = i;
        }
    }


    private final bu kz;
    private final ey lL;
    private final Object lq = new Object();
    private final Context mContext;
    private bn nd;
    private dv pA;
    private boolean pB;
    private bl pC;
    private br pD;
    private final dn.a pv;
    private final Object pw = new Object();
    private final dt.a px;
    private final l py;
    private en pz;

    public do(Context context, dt.a a1, l l1, ey ey1, bu bu, dn.a a2)
    {
        pB = false;
        kz = bu;
        pv = a2;
        lL = ey1;
        mContext = context;
        px = a1;
        py = l1;
    }

    private am a(dt dt1)
        throws a
    {
        if (pA.qg == null)
        {
            throw new a("The ad response must specify one of the supported ad sizes.", 0);
        }
        String as[] = pA.qg.split("x");
        if (as.length != 2)
        {
            throw new a((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(pA.qg).toString(), 0);
        }
        int i;
        int j;
        am aam[];
        int k;
        try
        {
            i = Integer.parseInt(as[0]);
            j = Integer.parseInt(as[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new a((new StringBuilder()).append("Could not parse the ad size from the ad response: ").append(pA.qg).toString(), 0);
        }
        aam = dt1.kR.me;
        k = aam.length;
        am am1;
        int j1;
        int k1;
        for (int i1 = 0; i1 < k; i1++)
        {
            am1 = aam[i1];
            float f1 = mContext.getResources().getDisplayMetrics().density;
            if (am1.width == -1)
            {
                j1 = (int)((float)am1.widthPixels / f1);
            } else
            {
                j1 = am1.width;
            }
            if (am1.height == -2)
            {
                k1 = (int)((float)am1.heightPixels / f1);
            } else
            {
                k1 = am1.height;
            }
            if (i == j1 && j == k1)
            {
                return new am(am1, dt1.kR.me);
            }
        }

        throw new a((new StringBuilder()).append("The ad size from the ad response was not one of the requested sizes: ").append(pA.qg).toString(), 0);
    }

    static Object a(do do1)
    {
        return do1.lq;
    }

    private void a(dt dt1, long l1)
        throws a
    {
        synchronized (pw)
        {
            pC = new bl(mContext, dt1, kz, nd);
        }
        pD = pC.a(l1, 60000L);
        switch (pD.nJ)
        {
        default:
            throw new a((new StringBuilder()).append("Unexpected mediation result: ").append(pD.nJ).toString(), 0);

        case 1: // '\001'
            throw new a("No fill from any mediation ad networks.", 3);

        case 0: // '\0'
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static dn.a b(do do1)
    {
        return do1.pv;
    }

    private void bi()
        throws a
    {
        if (pA.errorCode != -3)
        {
            if (TextUtils.isEmpty(pA.qb))
            {
                throw new a("No fill from ad server.", 3);
            }
            if (pA.qd)
            {
                try
                {
                    nd = new bn(pA.qb);
                    return;
                }
                catch (JSONException jsonexception)
                {
                    throw new a((new StringBuilder()).append("Could not parse mediation config: ").append(pA.qb).toString(), 0);
                }
            }
        }
    }

    static dv c(do do1)
    {
        return do1.pA;
    }

    private boolean c(long l1)
        throws a
    {
        long l2 = 60000L - (SystemClock.elapsedRealtime() - l1);
        if (l2 <= 0L)
        {
            return false;
        }
        try
        {
            lq.wait(l2);
        }
        catch (InterruptedException interruptedexception)
        {
            throw new a("Ad request cancelled.", -1);
        }
        return true;
    }

    static ey d(do do1)
    {
        return do1.lL;
    }

    private void e(long l1)
        throws a
    {
        eu.ss.post(new Runnable() {

            final do pE;

            public void run()
            {
label0:
                {
                    synchronized (do.a(pE))
                    {
                        if (do.c(pE).errorCode == -2)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                do.d(pE).bW().a(pE);
                if (do.c(pE).errorCode != -3)
                {
                    break MISSING_BLOCK_LABEL_119;
                }
                ev.C((new StringBuilder()).append("Loading URL in WebView: ").append(do.c(pE).oy).toString());
                do.d(pE).loadUrl(do.c(pE).oy);
_L1:
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
                ev.C("Loading HTML in WebView.");
                do.d(pE).loadDataWithBaseURL(ep.v(do.c(pE).oy), do.c(pE).qb, "text/html", "UTF-8", null);
                  goto _L1
            }

            
            {
                pE = do.this;
                super();
            }
        });
        h(l1);
    }

    private void g(long l1)
        throws a
    {
        do
        {
            if (!c(l1))
            {
                throw new a("Timed out waiting for ad response.", 2);
            }
        } while (pA == null);
        synchronized (pw)
        {
            pz = null;
        }
        if (pA.errorCode != -2 && pA.errorCode != -3)
        {
            throw new a((new StringBuilder()).append("There was a problem getting an ad response. ErrorCode: ").append(pA.errorCode).toString(), pA.errorCode);
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void h(long l1)
        throws a
    {
        do
        {
            if (!c(l1))
            {
                throw new a("Timed out waiting for WebView to finish loading.", 2);
            }
        } while (!pB);
    }

    public void a(dv dv1)
    {
        synchronized (lq)
        {
            ev.z("Received ad response.");
            pA = dv1;
            lq.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ey ey1)
    {
        synchronized (lq)
        {
            ev.z("WebView finished loading.");
            pB = true;
            lq.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void bc()
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        dt dt1;
        ev.z("AdLoaderBackgroundTask started.");
        String s = py.y().a(mContext);
        dt1 = new dt(px, s);
        am am1;
        int i;
        long l1;
        am1 = null;
        i = -2;
        l1 = -1L;
        long l4;
        en en1;
        l4 = SystemClock.elapsedRealtime();
        en1 = dq.a(mContext, dt1, this);
        Object obj1 = pw;
        obj1;
        JVM INSTR monitorenter ;
        pz = en1;
        if (pz == null)
        {
            throw new a("Could not start the ad request service.", 0);
        }
          goto _L1
        Exception exception2;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        a a1;
        a1;
        i = a1.getErrorCode();
        if (i != 3 && i != -1) goto _L3; else goto _L2
_L2:
        ev.B(a1.getMessage());
_L16:
        if (pA != null) goto _L5; else goto _L4
_L4:
        pA = new dv(i);
_L17:
        eu.ss.post(new Runnable() {

            final do pE;

            public void run()
            {
                pE.onStop();
            }

            
            {
                pE = do.this;
                super();
            }
        });
        long l2;
        am am2;
        l2 = l1;
        am2 = am1;
_L23:
        boolean flag = TextUtils.isEmpty(pA.ql);
        if (flag) goto _L7; else goto _L6
_L6:
        JSONObject jsonobject;
        String s3 = pA.ql;
        jsonobject = new JSONObject(s3);
_L18:
        aj aj;
        ey ey1;
        java.util.List list;
        java.util.List list1;
        java.util.List list2;
        int j;
        long l3;
        String s1;
        boolean flag1;
        aj = dt1.pV;
        ey1 = lL;
        list = pA.nr;
        list1 = pA.ns;
        list2 = pA.qf;
        j = pA.orientation;
        l3 = pA.nv;
        s1 = dt1.pY;
        flag1 = pA.qd;
        if (pD == null) goto _L9; else goto _L8
_L8:
        bm bm = pD.nK;
_L19:
        if (pD == null) goto _L11; else goto _L10
_L10:
        bv bv = pD.nL;
_L20:
        if (pD == null) goto _L13; else goto _L12
_L12:
        String s2 = pD.nM;
_L21:
        bn bn1 = nd;
        if (pD == null) goto _L15; else goto _L14
_L14:
        bp bp = pD.nN;
_L22:
        eg eg1 = new eg(aj, ey1, list, i, list1, list2, j, l3, s1, flag1, bm, bv, s2, bn1, bp, pA.qe, am2, pA.qc, l2, pA.qh, pA.qi, jsonobject);
        eu.ss.post(new Runnable(eg1) {

            final do pE;
            final eg pF;

            public void run()
            {
                synchronized (do.a(pE))
                {
                    do.b(pE).a(pF);
                }
                return;
                exception3;
                obj2;
                JVM INSTR monitorexit ;
                throw exception3;
            }

            
            {
                pE = do.this;
                pF = eg1;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        return;
_L1:
        obj1;
        JVM INSTR monitorexit ;
        am aam[];
        g(l4);
        l1 = SystemClock.elapsedRealtime();
        bi();
        aam = dt1.kR.me;
        am1 = null;
        if (aam == null)
        {
            break MISSING_BLOCK_LABEL_505;
        }
        am1 = a(dt1);
        if (pA.qd)
        {
            a(dt1, l4);
            break MISSING_BLOCK_LABEL_633;
        }
        if (pA.qj)
        {
            f(l4);
            break MISSING_BLOCK_LABEL_633;
        }
        break MISSING_BLOCK_LABEL_550;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        e(l4);
        break MISSING_BLOCK_LABEL_633;
_L3:
        ev.D(a1.getMessage());
          goto _L16
_L5:
        pA = new dv(i, pA.nv);
          goto _L17
        Exception exception1;
        exception1;
        ev.b("Error parsing the JSON for Active View.", exception1);
_L7:
        jsonobject = null;
          goto _L18
_L9:
        bm = null;
          goto _L19
_L11:
        bv = null;
          goto _L20
_L13:
        s2 = null;
          goto _L21
_L15:
        bp = null;
          goto _L22
        l2 = l1;
        am2 = am1;
          goto _L23
    }

    protected void f(long l1)
        throws a
    {
        am am1 = lL.Q();
        int i;
        int j;
        dp dp1;
        if (am1.md)
        {
            i = mContext.getResources().getDisplayMetrics().widthPixels;
            j = mContext.getResources().getDisplayMetrics().heightPixels;
        } else
        {
            i = am1.widthPixels;
            j = am1.heightPixels;
        }
        dp1 = new dp(this, lL, i, j);
        eu.ss.post(new Runnable(dp1) {

            final do pE;
            final dp pG;

            public void run()
            {
label0:
                {
                    synchronized (do.a(pE))
                    {
                        if (do.c(pE).errorCode == -2)
                        {
                            break label0;
                        }
                    }
                    return;
                }
                do.d(pE).bW().a(pE);
                pG.b(do.c(pE));
                obj;
                JVM INSTR monitorexit ;
                return;
                exception;
                obj;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                pE = do.this;
                pG = dp1;
                super();
            }
        });
        h(l1);
        if (dp1.bl())
        {
            ev.z("Ad-Network indicated no fill with passback URL.");
            throw new a("AdNetwork sent passback url", 3);
        }
        if (!dp1.bm())
        {
            throw new a("AdNetwork timed out", 2);
        } else
        {
            return;
        }
    }

    public void onStop()
    {
        synchronized (pw)
        {
            if (pz != null)
            {
                pz.cancel();
            }
            lL.stopLoading();
            ep.a(lL);
            if (pC != null)
            {
                pC.cancel();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
