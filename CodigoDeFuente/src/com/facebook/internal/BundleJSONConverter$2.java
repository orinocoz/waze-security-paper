// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.os.Bundle;
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
        bundle.putInt(s, ((Integer)obj).intValue());
    }

    public void setOnJSON(JSONObject jsonobject, String s, Object obj)
        throws JSONException
    {
        jsonobject.put(s, obj);
    }

    tter()
    {
    }
}
