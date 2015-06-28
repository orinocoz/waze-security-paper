// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            bs

public final class bm
{

    public final String ni;
    public final String nj;
    public final List nk;
    public final String nl;
    public final String nm;
    public final List nn;
    public final String no;

    public bm(JSONObject jsonobject)
        throws JSONException
    {
        nj = jsonobject.getString("id");
        JSONArray jsonarray = jsonobject.getJSONArray("adapters");
        ArrayList arraylist = new ArrayList(jsonarray.length());
        for (int i = 0; i < jsonarray.length(); i++)
        {
            arraylist.add(jsonarray.getString(i));
        }

        nk = Collections.unmodifiableList(arraylist);
        nl = jsonobject.optString("allocation_id", null);
        nn = bs.a(jsonobject, "imp_urls");
        JSONObject jsonobject1 = jsonobject.optJSONObject("ad");
        String s;
        JSONObject jsonobject2;
        String s1;
        String s2;
        if (jsonobject1 != null)
        {
            s = jsonobject1.toString();
        } else
        {
            s = null;
        }
        ni = s;
        jsonobject2 = jsonobject.optJSONObject("data");
        if (jsonobject2 != null)
        {
            s1 = jsonobject2.toString();
        } else
        {
            s1 = null;
        }
        no = s1;
        s2 = null;
        if (jsonobject2 != null)
        {
            s2 = jsonobject2.optString("class_name");
        }
        nm = s2;
    }
}
