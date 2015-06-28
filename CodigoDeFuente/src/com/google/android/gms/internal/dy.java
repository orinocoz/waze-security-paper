// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ev, bj, ed, dv, 
//            ea, dt, aj, dz, 
//            az, eu, ec, ee, 
//            ew, eb, ep, am, 
//            ey, ez, bc

public final class dy extends dx.a
{

    private static final Object qm = new Object();
    private static dy qn;
    private final Context mContext;
    private final ee qo;
    private final bj qp;
    private final az qq;

    dy(Context context, az az1, bj bj1, ee ee1)
    {
        mContext = context;
        qo = ee1;
        qp = bj1;
        qq = az1;
    }

    private static dv a(Context context, az az1, bj bj1, ee ee1, dt dt1)
    {
        ev.z("Starting ad request from service.");
        bj1.init();
        ed ed1 = new ed(context);
        if (ed1.rj == -1)
        {
            ev.z("Device is offline.");
            return new dv(2);
        }
        ea ea1 = new ea(dt1.applicationInfo.packageName);
        if (dt1.pV.extras != null)
        {
            String s4 = dt1.pV.extras.getString("_ad");
            if (s4 != null)
            {
                return dz.a(context, dt1, s4);
            }
        }
        android.location.Location location = bj1.a(250L);
        String s1 = az1.aI();
        String s2 = dz.a(dt1, ed1, location, az1.aJ());
        if (s2 == null)
        {
            return new dv(0);
        }
        ez.a a1 = s(s2);
        eu.ss.post(new Runnable(context, dt1, ea1, a1, s1) {

            final Context qr;
            final dt qs;
            final ea qt;
            final ez.a qu;
            final String qv;

            public void run()
            {
                ey ey1 = ey.a(qr, new am(), false, false, null, qs.kO);
                ey1.setWillNotDraw(true);
                qt.b(ey1);
                ez ez1 = ey1.bW();
                ez1.a("/invalidRequest", qt.qA);
                ez1.a("/loadAdURL", qt.qB);
                ez1.a("/log", bc.mX);
                ez1.a(qu);
                ev.z("Loading the JS library.");
                ey1.loadUrl(qv);
            }

            
            {
                qr = context;
                qs = dt1;
                qt = ea1;
                qu = a1;
                qv = s1;
                super();
            }
        });
        ec ec1 = ea1.bs();
        if (ec1 == null || TextUtils.isEmpty(ec1.getUrl()))
        {
            return new dv(ea1.getErrorCode());
        }
        boolean flag = ec1.bv();
        String s3 = null;
        if (flag)
        {
            s3 = ee1.u(dt1.pW.packageName);
        }
        return a(context, dt1.kO.st, ec1.getUrl(), s3, ec1);
    }

    public static dv a(Context context, String s1, String s2, String s3, ec ec1)
    {
        HttpURLConnection httpurlconnection;
        eb eb1;
        URL url;
        long l;
        URL url1;
        int i;
        int j;
        Map map;
        dv dv1;
        String s4;
        dv dv2;
        dv dv3;
        String s5;
        String s6;
        dv dv4;
        byte abyte0[];
        BufferedOutputStream bufferedoutputstream;
        try
        {
            eb1 = new eb();
            url = new URL(s2);
            l = SystemClock.elapsedRealtime();
        }
        catch (IOException ioexception)
        {
            ev.D((new StringBuilder()).append("Error while connecting to ad server: ").append(ioexception.getMessage()).toString());
            return new dv(2);
        }
        url1 = url;
        i = 0;
        httpurlconnection = (HttpURLConnection)url1.openConnection();
        ep.a(context, s1, false, httpurlconnection);
        if (!TextUtils.isEmpty(s3))
        {
            httpurlconnection.addRequestProperty("x-afma-drt-cookie", s3);
        }
        if (ec1 == null)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        if (!TextUtils.isEmpty(ec1.bu()))
        {
            httpurlconnection.setDoOutput(true);
            abyte0 = ec1.bu().getBytes();
            httpurlconnection.setFixedLengthStreamingMode(abyte0.length);
            bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
            bufferedoutputstream.write(abyte0);
            bufferedoutputstream.close();
        }
        j = httpurlconnection.getResponseCode();
        map = httpurlconnection.getHeaderFields();
        if (j < 200 || j >= 300)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        s5 = url1.toString();
        s6 = ep.a(new InputStreamReader(httpurlconnection.getInputStream()));
        a(s5, map, s6, j);
        eb1.a(s5, map, s6);
        dv4 = eb1.i(l);
        httpurlconnection.disconnect();
        return dv4;
        a(url1.toString(), map, ((String) (null)), j);
        if (j < 300 || j >= 400)
        {
            break MISSING_BLOCK_LABEL_338;
        }
        s4 = httpurlconnection.getHeaderField("Location");
        if (!TextUtils.isEmpty(s4))
        {
            break MISSING_BLOCK_LABEL_294;
        }
        ev.D("No location header to follow redirect.");
        dv3 = new dv(0);
        httpurlconnection.disconnect();
        return dv3;
        url1 = new URL(s4);
        if (++i <= 5)
        {
            break MISSING_BLOCK_LABEL_380;
        }
        ev.D("Too many redirects.");
        dv2 = new dv(0);
        httpurlconnection.disconnect();
        return dv2;
        ev.D((new StringBuilder()).append("Received error HTTP response code: ").append(j).toString());
        dv1 = new dv(0);
        httpurlconnection.disconnect();
        return dv1;
        eb1.d(map);
        httpurlconnection.disconnect();
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public static dy a(Context context, az az1, bj bj1, ee ee1)
    {
        dy dy1;
        synchronized (qm)
        {
            if (qn == null)
            {
                qn = new dy(context.getApplicationContext(), az1, bj1, ee1);
            }
            dy1 = qn;
        }
        return dy1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void a(String s1, Map map, String s2, int i)
    {
        if (ev.p(2))
        {
            ev.C((new StringBuilder()).append("Http Response: {\n  URL:\n    ").append(s1).append("\n  Headers:").toString());
            if (map != null)
            {
                for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
                {
                    String s3 = (String)iterator.next();
                    ev.C((new StringBuilder()).append("    ").append(s3).append(":").toString());
                    Iterator iterator1 = ((List)map.get(s3)).iterator();
                    while (iterator1.hasNext()) 
                    {
                        String s4 = (String)iterator1.next();
                        ev.C((new StringBuilder()).append("      ").append(s4).toString());
                    }
                }

            }
            ev.C("  Body:");
            if (s2 != null)
            {
                for (int j = 0; j < Math.min(s2.length(), 0x186a0); j += 1000)
                {
                    ev.C(s2.substring(j, Math.min(s2.length(), j + 1000)));
                }

            } else
            {
                ev.C("    null");
            }
            ev.C((new StringBuilder()).append("  Response Code:\n    ").append(i).append("\n}").toString());
        }
    }

    private static ez.a s(String s1)
    {
        return new ez.a(s1) {

            final String qw;

            public void a(ey ey1)
            {
                Object aobj[] = new Object[2];
                aobj[0] = "AFMA_buildAdURL";
                aobj[1] = qw;
                String s2 = String.format("javascript:%s(%s);", aobj);
                ev.C((new StringBuilder()).append("About to execute: ").append(s2).toString());
                ey1.loadUrl(s2);
            }

            
            {
                qw = s1;
                super();
            }
        };
    }

    public dv b(dt dt1)
    {
        return a(mContext, qq, qp, qo, dt1);
    }

}
