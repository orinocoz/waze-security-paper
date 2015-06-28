// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ew, ep, es, fb, 
//            fc, er, ez, fa, 
//            am, ev, l, cg

public class ey extends WebView
    implements DownloadListener
{
    private static class a extends MutableContextWrapper
    {

        private Context lx;
        private Activity sD;

        public Context ca()
        {
            return sD;
        }

        public void setBaseContext(Context context)
        {
            lx = context.getApplicationContext();
            Activity activity;
            if (context instanceof Activity)
            {
                activity = (Activity)context;
            } else
            {
                activity = null;
            }
            sD = activity;
            super.setBaseContext(lx);
        }

        public void startActivity(Intent intent)
        {
            if (sD != null)
            {
                sD.startActivity(intent);
                return;
            } else
            {
                intent.setFlags(0x10000000);
                lx.startActivity(intent);
                return;
            }
        }

        public a(Context context)
        {
            super(context);
            setBaseContext(context);
        }
    }


    private final WindowManager lA = (WindowManager)getContext().getSystemService("window");
    private final Object lq = new Object();
    private am nD;
    private final ew nE;
    private final l py;
    private boolean sA;
    private boolean sB;
    private boolean sC;
    private final ez sx;
    private final a sy;
    private cg sz;

    private ey(a a1, am am1, boolean flag, boolean flag1, l l1, ew ew1)
    {
        super(a1);
        sy = a1;
        nD = am1;
        sA = flag;
        py = l1;
        nE = ew1;
        setBackgroundColor(0);
        WebSettings websettings = getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setSavePassword(false);
        websettings.setSupportMultipleWindows(true);
        websettings.setJavaScriptCanOpenWindowsAutomatically(true);
        ep.a(a1, ew1.st, websettings);
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            es.a(getContext(), websettings);
        } else
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            er.a(getContext(), websettings);
        }
        setDownloadListener(this);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            sx = new fb(this, flag1);
        } else
        {
            sx = new ez(this, flag1);
        }
        setWebViewClient(sx);
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            setWebChromeClient(new fc(this));
        } else
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            setWebChromeClient(new fa(this));
        }
        cb();
    }

    public static ey a(Context context, am am1, boolean flag, boolean flag1, l l1, ew ew1)
    {
        return new ey(new a(context), am1, flag, flag1, l1, ew1);
    }

    private void cb()
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        if (!sA && !nD.md) goto _L2; else goto _L1
_L1:
        if (android.os.Build.VERSION.SDK_INT >= 14) goto _L4; else goto _L3
_L3:
        ev.z("Disabling hardware acceleration on an overlay.");
        cc();
_L5:
        return;
_L4:
        ev.z("Enabling hardware acceleration on an overlay.");
        cd();
          goto _L5
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
label0:
        {
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                break label0;
            }
            ev.z("Disabling hardware acceleration on an AdView.");
            cc();
        }
          goto _L5
        ev.z("Enabling hardware acceleration on an AdView.");
        cd();
          goto _L5
    }

    private void cc()
    {
        synchronized (lq)
        {
            if (!sB && android.os.Build.VERSION.SDK_INT >= 11)
            {
                er.d(this);
            }
            sB = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void cd()
    {
        synchronized (lq)
        {
            if (sB && android.os.Build.VERSION.SDK_INT >= 11)
            {
                er.e(this);
            }
            sB = false;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void E(String s)
    {
        Object obj = lq;
        obj;
        JVM INSTR monitorenter ;
        if (isDestroyed())
        {
            break MISSING_BLOCK_LABEL_22;
        }
        loadUrl(s);
_L2:
        return;
        ev.D("The webview is destroyed. Ignoring action.");
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public am Q()
    {
        am am1;
        synchronized (lq)
        {
            am1 = nD;
        }
        return am1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Context context, am am1)
    {
        synchronized (lq)
        {
            sy.setBaseContext(context);
            sz = null;
            nD = am1;
            sA = false;
            ep.b(this);
            loadUrl("about:blank");
            sx.reset();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(am am1)
    {
        synchronized (lq)
        {
            nD = am1;
            requestLayout();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(cg cg)
    {
        synchronized (lq)
        {
            sz = cg;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(String s, Map map)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = ep.o(map);
        }
        catch (JSONException jsonexception)
        {
            ev.D("Could not convert parameters to JSON.");
            return;
        }
        b(s, jsonobject);
    }

    public void a(String s, JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            jsonobject = new JSONObject();
        }
        String s1 = jsonobject.toString();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append("javascript:").append(s).append("(").toString());
        stringbuilder.append(s1);
        stringbuilder.append(");");
        E(stringbuilder.toString());
    }

    public void b(String s, JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            jsonobject = new JSONObject();
        }
        String s1 = jsonobject.toString();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("javascript:AFMA_ReceiveMessage('");
        stringbuilder.append(s);
        stringbuilder.append("'");
        stringbuilder.append(",");
        stringbuilder.append(s1);
        stringbuilder.append(");");
        ev.C((new StringBuilder()).append("Dispatching AFMA event: ").append(stringbuilder).toString());
        E(stringbuilder.toString());
    }

    public void bS()
    {
        if (!bW().ce())
        {
            return;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        Display display = lA.getDefaultDisplay();
        display.getMetrics(displaymetrics);
        int i = ep.m(getContext());
        float f = 160F / (float)displaymetrics.densityDpi;
        int j = (int)(f * (float)displaymetrics.widthPixels);
        int k = (int)(f * (float)(displaymetrics.heightPixels - i));
        try
        {
            b("onScreenInfoChanged", (new JSONObject()).put("width", j).put("height", k).put("density", displaymetrics.density).put("rotation", display.getRotation()));
            return;
        }
        catch (JSONException jsonexception)
        {
            ev.b("Error occured while obtaining screen information.", jsonexception);
        }
    }

    public void bT()
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("version", nE.st);
        a("onhide", hashmap);
    }

    public void bU()
    {
        HashMap hashmap = new HashMap(1);
        hashmap.put("version", nE.st);
        a("onshow", hashmap);
    }

    public cg bV()
    {
        cg cg;
        synchronized (lq)
        {
            cg = sz;
        }
        return cg;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ez bW()
    {
        return sx;
    }

    public l bX()
    {
        return py;
    }

    public ew bY()
    {
        return nE;
    }

    public boolean bZ()
    {
        boolean flag;
        synchronized (lq)
        {
            flag = sA;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Context ca()
    {
        return sy.ca();
    }

    public void destroy()
    {
        synchronized (lq)
        {
            super.destroy();
            sC = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isDestroyed()
    {
        boolean flag;
        synchronized (lq)
        {
            flag = sC;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onDownloadStart(String s, String s1, String s2, String s3, long l1)
    {
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(s), s3);
            getContext().startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            ev.z((new StringBuilder()).append("Couldn't find an Activity to view url/mimetype: ").append(s).append(" / ").append(s3).toString());
        }
    }

    protected void onMeasure(int i, int j)
    {
        int k;
label0:
        {
            k = 0x7fffffff;
            synchronized (lq)
            {
                if (!isInEditMode() && !sA)
                {
                    break label0;
                }
                super.onMeasure(i, j);
            }
            return;
        }
        int i1;
        int j1;
        int k1;
        int l1;
        i1 = android.view.View.MeasureSpec.getMode(i);
        j1 = android.view.View.MeasureSpec.getSize(i);
        k1 = android.view.View.MeasureSpec.getMode(j);
        l1 = android.view.View.MeasureSpec.getSize(j);
        break MISSING_BLOCK_LABEL_61;
_L3:
        if (nD.widthPixels <= i2 && nD.heightPixels <= k)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        float f = sy.getResources().getDisplayMetrics().density;
        ev.D((new StringBuilder()).append("Not enough space to show ad. Needs ").append((int)((float)nD.widthPixels / f)).append("x").append((int)((float)nD.heightPixels / f)).append(" dp, but only has ").append((int)((float)j1 / f)).append("x").append((int)((float)l1 / f)).append(" dp.").toString());
        if (getVisibility() != 8)
        {
            setVisibility(4);
        }
        setMeasuredDimension(0, 0);
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (getVisibility() != 8)
        {
            setVisibility(0);
        }
        setMeasuredDimension(nD.widthPixels, nD.heightPixels);
          goto _L1
        int i2;
        if (i1 != 0x80000000 && i1 != 0x40000000)
        {
            i2 = k;
        } else
        {
            i2 = j1;
        }
        if (k1 == 0x80000000 || k1 == 0x40000000)
        {
            k = l1;
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (py != null)
        {
            py.a(motionevent);
        }
        return super.onTouchEvent(motionevent);
    }

    public void q(boolean flag)
    {
        synchronized (lq)
        {
            sA = flag;
            cb();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setContext(Context context)
    {
        sy.setBaseContext(context);
    }
}
