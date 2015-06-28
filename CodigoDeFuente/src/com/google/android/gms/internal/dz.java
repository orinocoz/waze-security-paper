// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ep, ev, dv, dt, 
//            ew, dy, am, ed, 
//            aj, em, ax

public final class dz
{

    private static final SimpleDateFormat qx = new SimpleDateFormat("yyyyMMdd");

    public static dv a(Context context, dt dt1, String s)
    {
        JSONObject jsonobject;
        String s1;
        String s3;
        String s4;
        long l;
        String s5;
        long l1;
        int i;
        dv dv3;
        Object obj;
        int i1;
        String s2;
        String s6;
        dv dv1;
        dv dv2;
        JSONArray jsonarray;
        try
        {
            jsonobject = new JSONObject(s);
            s1 = jsonobject.optString("ad_base_url", null);
            s2 = jsonobject.optString("ad_url", null);
            s3 = jsonobject.optString("ad_size", null);
            s4 = jsonobject.optString("ad_html", null);
        }
        catch (JSONException jsonexception)
        {
            ev.D((new StringBuilder()).append("Could not parse the mediation config: ").append(jsonexception.getMessage()).toString());
            return new dv(0);
        }
        l = -1L;
        s5 = jsonobject.optString("debug_dialog", null);
        if (!jsonobject.has("interstitial_timeout")) goto _L2; else goto _L1
_L1:
        l1 = (long)(1000D * jsonobject.getDouble("interstitial_timeout"));
_L42:
        s6 = jsonobject.optString("orientation", null);
        i = -1;
        if (!"portrait".equals(s6)) goto _L4; else goto _L3
_L3:
        i = ep.bN();
_L7:
        if (TextUtils.isEmpty(s4))
        {
            break; /* Loop/switch isn't completed */
        }
        if (TextUtils.isEmpty(s1))
        {
            ev.D("Could not parse the mediation config: Missing required ad_base_url field");
            return new dv(0);
        }
          goto _L5
_L4:
        if ("landscape".equals(s6))
        {
            i = ep.bM();
        }
        if (true) goto _L7; else goto _L6
_L6:
        if (TextUtils.isEmpty(s2)) goto _L9; else goto _L8
_L8:
        dv2 = dy.a(context, dt1.kO.st, s2, null, null);
        s1 = dv2.oy;
        s4 = dv2.qb;
        l = dv2.qh;
        dv3 = dv2;
_L41:
        jsonarray = jsonobject.optJSONArray("click_urls");
        if (dv3 != null) goto _L11; else goto _L10
_L10:
        obj = null;
_L19:
        if (jsonarray == null) goto _L13; else goto _L12
_L12:
        if (obj != null) goto _L15; else goto _L14
_L14:
        obj = new LinkedList();
          goto _L15
_L18:
        if (i1 >= jsonarray.length()) goto _L17; else goto _L16
_L16:
        ((List) (obj)).add(jsonarray.getString(i1));
        i1++;
          goto _L18
_L9:
        ev.D("Could not parse the mediation config: Missing required ad_html or ad_url field.");
        dv1 = new dv(0);
        return dv1;
_L11:
        obj = dv3.nr;
          goto _L19
_L40:
        JSONArray jsonarray1 = jsonobject.optJSONArray("impression_urls");
        if (dv3 != null) goto _L21; else goto _L20
_L20:
        Object obj2 = null;
_L29:
        if (jsonarray1 == null) goto _L23; else goto _L22
_L22:
        if (obj2 != null) goto _L25; else goto _L24
_L24:
        obj2 = new LinkedList();
          goto _L25
_L28:
        int k;
        if (k >= jsonarray1.length()) goto _L27; else goto _L26
_L26:
        ((List) (obj2)).add(jsonarray1.getString(k));
        k++;
          goto _L28
_L21:
        obj2 = dv3.ns;
          goto _L29
_L39:
        JSONArray jsonarray2 = jsonobject.optJSONArray("manual_impression_urls");
        if (dv3 != null) goto _L31; else goto _L30
_L30:
        Object obj4 = null;
_L37:
        if (jsonarray2 == null) goto _L33; else goto _L32
_L32:
        if (obj4 != null) goto _L35; else goto _L34
_L34:
        obj4 = new LinkedList();
          goto _L35
_L36:
        int j;
        if (j >= jsonarray2.length())
        {
            break MISSING_BLOCK_LABEL_682;
        }
        ((List) (obj4)).add(jsonarray2.getString(j));
        j++;
          goto _L36
_L31:
        obj4 = dv3.qf;
          goto _L37
_L38:
        if (dv3 == null)
        {
            break MISSING_BLOCK_LABEL_536;
        }
        if (dv3.orientation != -1)
        {
            i = dv3.orientation;
        }
        if (dv3.qc > 0L)
        {
            l1 = dv3.qc;
        }
        String s7;
        boolean flag;
        s7 = jsonobject.optString("active_view");
        flag = jsonobject.optBoolean("ad_is_javascript", false);
        String s8;
        s8 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_570;
        }
        s8 = jsonobject.optString("ad_passback_url", null);
        Object obj1;
        Object obj3;
        Object obj5;
        dv dv4 = new dv(s1, s4, ((List) (obj1)), ((List) (obj3)), l1, false, -1L, ((List) (obj5)), -1L, i, s3, l, s5, flag, s8, s7);
        return dv4;
_L33:
        obj5 = obj4;
          goto _L38
_L23:
        obj3 = obj2;
          goto _L39
_L13:
        obj1 = obj;
          goto _L40
_L5:
        dv3 = null;
          goto _L41
_L2:
        l1 = -1L;
          goto _L42
_L15:
        i1 = 0;
          goto _L18
_L17:
        obj1 = obj;
          goto _L40
_L25:
        k = 0;
          goto _L28
_L27:
        obj3 = obj2;
          goto _L39
_L35:
        j = 0;
          goto _L36
        obj5 = obj4;
          goto _L38
    }

    public static String a(dt dt1, ed ed1, Location location, String s)
    {
        HashMap hashmap = new HashMap();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        if (s.trim() != "")
        {
            hashmap.put("eid", s);
        }
        if (dt1.pU != null)
        {
            hashmap.put("ad_pos", dt1.pU);
        }
        a(hashmap, dt1.pV);
        hashmap.put("format", dt1.kR.mc);
        if (dt1.kR.width == -1)
        {
            hashmap.put("smart_w", "full");
        }
        if (dt1.kR.height == -2)
        {
            hashmap.put("smart_h", "auto");
        }
        if (dt1.kR.me == null) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        am aam[];
        int i;
        stringbuilder = new StringBuilder();
        aam = dt1.kR.me;
        i = aam.length;
        int j = 0;
_L8:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_282;
        }
        am am1;
        am1 = aam[j];
        if (stringbuilder.length() != 0)
        {
            stringbuilder.append("|");
        }
        if (am1.width != -1) goto _L4; else goto _L3
_L3:
        int k = (int)((float)am1.widthPixels / ed1.ro);
_L5:
        int l;
        stringbuilder.append(k);
        stringbuilder.append("x");
        if (am1.height != -2)
        {
            break MISSING_BLOCK_LABEL_272;
        }
        l = (int)((float)am1.heightPixels / ed1.ro);
_L6:
        stringbuilder.append(l);
        j++;
        continue; /* Loop/switch isn't completed */
_L4:
        k = am1.width;
          goto _L5
        l = am1.height;
          goto _L6
        hashmap.put("sz", stringbuilder);
_L2:
        String s1;
        hashmap.put("slotname", dt1.kL);
        hashmap.put("pn", dt1.applicationInfo.packageName);
        if (dt1.pW != null)
        {
            hashmap.put("vc", Integer.valueOf(dt1.pW.versionCode));
        }
        hashmap.put("ms", dt1.pX);
        hashmap.put("seq_num", dt1.pY);
        hashmap.put("session_id", dt1.pZ);
        hashmap.put("js", dt1.kO.st);
        a(hashmap, ed1);
        if (dt1.pV.versionCode >= 2 && dt1.pV.lY != null)
        {
            a(hashmap, dt1.pV.lY);
        }
        if (dt1.versionCode >= 2)
        {
            hashmap.put("quality_signals", dt1.qa);
        }
        if (ev.p(2))
        {
            String s2 = ep.o(hashmap).toString(2);
            ev.C((new StringBuilder()).append("Ad Request JSON: ").append(s2).toString());
        }
        s1 = ep.o(hashmap).toString();
        return s1;
        JSONException jsonexception;
        jsonexception;
        ev.D((new StringBuilder()).append("Problem serializing ad request to JSON: ").append(jsonexception.getMessage()).toString());
        return null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static void a(HashMap hashmap, Location location)
    {
        HashMap hashmap1 = new HashMap();
        Float float1 = Float.valueOf(1000F * location.getAccuracy());
        Long long1 = Long.valueOf(1000L * location.getTime());
        Long long2 = Long.valueOf((long)(10000000D * location.getLatitude()));
        Long long3 = Long.valueOf((long)(10000000D * location.getLongitude()));
        hashmap1.put("radius", float1);
        hashmap1.put("lat", long2);
        hashmap1.put("long", long3);
        hashmap1.put("time", long1);
        hashmap.put("uule", hashmap1);
    }

    private static void a(HashMap hashmap, aj aj1)
    {
        String s = em.bK();
        if (s != null)
        {
            hashmap.put("abf", s);
        }
        if (aj1.lQ != -1L)
        {
            hashmap.put("cust_age", qx.format(new Date(aj1.lQ)));
        }
        if (aj1.extras != null)
        {
            hashmap.put("extras", aj1.extras);
        }
        if (aj1.lR != -1)
        {
            hashmap.put("cust_gender", Integer.valueOf(aj1.lR));
        }
        if (aj1.lS != null)
        {
            hashmap.put("kw", aj1.lS);
        }
        if (aj1.lU != -1)
        {
            hashmap.put("tag_for_child_directed_treatment", Integer.valueOf(aj1.lU));
        }
        if (aj1.lT)
        {
            hashmap.put("adtest", "on");
        }
        if (aj1.versionCode >= 2)
        {
            if (aj1.lV)
            {
                hashmap.put("d_imp_hdr", Integer.valueOf(1));
            }
            if (!TextUtils.isEmpty(aj1.lW))
            {
                hashmap.put("ppid", aj1.lW);
            }
            if (aj1.lX != null)
            {
                a(hashmap, aj1.lX);
            }
        }
        if (aj1.versionCode >= 3 && aj1.lZ != null)
        {
            hashmap.put("url", aj1.lZ);
        }
    }

    private static void a(HashMap hashmap, ax ax1)
    {
        if (Color.alpha(ax1.mB) != 0)
        {
            hashmap.put("acolor", o(ax1.mB));
        }
        if (Color.alpha(ax1.backgroundColor) != 0)
        {
            hashmap.put("bgcolor", o(ax1.backgroundColor));
        }
        if (Color.alpha(ax1.mC) != 0 && Color.alpha(ax1.mD) != 0)
        {
            hashmap.put("gradientto", o(ax1.mC));
            hashmap.put("gradientfrom", o(ax1.mD));
        }
        if (Color.alpha(ax1.mE) != 0)
        {
            hashmap.put("bcolor", o(ax1.mE));
        }
        hashmap.put("bthick", Integer.toString(ax1.mF));
        ax1.mG;
        JVM INSTR tableswitch 0 3: default 176
    //                   0 366
    //                   1 373
    //                   2 380
    //                   3 387;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s = null;
_L10:
        int i;
        String s1;
        if (s != null)
        {
            hashmap.put("btype", s);
        }
        i = ax1.mH;
        s1 = null;
        i;
        JVM INSTR tableswitch 0 2: default 228
    //                   0 402
    //                   1 410
    //                   2 394;
           goto _L6 _L7 _L8 _L9
_L6:
        break; /* Loop/switch isn't completed */
_L8:
        break MISSING_BLOCK_LABEL_410;
_L11:
        if (s1 != null)
        {
            hashmap.put("callbuttoncolor", s1);
        }
        if (ax1.mI != null)
        {
            hashmap.put("channel", ax1.mI);
        }
        if (Color.alpha(ax1.mJ) != 0)
        {
            hashmap.put("dcolor", o(ax1.mJ));
        }
        if (ax1.mK != null)
        {
            hashmap.put("font", ax1.mK);
        }
        if (Color.alpha(ax1.mL) != 0)
        {
            hashmap.put("hcolor", o(ax1.mL));
        }
        hashmap.put("headersize", Integer.toString(ax1.mM));
        if (ax1.mN != null)
        {
            hashmap.put("q", ax1.mN);
        }
        return;
_L2:
        s = "none";
          goto _L10
_L3:
        s = "dashed";
          goto _L10
_L4:
        s = "dotted";
          goto _L10
_L5:
        s = "solid";
          goto _L10
_L9:
        s1 = "dark";
          goto _L11
_L7:
        s1 = "light";
          goto _L11
        s1 = "medium";
          goto _L11
    }

    private static void a(HashMap hashmap, ed ed1)
    {
        hashmap.put("am", Integer.valueOf(ed1.qY));
        hashmap.put("cog", m(ed1.qZ));
        hashmap.put("coh", m(ed1.ra));
        if (!TextUtils.isEmpty(ed1.rb))
        {
            hashmap.put("carrier", ed1.rb);
        }
        hashmap.put("gl", ed1.rc);
        if (ed1.rd)
        {
            hashmap.put("simulator", Integer.valueOf(1));
        }
        hashmap.put("ma", m(ed1.re));
        hashmap.put("sp", m(ed1.rf));
        hashmap.put("hl", ed1.rg);
        if (!TextUtils.isEmpty(ed1.rh))
        {
            hashmap.put("mv", ed1.rh);
        }
        hashmap.put("muv", Integer.valueOf(ed1.ri));
        if (ed1.rj != -2)
        {
            hashmap.put("cnt", Integer.valueOf(ed1.rj));
        }
        hashmap.put("gnt", Integer.valueOf(ed1.rk));
        hashmap.put("pt", Integer.valueOf(ed1.rl));
        hashmap.put("rm", Integer.valueOf(ed1.rm));
        hashmap.put("riv", Integer.valueOf(ed1.rn));
        hashmap.put("u_sd", Float.valueOf(ed1.ro));
        hashmap.put("sh", Integer.valueOf(ed1.rq));
        hashmap.put("sw", Integer.valueOf(ed1.rp));
        Bundle bundle = new Bundle();
        bundle.putInt("active_network_state", ed1.ru);
        bundle.putBoolean("active_network_metered", ed1.rt);
        hashmap.put("connectivity", bundle);
        Bundle bundle1 = new Bundle();
        bundle1.putBoolean("is_charging", ed1.rs);
        bundle1.putDouble("battery_level", ed1.rr);
        hashmap.put("battery", bundle1);
    }

    private static Integer m(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        return Integer.valueOf(i);
    }

    private static String o(int i)
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(0xffffff & i);
        return String.format(locale, "#%06x", aobj);
    }

}
