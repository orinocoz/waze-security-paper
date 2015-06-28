// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

// Referenced classes of package com.waze.view.anim:
//            AnimationUtils

static class height
{

    int bottom;
    int height;
    int top;
    int width;

    (Context context)
    {
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        width = displaymetrics.widthPixels / 2;
        top = displaymetrics.heightPixels;
        height = 10 * (int)displaymetrics.density;
        bottom = top + height;
    }
}
