// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.facebook.internal:
//            Utility

public static class featureVersionSpec
{

    private String dialogName;
    private Uri fallbackUrl;
    private String featureName;
    private int featureVersionSpec[];

    private static featureVersionSpec parseDialogConfig(JSONObject jsonobject)
    {
        String s = jsonobject.optString("name");
        String as[];
        if (!Utility.isNullOrEmpty(s))
        {
            if ((as = s.split("\\|")).length == 2)
            {
                String s1 = as[0];
                String s2 = as[1];
                if (!Utility.isNullOrEmpty(s1) && !Utility.isNullOrEmpty(s2))
                {
                    String s3 = jsonobject.optString("url");
                    boolean flag = Utility.isNullOrEmpty(s3);
                    Uri uri = null;
                    if (!flag)
                    {
                        uri = Uri.parse(s3);
                    }
                    return new <init>(s1, s2, uri, parseVersionSpec(jsonobject.optJSONArray("versions")));
                }
            }
        }
        return null;
    }

    private static int[] parseVersionSpec(JSONArray jsonarray)
    {
        int ai[] = null;
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        i = jsonarray.length();
        ai = new int[i];
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        return ai;
_L3:
        int k;
        String s;
        k = jsonarray.optInt(j, -1);
        if (k != -1)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        s = jsonarray.optString(j);
        if (Utility.isNullOrEmpty(s))
        {
            break MISSING_BLOCK_LABEL_64;
        }
        int l = Integer.parseInt(s);
        k = l;
_L6:
        ai[j] = k;
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        NumberFormatException numberformatexception;
        numberformatexception;
        Utility.logd("FacebookSDK", numberformatexception);
        k = -1;
          goto _L6
    }

    public String getDialogName()
    {
        return dialogName;
    }

    public Uri getFallbackUrl()
    {
        return fallbackUrl;
    }

    public String getFeatureName()
    {
        return featureName;
    }

    public int[] getVersionSpec()
    {
        return featureVersionSpec;
    }


    private (String s, String s1, Uri uri, int ai[])
    {
        dialogName = s;
        featureName = s1;
        fallbackUrl = uri;
        featureVersionSpec = ai;
    }
}
