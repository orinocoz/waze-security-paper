// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;

// Referenced classes of package com.google.android.gms.internal:
//            dp, ev

protected final class pO extends AsyncTask
{

    private final WebView pO;
    private Bitmap pP;
    final dp pQ;

    protected transient Boolean a(Void avoid[])
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        i = pP.getWidth();
        j = pP.getHeight();
        if (i != 0 && j != 0) goto _L2; else goto _L1
_L1:
        Boolean boolean1 = Boolean.valueOf(false);
        Boolean boolean2 = boolean1;
_L7:
        this;
        JVM INSTR monitorexit ;
        return boolean2;
_L2:
        int k;
        int l;
        k = 0;
        l = 0;
_L9:
        if (k >= i) goto _L4; else goto _L3
_L3:
        int i1 = 0;
_L8:
        if (i1 >= j) goto _L6; else goto _L5
_L5:
        if (pP.getPixel(k, i1) != 0)
        {
            l++;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        boolean flag;
        Boolean boolean3;
        if ((double)l / ((double)(i * j) / 100D) > 0.10000000000000001D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean3 = Boolean.valueOf(flag);
        boolean2 = boolean3;
          goto _L7
        Exception exception;
        exception;
        throw exception;
          goto _L8
_L6:
        k += 10;
          goto _L9
    }

    protected void a(Boolean boolean1)
    {
        dp.c(pQ);
        if (boolean1.booleanValue() || pQ.bl() || dp.d(pQ) <= 0L)
        {
            pQ.pN = boolean1.booleanValue();
            dp.e(pQ).a(pQ.lL);
        } else
        if (dp.d(pQ) > 0L)
        {
            if (ev.p(2))
            {
                ev.z("Ad not detected, scheduling another run.");
            }
            dp.g(pQ).postDelayed(pQ, dp.f(pQ));
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        this;
        JVM INSTR monitorenter ;
        pP = Bitmap.createBitmap(dp.a(pQ), dp.b(pQ), android.graphics.p.Config.ARGB_8888);
        pO.setVisibility(0);
        pO.measure(android.view.MeasureSpec.makeMeasureSpec(dp.a(pQ), 0), android.view.MeasureSpec.makeMeasureSpec(dp.b(pQ), 0));
        pO.layout(0, 0, dp.a(pQ), dp.b(pQ));
        Canvas canvas = new Canvas(pP);
        pO.draw(canvas);
        pO.invalidate();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public (dp dp1, WebView webview)
    {
        pQ = dp1;
        super();
        pO = webview;
    }
}
