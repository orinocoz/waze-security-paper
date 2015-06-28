// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.Intent;
import android.os.Bundle;
import java.util.Set;

public final class IntentUtils
{

    public IntentUtils()
    {
    }

    public static String[] getExtrasKeys(Intent intent)
    {
        Set set = intent.getExtras().keySet();
        int i = set.size();
        String as[] = null;
        if (i > 0)
        {
            as = new String[set.size()];
            set.toArray(as);
        }
        return as;
    }
}
