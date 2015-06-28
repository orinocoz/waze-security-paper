// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a;

import android.util.Log;

public class a
{

    public static String a = "ExtScreenService";
    private static int b = 0;

    public a()
    {
    }

    public static void a(String s)
    {
        a("D", a, s);
        if ((0x100 & b) == 0)
        {
            return;
        } else
        {
            Log.d(a, s);
            return;
        }
    }

    public static void a(String s, String s1, String s2)
    {
    }

    public static void b(String s)
    {
        a("E", a, s);
        if ((0x10000 & b) == 0)
        {
            return;
        } else
        {
            Log.e(a, s);
            return;
        }
    }

}
