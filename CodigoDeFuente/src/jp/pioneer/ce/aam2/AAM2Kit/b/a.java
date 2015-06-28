// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b;

import android.util.Log;

public class a
{

    public static String a = "ExtScreenService";
    public static String b = null;
    private static int c = 0;

    public a()
    {
    }

    public static void a(String s)
    {
        a("D", a, s);
        if ((0x100 & c) == 0)
        {
            return;
        } else
        {
            Log.d(a, s);
            return;
        }
    }

    public static void a(String s, Exception exception)
    {
        a("E", a, (new StringBuilder(String.valueOf(s))).append(exception).toString());
        if ((0x10000 & c) == 0)
        {
            return;
        } else
        {
            Log.e(a, s, exception);
            return;
        }
    }

    public static void a(String s, String s1, String s2)
    {
    }

    public static void b(String s)
    {
        a("E", a, s);
        if ((0x10000 & c) == 0)
        {
            return;
        } else
        {
            Log.e(a, s);
            return;
        }
    }

}
