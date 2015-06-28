// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
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
        JSONArray jsonarray = (JSONArray)obj;
        ArrayList arraylist = new ArrayList();
        if (jsonarray.length() == 0)
        {
            bundle.putStringArrayList(s, arraylist);
            return;
        }
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                bundle.putStringArrayList(s, arraylist);
                return;
            }
            Object obj1 = jsonarray.get(i);
            if (obj1 instanceof String)
            {
                arraylist.add((String)obj1);
                i++;
            } else
            {
                throw new IllegalArgumentException((new StringBuilder("Unexpected type in an array: ")).append(obj1.getClass()).toString());
            }
        } while (true);
    }

    public void setOnJSON(JSONObject jsonobject, String s, Object obj)
        throws JSONException
    {
        throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
    }

    tter()
    {
    }
}
