// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.internal:
//            BundleJSONConverter

class tter
    implements tter
{

    public void setOnBundle(Bundle bundle, String s, Object obj)
        throws JSONException
    {
        throw new IllegalArgumentException("Unexpected type from JSON");
    }

    public void setOnJSON(JSONObject jsonobject, String s, Object obj)
        throws JSONException
    {
        JSONArray jsonarray = new JSONArray();
        String as[] = (String[])obj;
        int i = as.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                jsonobject.put(s, jsonarray);
                return;
            }
            jsonarray.put(as[j]);
            j++;
        } while (true);
    }

    tter()
    {
    }
}
