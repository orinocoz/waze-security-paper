// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh

class bc extends aj
{

    private static final String ID;

    public bc()
    {
        super(ID, new String[0]);
    }

    public boolean lc()
    {
        return false;
    }

    public com.google.android.gms.internal.d.a w(Map map)
    {
        Locale locale = Locale.getDefault();
        if (locale == null)
        {
            return dh.mY();
        }
        String s = locale.getLanguage();
        if (s == null)
        {
            return dh.mY();
        } else
        {
            return dh.r(s.toLowerCase());
        }
    }

    static 
    {
        ID = a.L.toString();
    }
}
