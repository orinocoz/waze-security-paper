// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import java.io.Serializable;

// Referenced classes of package com.waze.reports:
//            SimpleChoiceFragment

public static class value
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    public String display;
    public int value;

    public (String s, int i)
    {
        display = s;
        value = i;
    }
}
