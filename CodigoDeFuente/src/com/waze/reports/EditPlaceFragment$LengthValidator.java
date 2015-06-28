// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;


// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

public static class _emptyOk
    implements _emptyOk
{

    final boolean _emptyOk;
    final int _minLength;

    public boolean isTextValid(String s)
    {
        while (_emptyOk && s.isEmpty() || s.length() >= _minLength) 
        {
            return true;
        }
        return false;
    }

    public (int i, boolean flag)
    {
        _minLength = i;
        _emptyOk = flag;
    }
}
