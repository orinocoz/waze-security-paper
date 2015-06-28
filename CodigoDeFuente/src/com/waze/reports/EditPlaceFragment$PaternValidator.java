// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

public static class _emptyOk
    implements _emptyOk
{

    final boolean _emptyOk;
    final Pattern _pattern;

    public boolean isTextValid(String s)
    {
        if (_emptyOk && s.isEmpty())
        {
            return true;
        } else
        {
            return _pattern.matcher(s.trim()).matches();
        }
    }

    public (String s, boolean flag)
    {
        _pattern = Pattern.compile(s, 2);
        _emptyOk = flag;
    }
}
