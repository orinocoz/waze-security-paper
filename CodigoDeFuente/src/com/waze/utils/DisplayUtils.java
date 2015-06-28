// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.waze.AppService;

public final class DisplayUtils
{

    public DisplayUtils()
    {
    }

    public static int dpiToPixels(float f)
    {
        return Math.round(0.5F + f * scale());
    }

    public static float pixelsToDpi(int i)
    {
        return (float)i / scale();
    }

    public static float scale()
    {
        return AppService.getAppContext().getResources().getDisplayMetrics().density;
    }
}
