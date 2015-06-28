// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ev, bm, bs

public final class bn
{

    public final List np;
    public final long nq;
    public final List nr;
    public final List ns;
    public final List nt;
    public final String nu;
    public final long nv;
    public int nw;
    public int nx;

    public bn(String s)
        throws JSONException
    {
        JSONObject jsonobject = new JSONObject(s);
        if (ev.p(2))
        {
            ev.C((new StringBuilder()).append("Mediation Response JSON: ").append(jsonobject.toString(2)).toString());
        }
        JSONArray jsonarray = jsonobject.getJSONArray("ad_networks");
        ArrayList arraylist = new ArrayList(jsonarray.length());
        int i = -1;
        for (int j = 0; j < jsonarray.length(); j++)
        {
            bm bm1 = new bm(jsonarray.getJSONObject(j));
            arraylist.add(bm1);
            if (i < 0 && a(bm1))
            {
                i = j;
            }
        }

        nw = i;
        nx = jsonarray.length();
        np = Collections.unmodifiableList(arraylist);
        nu = jsonobject.getString("qdata");
        JSONObject jsonobject1 = jsonobject.optJSONObject("settings");
        if (jsonobject1 != null)
        {
            nq = jsonobject1.optLong("ad_network_timeout_millis", -1L);
            nr = bs.a(jsonobject1, "click_urls");
            ns = bs.a(jsonobject1, "imp_urls");
            nt = bs.a(jsonobject1, "nofill_urls");
            long l = jsonobject1.optLong("refresh", -1L);
            long l1;
            if (l > 0L)
            {
                l1 = l * 1000L;
            } else
            {
                l1 = -1L;
            }
            nv = l1;
            return;
        } else
        {
            nq = -1L;
            nr = null;
            ns = null;
            nt = null;
            nv = -1L;
            return;
        }
    }

    private boolean a(bm bm1)
    {
        for (Iterator iterator = bm1.nk.iterator(); iterator.hasNext();)
        {
            if (((String)iterator.next()).equals("com.google.ads.mediation.admob.AdMobAdapter"))
            {
                return true;
            }
        }

        return false;
    }
}
