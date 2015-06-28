// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;

public class go
{

    private static boolean Ci = false;
    private boolean Cj;
    private boolean Ck;
    private String Cl;
    private final String mTag;

    public go(String s)
    {
        this(s, en());
    }

    public go(String s, boolean flag)
    {
        mTag = s;
        Cj = flag;
        Ck = false;
    }

    private transient String e(String s, Object aobj[])
    {
        String s1 = String.format(s, aobj);
        if (!TextUtils.isEmpty(Cl))
        {
            s1 = (new StringBuilder()).append(Cl).append(s1).toString();
        }
        return s1;
    }

    public static boolean en()
    {
        return Ci;
    }

    public transient void a(String s, Object aobj[])
    {
        if (em())
        {
            Log.v(mTag, e(s, aobj));
        }
    }

    public transient void a(Throwable throwable, String s, Object aobj[])
    {
        if (el() || Ci)
        {
            Log.d(mTag, e(s, aobj), throwable);
        }
    }

    public void ap(String s)
    {
        String s1;
        if (TextUtils.isEmpty(s))
        {
            s1 = null;
        } else
        {
            s1 = String.format("[%s] ", new Object[] {
                s
            });
        }
        Cl = s1;
    }

    public transient void b(String s, Object aobj[])
    {
        if (el() || Ci)
        {
            Log.d(mTag, e(s, aobj));
        }
    }

    public transient void c(String s, Object aobj[])
    {
        Log.i(mTag, e(s, aobj));
    }

    public transient void d(String s, Object aobj[])
    {
        Log.w(mTag, e(s, aobj));
    }

    public boolean el()
    {
        return Cj;
    }

    public boolean em()
    {
        return Ck;
    }

}
