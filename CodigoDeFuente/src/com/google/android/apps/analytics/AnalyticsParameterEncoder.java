// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.apps.analytics;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class AnalyticsParameterEncoder
{

    private AnalyticsParameterEncoder()
    {
    }

    public static String encode(String s)
    {
        return encode(s, "UTF-8");
    }

    static String encode(String s, String s1)
    {
        String s2;
        try
        {
            s2 = URLEncoder.encode(s, s1).replace("+", "%20");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError((new StringBuilder()).append("URL encoding failed for: ").append(s).toString());
        }
        return s2;
    }
}
